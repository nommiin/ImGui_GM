const fs = require("node:fs");
const Configuration = require("./Configuration");
const Logger = require("./Logger");
const Token = require("./Token");
const TokenReader = require("./TokenReader");

/**
 * Takes tokens and turns them into better tokens :3
 * 
 * Written by Nommiin - https://github.com/Nommiin
 */ 
class Processor {
    constructor(tokens) {
        this.Tokens = tokens;
    }

    token_group(reader, token) {
        switch (token.Type) {
            case Token.name("("):
            case Token.name("{"):
            case Token.name("["): {
                const children = [];
                while (!reader.end()) {
                    const next = reader.advance();
                    switch (next.Type) {
                        case Token.name(")"): 
                        case Token.name("}"): 
                        case Token.name("]"): {
                            token.Type = token.Type.slice("Left".length) + "Pair";
                            token.Children = children;
                            return token;
                        }
                        default: children.push(this.token_group(reader, next));
                    }
                }
                throw `Could not find closing token for ${token.Type} at line ${token.Line}`;
            }

            case Token.name(")"): 
            case Token.name("}"): 
            case Token.name("]"): {
                throw `Could not find opening token for orphaned ${token.Type} at line ${token.Line}`;
            }
        }
        return token;
    }

    token_pointers(reader, token) {
        switch (token.Type) {
            case "Identifier":
            case "Keyword": {
                const prev = reader.previous();
                if (prev) {
                    if (prev.Type === Token.name("&")) {
                        prev.Type = "AddressOf";
                        prev.Literal += token.Literal;
                        return undefined;
                    }
                }

                const next = reader.peek();
                if (next) {
                    const more = reader.peek(1);
                    if (more && more.Type.startsWith("Number")) return token;

                    if (next.Type === Token.name("*")) {
                        token.Type = "TypePointer";
                        token.Literal += next.Literal;
                        reader.advance();
                    } else if (next.Type === Token.name("&")) {
                        token.Type = "Dereference";
                        token.Literal += next.Literal;
                        reader.advance();
                    } 
                    return token;
                }
            }
        }
        return token;
    }

    token_templates(reader, token) {
        if (token.Type === Token.name("<")) {
            const next = reader.peek();
            if (next.Type === "Keyword" || next.Type === "Identifier") {
                console.log("potential template args at " + token.Line);
            }
        }
        /*if (token.Type === Token.name(">")) {
            const next = reader.peek();
            if (next.Type === Token.name("()")) {
                let found = false;
                for(let i = reader.Index - 1; i > 0; i--) {
                    const find = reader.Tokens[i];
                    if (find.Type === Token.name("<")) {
                        find.Type = "TemplateStartArgs";
                        found = true;
                        break;
                    }
                }
                if (!found) throw `Could not find opening token for TemplateEndArgs (>) at line ${token.Line}`;

                token.Type = "TemplateEndArgs";
                return token;
            }
        }*/
        return token;
    }

    token_functions(reader, token) {
        switch (token.Type) {
            case "Identifier": {
                let next = reader.peek();
                if (next) {
                    if (next.Type === "TemplateStartArgs") {
                        let found = false, args = [];
                        while (!reader.end()) {
                            const end = reader.advance();
                            args.push(end);
                            if (end) {
                                if (end.Type === "TemplateEndArgs") {
                                    found = true;
                                    break;
                                }
                            }
                        }
                        if (!found) throw `Could not find closing token for ${token.Type} at line ${token.Line}`;
                        token.Literal += `|template=${args.map(e => e.Literal).join("")}`;
                        next = reader.peek();
                    }

                    if (next.Type === Token.name("()")) {
                        reader.advance();

                        const more = reader.peek();
                        if (more) {
                            token.Type = "Function" + (more.Type === Token.name("{}") ? "Def" : "Call");
                        }
                        token.Children = next.Children;
                        return token;
                    }
                }
            }
        }
        return token;
    }

    run(callback, base, ind=0) {
        const reader = new TokenReader(base), tokens = [];
        while (!reader.end()) {
            const token = reader.advance();
            if (token.Children) {
                token.Children = this.run(callback, token.Children, ind + 1);
            }

            const ret = callback.apply(this, [reader, token]);
            if (ret) tokens.push(ret);
        }
        return tokens;
    }

    get() {
        let tokens = this.Tokens, steps = [
            this.token_group,
            this.token_pointers,
            this.token_templates,
            this.token_functions
        ];
        for(let i = 0; i < steps.length; i++) tokens = this.run(steps[i], tokens);
        Logger.info(`Successfully processed ${this.Tokens.length} tokens and retrieved ${tokens.length} tokens`);

        if (Configuration.WRITE_TOKENS) {
            fs.writeFileSync("tokens.json", JSON.stringify(tokens, undefined, 4), {encoding: "utf-8"});
            Logger.info(`Wrote ${tokens.length} tokens to "tokens.json"`);
        }
        return tokens;
    }
}

module.exports = Processor;
if (!global["__program_main"]) if (!global["__program_warn"]) {global["__program_warn"]=1;console.error("Please execute the program by running main.js");}