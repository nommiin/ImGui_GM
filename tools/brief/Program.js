const fs = require("node:fs");
const path = require("node:path");
const FileEditor = require("./FileEditor");
const Scanner = require("./Scanner");
const Processor = require("./Processor");
const TokenReader = require("./TokenReader");
const Logger = require("./Logger");
const Configuration = require("./Configuration");
const Wrapper = require("./Wrapper");
const Token = require("./Token");
const Util = require("./Util")

/**
 * Reads specific C++ files and automatically creates wrapped functions for GameMaker
 *
 * Written by Nommiin - https://github.com/Nommiin
 *
 */
class Program {
    static _data = {
        enums: [], // Enum names found through out the tool processing. For duplication check.
    };

    /**
     * Entry point for tool, see Configuration.js for options
     * @param {string} wrapper Path to wrapper .cpp file
     * @param {string} extension Path to extension .yy file
     * @param {string} script Path to ImGui .gml script
     */
    static main(root, extension, script) {
        const root_imgui = root + "imgui/";
        const root_gm = root + "gm/";

        Logger.info("Reading ImGui header...", {type: "ImGui"});

        const header = this.parseHeader(new FileEditor(root_imgui + "imgui.h"));
        const header_internal = this.parseHeader(new FileEditor(root_imgui + "imgui_internal.h"));
        header.internal_functions = header_internal.functions;
        header.internal_enums = header_internal.enums;

        Logger.info("  Retrieving ImGui files...", {type: "ImGui"});

        const files = [root + "imgui_gm.cpp", ...fs.readdirSync(root_gm).filter(e => e.endsWith("_gm.cpp")).map(e => root_gm + e)];
        if (files.length === 0) throw `Could not run program, could not find any wrapper files in "${root_gm}"`;
        Logger.debug(`  Found ${files.length} wrapper files in "${root_gm}"`, {type: "ImGui"});

        const wrappers = [];
        Logger.info("Parsing ImGui wrappers...", {type: "ImGui"});
        files.forEach(e => {
            if (e.startsWith("imgui_impl_gm")) return;
            this.parseWrapper(wrappers, new FileEditor(e, true));
        });

        Logger.info("Writing wrappers...", {type: "ImGui"});
        this.writeWrappers(wrappers, new FileEditor(extension));

        const valid_wrappers = wrappers.filter(w => (!(w.Calls === "_" && w.Context === "ImGui")));
        let imgui_wrappers = valid_wrappers.filter(w => (w.Context === "ImGui"));

        Logger.debug("Updating ImGui.gml script...", {type: "ImGui"});
        this.writeScripts(imgui_wrappers, header.enums, new FileEditor(script));

        Logger.debug(`Successfully wrote all ${wrappers.length} wrappers`);

        if (Configuration.WRITE_REPORT) {
            Logger.info("Writing coverage report...", {type: "ImGui"});
            let coveragePercentage = this.writeReport(header, imgui_wrappers, new FileEditor("COVERAGE.md"));

            if (Configuration.WRITE_BADGES) {
                this.writeCoverageBadge(new FileEditor("extra/badges/coverage.json"), coveragePercentage, "ImGui", "green");
            }
        }

        if (Configuration.WRITE_SNAKE) {
            Logger.debug("Writing snake-case scripts...");
            this.writeSnakeCase(imgui_wrappers, header.enums, new FileEditor("snake_case.gml"));
            Logger.info(`Successfully wrote ${imgui_wrappers.length} wrappers in snake_case.gml`);
        }

        if (Configuration.WRITE_DOCS) {
            Logger.debug("Writing documentation export...");
            this.writeDocumentation(header, wrappers, new FileEditor("docs/assets/export.js"));
            Logger.info(`Successfully wrote documentation export file`);
        }
    }

    /**
     * Reads #define directives.
     * This does not work for conditional compilation! Call to get a list of those from a file containing only the directive(s).
     * @param {FileEditor} file A file editor containing the header file
     * @param {Boolean} [only_values=true] Return directives with a value only
     */
    static readHeaderDefineDirectives(file, only_values=true) {
        const defines = {};
        const tokens = new Processor(new Scanner(file.Content).Tokens).get();
        if (tokens.length === 0) throw `Could not read "${file.Name}", processed token list is empty`;

        const reader = new TokenReader(tokens);
        while (!reader.end()) {
            const token = reader.advance();
            if (token && (token.Type === "PreprocessorDirective")) {
                switch (token.Literal) {
                    case "#define": {
                        if (token.Column !== 0) continue;
                        const next = reader.advance();
                        if (next.Type !== "Identifier") continue;
                        const name = next.Literal;
                        const more = reader.advance();
                        let value = true;
                        if (more.Type === "String" || more.Type === "Number") {
                            value = more.Literal;
                        } else if (more.Type === "BracketPair") {
                            value = [];
                            if (more.Children) {
                                for(let i = 0; i < more.Children.length; i++) {
                                    if (more.Children[i].Type !== "Comma") {
                                        value.push(more.Children[i].Literal);
                                    }
                                }
                            }
                        } else {
                            if (only_values) continue;
                        }
                        defines[name] = value;
                    }
                }
            }
        }
        Logger.debug(`Successfully read "${file.Name}" and retrieved ${Object.keys(defines).length} define directives`);
        return defines;
    }

    /**
     * Naively parses header to retrieve API functions, also collects enums
     * @param {FileEditor} file A file editor containing the ImGui header file
     * @param {String} [namespace="ImGui"] The name of the extension in PascalCase (like context but without IMEXT_PREFIX)
     */
    static parseHeader(file, namespace="ImGui") {
        let NS;
        if (namespace == "ImGui") {
            NS = namespace.toUpperCase();
        } else {
            NS = namespace.slice(0,1) + namespace.slice(1).replaceAll(/[A-Z]/g, '_\$&').toUpperCase();
        }
        const header = {functions: [], enums: {}};
        const tokens = new Processor(new Scanner(file.Content).Tokens).get();
        if (tokens.length === 0) throw `Could not parse "${file.Name}", processed token list is empty`;

        const reader = new TokenReader(tokens);
        while (!reader.end()) {
            const token = reader.advance();
            if (token && (token.Type === "Keyword")) {
                switch (token.Literal) {
                    case "namespace": {
                        const prev = reader.previous();
                        if (prev && prev.Literal === "IMGUI_DISABLE_OBSOLETE_FUNCTIONS") continue;
                        const next = reader.advance();
                        if (next.Type !== "Identifier" || (next.Literal !== namespace && namespace == "ImGui")) continue;
                        const more = reader.advance();
                        if (more.Type !== "BracePair") continue;

                        const children = TokenReader.flat(more.Children);
                        while (!children.end()) {
                            const token = children.advance();
                            if (token && (token.Type === "Identifier")) {
                                if (!([
                                    `${NS}_API`,
                                    `IMGUI_${NS}_API`,
                                    "IMGUI_API",
                                ].includes(token.Literal))) {
                                    continue;
                                }
                                const type = children.advance();
                                switch (type.Type) {
                                    case "Keyword":
                                    case "Identifier":
                                    case "Dereference":
                                    case "TypePointer": break;
                                    default: {
                                        Logger.warning(`Could not handle type "${type.Type}" for ${token.Literal} definition at line ${token.Line}`);
                                        continue;
                                    }
                                }

                                const func = children.advance();
                                header.functions.push({
                                    Name: func.Literal,
                                    Type: type.Literal,
                                    Line: token.Line
                                });
                            }
                        }
                        break;
                    }

                    case "enum": {
                        const next = reader.advance();
                        if (next.Type !== "Identifier") continue;
                        let name = next.Literal;
                        switch (name) {
                            case "ImGuiKey":
                            case "ImDrawCornerFlags_":
                            case "ImGuiModFlags_": continue;
                            // ImGuiKey is manually defined in ImGui_Misc, the others are obsolete/cause issues anyway
                            // TODO: I guess?
                        }

                        const def = {};
                        let inner;
                        for(let i = reader.Index; i < reader.Length; i++) {
                            const find = reader.Tokens[i];
                            if (find.Type !== Token.name("{}")) continue;
                            if (!find.Children) throw `Could not parse "${file.Name}", expected tokens in ${Token.name("{}")} token for ${token.Literal} at line ${token.Line}`;
                            inner = find;
                            reader.Index = i;
                            break;
                        }
                        if (!inner) throw `Could not parse "${file.Name}", expected ${Token.name("{}")} token for enum "${name}" at line ${token.Line}`;

                        // Always attempt to prevent enum clashing (e.g. with other extensions)?
                        let oldName = undefined;
                        if (!name.toLowerCase().startsWith("im")) {
                            if (!name.toLowerCase().startsWith(namespace)) {
                                oldName = name;
                                name = `${Configuration.IMEXT_PREFIX}${namespace}${name}`;
                            }
                        }

                        const children = new TokenReader(inner.Children);
                        while (!children.end()) {
                            const token = children.advance();
                            const prev = children.previous();

                            let prev_name;

                            switch (token.Type) {
                                case Token.name("="): {
                                    if (prev.Type !== "Identifier") throw `Could not parse "${file.Name}", expected Identifier token for enum "${name}" at line ${next.Line}`;

                                    // TODO: .filter should probably take a function instead of copied lambda
                                    let found = false;
                                    for(let i = children.Index; i < children.Length; i++) {
                                        const find = children.Tokens[i];
                                        if (find.Type !== Token.name(",")) continue;
                                        const inner = children.Tokens.slice(children.Index, i).filter(e => {
                                            switch (e.Type) {
                                                case Token.name("#"): return false;
                                            }
                                            return true;
                                        });

                                        found = true;
                                        prev_name = oldName == undefined ? prev.Literal : prev.Literal.replace(oldName, name);
                                        def[prev_name] = inner.map(e => e.Literal).join(" ");
                                        children.Index = i + 1;
                                        break;
                                    }

                                    if (!found) {
                                        const inner = children.Tokens.slice(children.Index, children.Length).filter(e => {
                                            switch (e.Type) {
                                                case Token.name("#"): return false;
                                            }
                                            return true;
                                        });

                                        prev_name = oldName == undefined ? prev.Literal : prev.Literal.replace(oldName, name);
                                        def[prev_name] = inner.map(e => e.Literal).join(" ");
                                        children.Index = children.Length;
                                        Logger.warning(`Reached end of enum member "${prev_name}" without trailing comma`, {type: "H002"});
                                    }
                                    break;
                                }

                                case Token.name(","): {
                                    prev_name = oldName == undefined ? prev.Literal : prev.Literal.replace(oldName, name);
                                    def[prev_name] = 0;
                                    break;
                                }
                            }
                        }

                        header.enums[name] = def;
                        break;
                    }

                    default: {
                        // const next = reader.advance();
                        // Logger.debug(`Unknown: ${token.Type}, ${next.Literal}`);
                        break;
                    }
                }
            }
        }

        Logger.debug(`Successfully parsed "${file.Name}" and retrieved ${header.functions.length} API functions and ${Object.keys(header.enums).length} enums`);
        return header;
    }

    /**
     * Reads cpp script and parses out wrapped functions
     * @param {Array<Wrapper>} wrappers
     * @param {FileEditor} file A file editor containing the wrapper file
     * @param {String} [context="ImGui"] The context, or namespace...
     */
    static parseWrapper(wrappers, file, context="ImGui") {
        const tokens = new Processor(new Scanner(file.Content).Tokens).get();
        if (tokens.length === 0) throw `Could not parse "${file.Name}", processed token list is empty`;
        let count = 0;

        const reader = new TokenReader(tokens), keyword = Configuration.WRAPPER_DEF;
        while (!reader.end()) {
            const token = reader.advance();
            if (token && (token.Type === "FunctionDef" && token.Literal === keyword)) {
                const name = token.Children[0];
                if (!name || name.Type !== "Identifier") throw `Could not parse "${file.Name}", expected Identifier token for ${token.Literal} at line ${token.Line}`;

                const next = reader.advance();
                if (!next || next.Type !== Token.name("{}")) throw `Could not parse "${file.Name}", expected ${Token.name("{}")} token for ${token.Literal} at line ${token.Line}`;
                if (!next.Children || next.Children.length === 0) throw `Could not parse "${file.Name}", expected content inside ${Token.name("{}")} for ${token.Literal} at line ${token.Line}`;

                const wrapper = new Wrapper(name.Literal, file.Name, token.Line);
                wrapper.FileRelpath = path.dirname(file.File) + path.sep + path.basename(file.File);
                wrapper.Context = context;

                const children = new TokenReader(next.Children);
                let valid = true;
                while (!children.end()) {
                    const token = children.advance();
                    const left = children.previous();
                    switch (token.Type) {
                        case Token.name("="): {
                            const offset = children.peek()?.Type === "Cast" ? 1 : 0;
                            const right = children.peek(offset);
                            switch (left.Type) {
                                case "Identifier": {
                                    if (left.Literal === "kind" && children.match("Result.kind", -4)) {
                                        wrapper.returns(right.Literal);
                                        children.advance();
                                        continue;
                                    }

                                    switch (right.Type) {
                                        case "FunctionCall": {
                                            if (right.Literal.startsWith("YYGet")) {
                                                const inner = right.Children.filter(e => e.Type !== Token.name(","));
                                                if (inner.length < 2) throw `Could not parse "${file.Name}", expected at least 2 arguments for call to ${right.Literal} at line ${right.Line}`;

                                                const ident = inner[0];
                                                if (ident.Type !== "Identifier" || ident.Literal !== "arg") throw `Could not parse "${file.Name}", expected "arg" variable but got ${ident.Literal} as first argument for call to ${right.Literal} at line ${right.Line}`;

                                                const ind = inner[1];
                                                if (ind.Type !== "Number") throw `Could not parse "${file.Name}", expected Number but got ${ind.Type} as second argument for call to ${right.Literal} at line ${right.Line}`;

                                                wrapper.argument(left.Literal, ind.Literal, right.Literal);
                                                children.advance();
                                            }
                                            break;
                                        }

                                        case "AddressOf":
                                        case "Identifier": {
                                            if (right.Literal === "arg") {
                                                const more = children.peek(offset + 1);
                                                if (more.Type === Token.name("[]")) {
                                                    const inner = more.Children[0];
                                                    if (inner.Type !== "Number") throw `Could not parse "${file.Name}", expected Number but got ${inner.Type} as index for argument array at line ${right.Line}`;

                                                    if (left.Literal === "Result") wrapper.return_arg(inner.Literal);
                                                    else wrapper.argument(left.Literal, inner.Literal);
                                                    children.advance();
                                                }
                                            }
                                            break;
                                        }
                                    }
                                    break;
                                }
                            }
                            break;
                        }

                        case Token.name("::"): {
                            if (left.Type === "Identifier" && left.Literal === "ImGui") {
                                const right = children.peek();
                                if (right.Type !== "FunctionCall") throw `Could not parse "${file.Name}", expected FunctionCall but got ${right.Type} after scope resolution token at line ${token.Line}`;

                                wrapper.calls(right.Literal);
                                children.advance();
                            }
                            break;
                        }

                        case "FunctionCall": {
                            if (token.Literal.startsWith("GM")) wrapper.modifier(token)
                            break;
                        }
                    }
                }

                if (valid) {
                    wrappers.push(wrapper.finalize());
                    count++;
                }
            }
        }
        Logger.debug(`Successfully parsed "${file.Name}" and retrieved ${count} wrapper definitions for ${context}`);
        return wrappers;
    }

    /**
     *
     * @param {Array<Wrapper>} wrappers
     * @param {FileEditor} file A file editor containing the extension file
     */
    static writeWrappers(wrappers, file) {
        const extension = JSON.parse(Util.clean_yy(file.Content));
        if (extension.resourceType !== "GMExtension") throw `Could not parse "${file.Name}", expected GMExtension .yy file`;

        const res_index = extension.files.findIndex(e => e.filename === "imgui_gm.dll");//, resource = extension.files.find(e => e.filename === "imgui_gm.dll");
        if (res_index === -1) throw `Could not parse "${file.Name}", expected entry "imgui_gm.dll" in extension files`;

        const resource = extension.files[res_index];
        const functions = resource.functions.filter(e => !wrappers.find(w => w.Name === e?.name));
        wrappers.forEach(e => {
            functions.push(e.to_extension());
        });
        extension.files[res_index].functions = functions;

        if (file.update(JSON.stringify(extension, undefined, 4))) file.commit();
    }

    /**
     *
     * @param {Array<Wrapper>} wrappers
     * @param {object} enums
     * @param {FileEditor} file A file editor containing the GML script file
     * @param {String} [namespace="ImGui"] The name of the context (ImGui) In PascalCase
     */
    static writeScripts(wrappers, enums, file, namespace="ImGui") {
        const tokens = new Scanner(file.Content, {comments: true, positions: true}).Tokens;

        let start = -1;
        let end = -1;
        for(let i = 0; i < tokens.length; i++) {
            const token = tokens[i];
            if (token.Type !== "Comment" || !token.Literal.startsWith("///")) continue;

            const inner = token.Literal.slice(3).trim();
            if (!inner.startsWith("@section")) continue;

            const section = inner.slice("@section".length).trim().toLowerCase();
            switch (section) {
                case "binds": {
                    start = token.Position + token.Literal.length;
                    break;
                }

                case "internal": {
                    end = token.Position;
                    break;
                }
            }
        }

        if (start === -1) throw `Could not parse "${file.Name}", could not find "Binds" @section comment (${namespace})`;
        if (end === -1) throw `Could not parse "${file.Name}", could not find "Internal" @section comment (${namespace})`;

        const content = [];
        const ns_enums = {};

        for(const key in enums) {
            let name = key.endsWith("_") ? key.slice(0,-1) : key;
            if (!name.toLowerCase().startsWith("im")) {
                if (!name.toLowerCase().startsWith(namespace)) {
                    name = `${Configuration.IMEXT_PREFIX}${namespace}${name}`;
                }
            }
            ns_enums[name] = enums[key];
        };

        wrappers.forEach(e => {
            if (e.Calls === "_") {
                Logger.warning(`Skipping wrapper "${e.Name}" (${namespace}), call target marked as discard`, {type: "H000"});
                return;
            }

            content.push(e.to_jsdoc(ns_enums) + "\n" + e.to_gml());
        });

        let enum_def = `\n${Configuration.SPACING}/// @section Enums\n`;
        for(const key in enums) {
            const name = key.endsWith("_") ? key.slice(0, -1) : key;
            if (this._data.enums.includes(name)) {
                throw `Enum ${name} defined more than once.`;
            }
            this._data.enums.push(name);
            enum_def += `${Configuration.SPACING}enum ${name} {\n`;

            const members = Object.keys(enums[key]);
            for(let i = 0; i < members.length; i++) {
                const value = enums[key][members[i]];
                let member = members[i];
                if (name.endsWith("Flags")) {
                    if (!member.startsWith(name)) {
                        member = member.replace(name.replace(/Flags$/, ""), name);
                    }
                }
                member = member.replaceAll(name + "_", "");
                if (value === 0) {
                    enum_def += `${Configuration.SPACING.repeat(2)}${member},\n`;
                    continue;
                }
                enum_def += `${Configuration.SPACING.repeat(2)}${member} = ${value.replaceAll(name + "_", `${name}.`)},\n`;
            }
            enum_def += `${Configuration.SPACING}}\n\n`;
        }

        const final = file.Content.slice(0, start) + content.join("\n") + enum_def + Configuration.SPACING + file.Content.slice(end);
        if (file.update(final)) file.commit();
    }

    /**
     *
     * @param {object} api
     * @param {Array<Wrapper>} wrappers
     * @param {FileEditor} file A file editor containing the GML script file
     */
    static writeReport(header, wrappers, file, namespace="ImGui") {
        const func = header.functions;
        let internal_functions_names = [];
        if ("internal_functions" in header) {
            func.push(...header.internal_functions);
            internal_functions_names.push(...header.internal_functions.map(e => e.Name));
        }

        // TODO: NOTE: defined manual wrapped functions
        let wrapped_funcs;
        let notes;

        switch (namespace) {
            case "ImGui":
                wrapped_funcs = [
                    "NewFrame",
                    "Render",
                    "EndFrame",
                    "GetWindowPos",
                    "GetWindowSize",
                    "GetContentRegionAvail",
                    "GetContentRegionMax",
                    "GetWindowContentRegionMin",
                    "GetWindowContentRegionMax",
                    "GetMouseCursor",
                    "SetMouseCursor",
                    "GetMousePos",
                    "GetMousePosOnOpeningCurrentPopup",
                    "GetMouseDragDelta",
                    "GetCursorPos",
                    "SetCursorPos",
                    "GetCursorStartPos",
                    "GetCursorScreenPos",
                    "CalcTextSize",
                    "GetItemRectMin",
                    "GetItemRectMax",
                    "GetItemRectSize",
                    "GetColorU32",
                    "GetStyleColorVec4",
                    "UpdatePlatformWindows",
                    "RenderPlatformWindowsDefault",
                    "DestroyPlatformWindows",
                ];

                // TODO: NOTE: defined manual notes
                notes = {
                    "NewFrame": "Handled internally by `__imgui_new_frame` function",
                    "Render": "Handled internally by `__imgui_render` function",
                    "EndFrame": "Handled internally by `__imgui_end_frame` function",
                    "GetStyle": "You can use custom functions (`SetStyleVar` and `SetStyleColor`) to modify the style",
                    "GetWindowPos": "Use X/Y wrappers. ImVec2 returns are unsupported",
                    "GetWindowSize": "Use Width/Height wrappers. ImVec2 returns are unsupported",
                    "GetContentRegionAvail": "Use X/Y wrappers. ImVec2 returns are unsupported",
                    "GetContentRegionMax": "Use X/Y wrappers. ImVec2 returns are unsupported",
                    "GetWindowContentRegionMin": "Use X/Y wrappers. ImVec2 returns are unsupported",
                    "GetWindowContentRegionMax": "Use X/Y wrappers. ImVec2 returns are unsupported",

                    "PushFont": "Fonts are currently unimplemented",
                    "PopFont": "Fonts are currently unimplemented",

                    "GetMousePos": "Use X/Y wrappers. ImVec2 returns are unsupported",
                    "GetMousePosOnOpeningCurrentPopup": "Use X/Y wrappers. ImVec2 returns are unsupported",
                    "GetMouseDragDelta": "Use X/Y wrappers. ImVec2 returns are unsupported",
                    "GetCursorPos": "Use X/Y wrappers. ImVec2 returns are unsupported",
                    "GetCursorStartPos": "Use X/Y wrappers. ImVec2 returns are unsupported",
                    "GetCursorScreenPos": "Use X/Y wrappers. ImVec2 returns are unsupported",
                    "CalcTextSize": "Use Width/Height wrappers. ImVec2 returns are unsupported",
                    "GetItemRectMin": "Use X/Y wrappers. ImVec2 returns are unsupported",
                    "GetItemRectMax": "Use X/Y wrappers. ImVec2 returns are unsupported",
                    "GetItemRectSize": "Use Width/Height wrappers. ImVec2 returns are unsupported",
                    "GetPlatformIO": "Unsupported",
                    "SetDragDropPayload": `See [Drag and Drop Payloads](${Configuration.REPOSITORY_URL}/wiki/Drag-and-Drop-Payloads) for more info on handling payloads`,
                    "GetColorU32": "Use `GetStyleColor`",
                    "GetStyleColorVec4": "Use `ImGui.GetStyleColor`",
                    "UpdatePlatformWindows": "Handled internally by `__imgui_draw` function",
                    "RenderPlatformWindowsDefault": "Handled internally by `__imgui_draw` function",
                    "DestroyPlatformWindows": "Handled internally by `__imgui_shutdown` function",
                    "GetMouseCursor": "Handled internally by GML",
                    "SetMouseCursor": "Handled internally by GML",
                };

                break;

            default:
                wrapped_funcs = [
                ];

                notes = {
                };

                break;
        }

        let content = `# ${namespace}\n\n## About\n\nThis is an automatically generated file that keeps track of wrapper coverage of the API. This may not be 100% accurate as it is calculated programatically, but can serve as a good general idea of progress.\n\n`;
        let wrapped = 0;
        func.forEach(e => {
            if (namespace === "ImGui" && (e.Name.endsWith("V") && !e.Name.endsWith("HSV"))) {
                notes[e.Name] = "Unsupported, use `string` function in GameMaker for string formatting";
            }

            e.IsWrapped = false;
            e.IsInternal = false;

            const wrapper = wrappers.find(w => w.Calls === e.Name)
            if (wrapper) {
                e.IsWrapped = true;
                wrapper.Arguments.forEach(a => {
                    if (a.Type.endsWith("ImGuiReturnMask")) {
                        notes[e.Name] = `See [ImGuiReturnMask Usage](${Configuration.REPOSITORY_URL}/wiki/ImGuiReturnMask-Usage) for more info the \`mask\` argument`
                    }
                })
            } else if (wrapped_funcs.indexOf(e.Name) != -1) {
                e.IsWrapped = true;
            }

            if (internal_functions_names.includes(e.Name)) {
                e.IsInternal = true;
            }

            if (e.IsWrapped) wrapped++;
        });

        let unsupported = 0;
        func.forEach(e => {
            e.IsUnsuppported = false;

            const note = notes[e.Name];
            if (note) {
                if (note.includes("Unsupported")) e.IsUnsuppported = true;
            }
            if (e.IsInternal && !e.IsWrapped) e.IsUnsuppported = true;

            if (e.IsUnsuppported && !e.IsInternal) unsupported++;
        });

        const supported = func.filter(e => (!e.IsUnsuppported)).length;
        const funcLength = supported + unsupported;

        let coveragePercentage = Math.round(100 * (wrapped / (supported)));
        let notSupportedPercentage = Math.round(100 * (unsupported / (supported + unsupported)));
        let wrappedPercentage = Math.round(100 * (wrapped / (funcLength)));

        if (funcLength == 0) {
            coveragePercentage = 0;
            wrappedPercentage = 0;
            notSupportedPercentage = 0;
        }

        content += `# Coverage\n\n`;
        if (namespace === "ImGui") {
            content += `- ![coverage](https://badgen.net/https/raw.githubusercontent.com/${Configuration.REPOSITORY_NAME}/main/extra/badges/coverage.json?icon=awesome)\n`;
        }
        content += `- ${wrapped} out of ${supported} supported API functions wrapped (**${coveragePercentage}% complete**)\n`;
        content += `- ${wrapped} out of ${funcLength} total API functions wrapped (*${wrappedPercentage}% complete*)\n`;
        content += `- Note that ${unsupported} out of ${funcLength} API functions are not supported (${notSupportedPercentage}%)\n`;
        content += `\n`;
        content += "| Function | Wrapped | Link | Notes |\n";
        content += "| -------- | ------- | ---- | ----- |\n";

        const writtenWrappers = new Set();
        func.forEach(e => {
            let wn;
            const wrapper = wrappers.find(w => w.Calls === e.Name);
            const wrapperKey = `${e.Name}`;

            if (wrapper) {
                wrapper.Found = true;
                wn = wrapper.Context;
            } else {
                if (namespace != "ImGui") {
                    wn = `${Configuration.IMEXT_PREFIX}${namespace}`;
                } else {
                    wn = "ImGui";
                }
            }
            if ((!e.IsInternal) || (e.IsInternal && e.IsWrapped)) {
                if (!e.IsInternal) {
                }
                if (!writtenWrappers.has(wrapperKey)) {
                    content += `| \`${wn}::${e.Name}\` | ${e.IsWrapped ? "✅" : "❌"} | ${wrapper ? `[${wrapper.File}](${Configuration.REPOSITORY_URL}/blob/main/${wrapper.FileRelpath.replaceAll(path.sep, "/")}#L${wrapper.Line})` : "-"} | ${notes[e.Name] ?? "-"} |\n`;
                    writtenWrappers.add(wrapperKey);
                }
            }
        });

        content += `\n# Non-Standard\n\nBelow is a table of non-standard functions made specifically for ${namespace}\n\n`;
        content += "| Function | Link | Notes |\n";
        content += "| -------- | ---- | ----- |\n";
        wrappers.forEach(e => {
            if (!e?.Found && e.Calls !== "_") {
                content += `| \`${e.Context}.${e.Calls}(${e.Arguments.map(e => e.Name).join(", ")})\` | [${e.File}](${Configuration.REPOSITORY_URL}/blob/main/${e.FileRelpath.replaceAll(path.sep, "/")}#L${e.Line}) | ${notes[e.Name] ?? "-"} |\n`;
            }
        });

        if (file.update(content)) file.commit();

        return coveragePercentage
    }

    static writeCoverageBadge(file, coveragePercentage, name="coverage", color="green") {
        let content = `{"subject":"${name}","status":"${coveragePercentage}%","color":"${color}"}`;
        if (file.update(content)) file.commit();
    }

    static writeSnakeCase(wrappers, enums, file) {
        let content = `/**\n*  This script includes snake_case function defintions for ImGui_GM, as an alternative to the namespaced convention\n*  To use, just drop this script into your project with ImGui_GM\n*  Generated at ${new Date().toLocaleString()}\n*/\n\n`;
        ["Initialize", "NewFrame", "EndFrame", "Render", "Draw", "Shutdown"].forEach(e => {
            const name = "imgui_" + Util.toSnakecase(e);
            content += `/// @function ${name}\nfunction ${name}() {\n${Configuration.SPACING}return ImGui.__${e}();\n}\n\n`;
        });

        wrappers.forEach(e => {
            content += e.to_jsdoc(enums, 0, Configuration.WRITE_SNAKE) + "\n" + e.to_gml(0, Configuration.WRITE_SNAKE) + "\n";
        });
        if (file.update(content)) file.commit();
    }

    static writeDocumentation(wrappers, enums, file) {
        let content = `// shrug`;
        if (file.update(content)) file.commit();
    }
}

module.exports = Program;
if (!global["__program_main"]) if (!global["__program_warn"]) {global["__program_warn"]=1;console.error("Please execute the program by running main.js");}