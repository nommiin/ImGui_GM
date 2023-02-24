const Logger = require("./Logger");
const Configuration = require("./Configuration");

class Wrapper {
    static reserved = ["x", "y", "continue", "return", "id", "repeat", "frac", "visible"];

    constructor(name, file, line) {
        this.Name = name;
        this.File = file;
        this.Line = line;
        this.Calls = undefined;
        this.CallOverride = false;
        this.Arguments = [];
        this.ArgumentIndex = -1;
        this.Return = "Unknown<unset>";
        this.Start = "";
        this.End = "";
    }

    finalize() {
        if (!this.Calls) {
            const calls = this.Name.slice("__imgui_".length).split("_");
            this.Calls = calls.map(e => e[0].toUpperCase() + e.slice(1)).join("");
            Logger.warning(`Calling function is unset for wrapper "${this.Name}", infering call as "${this.Calls}" from name`);
        }

        if (this.Start.length > 0) {
            let start = this.Start;
            this.Arguments.forEach((e, ind) => {
                start = start.replaceAll("#arg" + ind, e.Name);
            });
            this.Start = start;
        }

        if (this.End.length > 0) {
            let end = this.End;
            this.Arguments.forEach((e, ind) => {
                end = end.replaceAll("#arg" + ind, e.Name);
            });
            this.End = end;
        }

        for(let i = 0; i < this.Arguments.length; i++) {
            const arg = this.Arguments[i];
            if (!arg) throw `Could not read undefined argument at index ${i} in ${this.Name} at line ${this.Line}`;
            
            if (Wrapper.reserved.includes(arg.Name)) {
                Logger.warning(`Reserved keyword "${arg.Name}" found in arguments for wrapper "${this.Name}", renaming to "_${arg.Name}"`);
                arg.Name = "_" + arg.Name;
            }
            
            if (arg.Passthrough !== undefined) {
                let passthrough = arg.Passthrough;
                this.Arguments.forEach((e, ind) => {
                    passthrough = passthrough.replaceAll("#arg" + ind, e.Name);
                });
                arg.Passthrough = passthrough;
            }

            if (arg.Default !== undefined) {
                let def = arg.Default;
                this.Arguments.forEach((e, ind) => {
                    def = def.replaceAll("#arg" + ind, e.Name);
                });
                arg.Default = def;
            }
        }
        return this;
    }

    calls(name, override=false) {
        if (this.CallOverride) return;
        this.Calls = name;
        this.CallOverride = override;
    }

    argument(name, ind, origin) {
        this.Arguments[ind] = {
            Name: name,
            Type: origin ? Wrapper.typefunc(origin) : "Any",
            Hidden: false,
            Passthrough: undefined,
            Default: undefined
        }
        this.ArgumentIndex = ind;
    }

    returns(kind) {
        this.Return = Wrapper.typename(kind);
    }

    return_arg(ind) {
        this.Return = this.Arguments[ind].Type;
    }

    modifier(token) {
        switch (token.Literal) {
            // Wrapper
            case "GMOVERRIDE": {
                const name = token.Children[0];
                if (!name || name.Type !== "Identifier") throw `Could not handle GMOVERRIDE modifier, expected "name" argument as Identifier at line ${token.Line}`;
                this.calls(name.Literal, true);
                return true;
            }

            case "GMPREPEND": {
                this.Start += token.flatten(false);
                return true;
            }

            case "GMAPPEND": {
                this.End += token.flatten(false);
                return true;
            }

            // Arguments
            case "GMDEFAULT": {
                if (this.ArgumentIndex === -1) throw `Could not handle ${token.Literal} modifier, target argument is unset at line ${token.Line}`;
                
                const arg = this.Arguments[this.ArgumentIndex];
                arg.Default = token.flatten(false);
                return true;
            }

            case "GMPASSTHROUGH": {
                if (this.ArgumentIndex === -1) throw `Could not handle ${token.Literal} modifier, target argument is unset at line ${token.Line}`;
                
                const arg = this.Arguments[this.ArgumentIndex];
                arg.Passthrough = token.flatten(false);
                return true;
            }

            case "GMHIDDEN": {
                if (this.ArgumentIndex === -1) throw `Could not handle ${token.Literal} modifier, target argument is unset at line ${token.Line}`;
                
                const arg = this.Arguments[this.ArgumentIndex];
                arg.Hidden = true;
                return true;
            }

            case "GMRETURN": {
                let index = this.ArgumentIndex;

                const inner = token.Children;
                if (inner) {
                    const ind = inner[0];
                    if (ind) {
                        switch (ind.Type) {
                            case "Number": {
                                index = ind.Literal;
                                if (index > this.ArgumentIndex) {
                                    throw `Could not handle ${token.Literal} modifier, target argument index ${index} is out of range (${this.ArgumentIndex}) at line ${token.Line}`;
                                }
                                break;
                            }
                            
                            default: {
                                this.Return = token.flatten(false);
                                Logger.info("Overwriting return type for " + this.Name + " as " + this.Return);
                                return true;
                            }
                        }
                    }
                }
                if (index === -1) throw `Could not handle ${token.Literal} modifier, target argument is unset at line ${token.Line}`;

                this.return_arg(index);
                return true;
            }

            case "GMRETURNS": {
                this.Return = token.flatten(false);
                Logger.info("Overwriting return type for " + this.Name + " as " + this.Return);
                return true;
            }

            case "GMHINT": {
                if (this.ArgumentIndex === -1) throw `Could not handle ${token.Literal} modifier, target argument is unset at line ${token.Line}`;
                
                const arg = this.Arguments[this.ArgumentIndex];
                arg.Type = token.flatten(false);
                return true;
            }

            // Ignore
            case "GMCOLOR_TO":
            case "GMCOLOR_FROM": return true;
        }
        Logger.warning(`Could not handle unknown modifier "${token.Literal}" for wrapper "${this.Name}" at line ${token.Line}`);
        return false;
    }

    to_extension() {
        return {
            resourceType: "GMExtensionFunction",
            resourceVersion: "1.0",
            name: this.Name,
            externalName: this.Name,
            help: "",
            documentation: "",
            kind: 1,
            hidden: true,
            returnType: 1,
            argCount: 0,
            args: []
        };
    }

    to_jsdoc(enums, spacing=1, snake=false) {
        let str = Configuration.SPACING.repeat(spacing) + `/// @function ${!snake ? this.Calls : this.Name.slice(2)}(${this.Arguments.filter(e => !e.Hidden).map(e => e.Name).join(", ")})\n`;
        for(let i = 0; i < this.Arguments.length; i++) {
            const arg = this.Arguments[i];
            if (arg.Hidden) continue;

            // probably shouldn't get changed here but Ah
            if (arg.Type === "Real" && arg.Default) {
                // once again, Ah
                if (arg.Default.startsWith("ImGuiReturnMask")) {
                    arg.Type = "Enum.ImGuiReturnMask";
                } else {
                    for(const key in enums) {
                        const name = key.endsWith("_") ? key.slice(0, -1) : key;
                        if (arg.Default.startsWith(name)) {
                            arg.Type = `Enum.${name}`;
                            break;
                        }
                    }
                }
            }
            
            str += Configuration.SPACING.repeat(spacing) + `/// @argument {${arg.Type}}`;
            if (arg.Default !== undefined) {
                str += ` [${arg.Name}=${Wrapper.fix(arg.Default)}]`;
            } else {
                str += ` ${arg.Name}`;
            }
            str += "\n";
        }
        if (!snake) str += Configuration.SPACING.repeat(spacing) + `/// @context ImGui\n`;
        str += Configuration.SPACING.repeat(spacing) + `/// @return {${this.Return}}`;
        return str;
    }

    to_gml(spacing=1, snake=false) {
        let str = Configuration.SPACING.repeat(spacing) + (!snake ? `static ${this.Calls} = function(` : `function ${this.Name.slice(2)}(`) + this.Arguments.filter(e => !e.Hidden).map(e => {
            if (e.Default === undefined) return e.Name;

            switch (e.Type) {
                case "String": {
                    return `${e.Name}="${e.Default}"`;
                }
            }
            return `${e.Name}=${e.Default}`;
        }).join(", ") + ") {\n";
        if (Configuration.FORCEINLINE) str += Configuration.SPACING.repeat(spacing + 1) + `gml_pragma("forceinline");\n`;

        if (this.Start.length > 0) str += Configuration.SPACING.repeat(spacing + 1) + this.Start + "\n";

        const has_end = this.End.length > 0;
        str += Configuration.SPACING.repeat(spacing + 1) + (has_end ? "var ___ret = " : "return") + " ";
        str += `${this.Name}(`;
        str += this.Arguments.map(e => {
            if (e.Passthrough) {
                return e.Passthrough;
            }
            return e.Name;
        }).join(", ") + ");\n";
        if (has_end) str += Configuration.SPACING.repeat(spacing + 1) + this.End + "\n" + Configuration.SPACING.repeat(spacing + 1) + "return ___ret;\n";
        str += Configuration.SPACING.repeat(spacing) + "}\n";
        return str;
    }

    static typename(kind) {
        switch (kind) {
            case "VALUE_INT32":
            case "VALUE_INT64":
            case "VALUE_REAL": return "Real";
            case "VALUE_STRING": return "String";
            case "VALUE_ARRAY": return "Array";
            case "VALUE_OBJECT": return "Asset.GMObject";
            case "VALUE_UNDEFINED": return "Undefined";
            case "VALUE_PTR": return "Pointer";
            case "VALUE_BOOL": return "Bool";
        }
        return `Unknown<${kind}>`;
    }

    static typefunc(func) {
        let ret = "";
        let base = func.slice("YYGet".length);
        const template = base.indexOf("|template=");
        if (template > -1) {
            const arr = base.slice(template + "|template=".length);
            switch (arr) {
                case "double":
                case "float":
                case "int": {
                    ret = "<Real>";
                    break;
                }

                default: {
                    ret = "<Unknown>";
                    break;
                }
            }
            base = base.slice(0, template);
        }

        switch (base) {
            case "String":
            case "Array":
            case "Real":
            case "Bool": return base + ret;
            case "PtrOrInt": 
            case "Ptr": return ret + "Pointer";
            case "Int32":
            case "Uint32":
            case "Int64":
            case "Float": return ret + "Real";
            case "Struct": return ret + "Struct";
        }
        return ret;
    }

    // Replaces parentheses with similar characters, GameMaker's IDE gets tripped up by extra parentheses in autocomplete
    static fix(val) {
        return val.replaceAll("(", "⌊").replaceAll(")", "⌉");
    }
}

module.exports = Wrapper;
if (!global["__program_main"]) if (!global["__program_warn"]) {global["__program_warn"]=1;console.error("Please execute the program by running main.js");}