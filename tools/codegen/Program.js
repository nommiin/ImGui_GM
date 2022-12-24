const fs = require("node:fs");
const Logger = require("./Logger");
const FileEditor = require("./FileEditor");
const Scanner = require("./Scanner");
const TokenReader = require("./TokenReader");
const Processor = require("./Processor");
const Token = require("./Token");

class Program {
    /**
     * Entry point for codegen tool, see Configuration.js for options
     * @param {string} wrapper Path to wrapper .cpp file
     * @param {string} extension Path to extension .yy file
     * @param {string} script Path to ImGui .gml script
     */
    static main(wrapper, extension, script) {
        const func = this.parseWrapper(new FileEditor(wrapper));
    }

    /**
     * Reads imgui_gm.cpp script and parses out context needed for GameMaker
     * @param {FileEditor} file The file editor containing the wrapper
     */
    static parseWrapper(file) {
        if (file.Size === 0) {
            throw `Could not parse wrapper, file is empty`
        }

        const scanner = new Scanner(`
            function test(_arg) {
                console.log("hewwo" + _arg);
            }

            var a = test(32);
        `);// file.Content);
        if (scanner.Tokens.length === 0) {
            throw `Could not parse wrapper, token list is empty`;
        }

        const reader = new Processor(scanner.Tokens).getCpp();
        if (reader.Tokens.length === 0) {
            throw `Could not parse wrapper, processed token list is empty`;
        }

        fs.writeFileSync("wrapper_tokens.json", JSON.stringify(reader.Tokens, undefined, 4), {encoding: "utf-8"});
        return;
        let func = {};
        while (!reader.end()) {
            const token = reader.advance();
            if (token.Type !== "FunctionDef" || token.Literal !== "GMFUNC") continue;
            
            const name = token.Children[0].Literal, next = reader.advance();
            if (next.Type !== "BracePair") continue; //throw `Could not parse GMFUNC, expected curly braces following arguments`;

            let ind = -1;
            for(let i = 0; i < next.Children.length; i++) {
                const inner = next.Children[i];
                console.log(inner.Literal);
            }
            console.log(name.Literal);

            func[name] = {

            }
        }

        return [];


        //fs.writeFileSync("wrapper_tokens.json", JSON.stringify(reader.Tokens, undefined, 4), {encoding: "utf-8"});

        //console.log(`got ${reader.Length} tokens`);
        /*
        while (!tokens.end()) {
            const prev = tokens.previous(), token = tokens.advance();
            if (token.Type !== "Identifier" || token.Literal !== "GMFUNC") continue;

            // Ignore for #define
            if (prev.Type === "PreprocessorDirective" && prev.Literal === "#define") continue;

            // Get name for GameMaker
            const args = tokens.between_nested("(", ")");
            if (args.length !== 1) {
                throw `Could not parse GMFUNC directive at line ${token.Line}, explicitly requires 1 argument (got ${args.length})`;
            }

            // Copy tokens to return keyword
            const name = args[0], content = tokens.between_nested("{", "}");
            if (!content) {
                throw `Could not parse GMFUNC directive at line ${token.Line}, find to read tokens between curly braces`;
            }

            // Infer types and look at directives
            const reader = new TokenReader(content);
            while (!reader.end()) {
                const token = reader.advance();
                if (token.Type !== "Identifier") continue;

                switch (token.Literal) {
                    case "GMDEFAULT":
                    case "GMHIDDEN":
                    case "GMPASSTHROUGH":
                    case "GMINJECT":
                    case "GMOVERRIDE": {
                        const args = reader.between_nested("(", ")").map(e => e.Literal).join("");
                        console.log(`GOT: ${token.Literal} w/ args: ${args}`);
                        break;
                    }

                    default: {
                        if (token.Literal.startsWith("YYGet")) {
                            const args = reader.between_nested("(", ")").map(e => e.Literal).join("");
                            console.log(`YYGET: ${token.Literal} w/ args: ${args}`);
                        }
                    }
                }
            }

            tokens.Index += reader.Length;

            console.log(`Found: ${name.Literal}, first: ${JSON.stringify(content[0])}`);
            //console.log(a.map(e => `${e.Type} = ${e.Literal}`));
        }*/
        /*
        for(let i = 0; i < tokens.length; i++) {
            const token = tokens[i];
            if (token.Type !== "Identifier") {
                continue;
            }

            switch (token.Literal) {
                case "GMFUNC": {
                    
                    break;
                }
            }

        }*/
    }
}

module.exports = Program;
if (!global["__codegen_main"]) if (!global["__codegen_warn"]) {global["__codegen_warn"]=1;console.error("Please execute the program by running main.js");}