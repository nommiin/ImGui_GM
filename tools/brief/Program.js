const FileEditor = require("./FileEditor");
const Scanner = require("./Scanner");
const Processor = require("./Processor");
const TokenReader = require("./TokenReader");
const Logger = require("./Logger");
const Configuration = require("./Configuration");
const Wrapper = require("./Wrapper");
const Token = require("./Token");

/**
 * Written by Nommiin - https://github.com/Nommiin
 */ 
class Program {
    /**
     * Entry point for tool, see Configuration.js for options
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

        const scanner = new Scanner(file.Content);
        if (scanner.Tokens.length === 0) {
            throw `Could not parse wrapper, token list is empty`;
        }

        const tokens = new Processor(scanner.Tokens).get();
        if (tokens.length === 0) {
            throw `Could not parse wrapper, processed token list is empty`;
        }

        const reader = new TokenReader(tokens), wrapper_keyword = Configuration.WRAPPER_DEF, functions = [];
        while (!reader.end()) {
            const token = reader.advance(), wrapper_args = token.Children;
            if (token.Type !== "FunctionDef" || token.Literal !== wrapper_keyword || !wrapper_args) continue;
            if (wrapper_args.length !== 1) throw `Could not parse wrapper, ${wrapper_keyword} explicitly requires 1 argument at line ${token.Line}`;

            const wrapper = new Wrapper(wrapper_args[0].Literal), body = reader.advance();
            if (!body || body.Type !== Token.name("{}")) throw `Could not parse wrapper, ${wrapper_keyword} at line ${token.Line} is not followed by a ${Token.name("{}")} token`;
            if (!body.Children || body.Children.length === 0) throw `Could not parse wrapper, ${wrapper_keyword} at line ${token.Line} does not contain any tokens`;
            
            let arg_current = 0;
            let arg_protect = true;
            const args = new TokenReader(body.Children);
            while (!args.end()) {
                const token = args.advance();
                switch (token.Type) {
                    case "FunctionCall": {
                        // check for C++ call
                        const prev = args.previous();
                        if (prev.Type === Token.name("::")) {
                            const more = args.previous(2);
                            if (more.Type === "Identifier" && more.Literal === "ImGui") {
                                wrapper.calls(token.Literal);
                            }
                        } else {
                            // normal call, probs
                            const func = token.Literal;
                            if (func.startsWith("YYGet")) {
                                const yy_args = token.Children.filter(e => e.Type !== Token.name(","));
                                if (yy_args.length < 2) {
                                    Logger.warning(`Expected 2 arguments for a call to ${func} at line ${token.Line} but got ${yy_args.length}, skipping this argument`);
                                    continue; 
                                }

                                const base = yy_args[0].Literal;
                                if (base !== "arg") Logger.warning(`Expected "arg" as first argument in call to ${func} at line ${token.Line} but got "${base}"`);
                                const ind = yy_args[1];
                                if (ind.Type !== "Number") {
                                    Logger.warning(`Expected Number for second argument in call to ${func} at line ${token.Line} but got ${ind.Type} (${ind.Literal})`);
                                    Logger.warning(`Argument index protection has been disabled for ${wrapper.Name}`);
                                    arg_protect = false;
                                }

                                if (arg_protect) {
                                    let arg_read = -1;
                                    try {
                                        arg_read = parseInt(ind.Literal);
                                    } catch (e) {
                                        throw `Could not parse wrapper, failed to parse second argument as integer for ${func} at line ${token.Line} (${e})`;
                                    }

                                    if ((arg_read - arg_current) < 0) throw `Argument index protection triggered, found argument skip backwards from ${arg_current} to ${arg_read} at line ${token.Line}`;

                                    const diff = (arg_read - arg_current);
                                    if (diff > 1) throw `Argument index protection triggered, found argument skip forward from ${arg_current} to ${arg_read} at line ${token.Line}`;
                                    

                                    arg_current = arg_read;
                                    /*
                                    try {

                                    }
                                    try {
                                        const arg_ind = parseInt(ind.Literal), diff = (arg_ind - arg_current);
                                    } catch (e) {
                                        
                                    }
                                        if (diff > 1) throw `Argument index protection triggered, found argument skip from ${arg_current} to ${arg_ind} at line ${token.Line}`;
                                        //console.log("diff: " + (arg_ind - arg_current));
                                        arg_current = arg_ind;
                                    } catch (e) {
                                        arg_protect = false;
                                    }*/
                                }
                            }
                        }
                        break;
                    }
                }
                
            }

            functions.push(wrapper);
            /*
            const func_name = args[0].Literal, func_body = reader.advance();
            console.log(`body contains ${func_body.Children.length} tokens`);

            functions.push({
                Name: func_name
            });*/
        }

        Logger.info(`Parsed wrapper file and retrieved ${functions.length} definitions`);
        if (functions.length === 0) Logger.warning(`Ensure that you are using the correct wrapper keyword (WRAPPER_DEF = "${wrapper_keyword}" in Configuration.js)`);
        return functions;
    }
}

module.exports = Program;
if (!global["__program_main"]) if (!global["__program_warn"]) {global["__program_warn"]=1;console.error("Please execute the program by running main.js");}