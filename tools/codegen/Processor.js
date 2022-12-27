const Logger = require("./Logger");
const Token = require("./Token");

class TokenReader {
    constructor(tokens) {
        this.Tokens = tokens;
        this.Length = tokens.length;
        this.Index = 0;
    }

    end() {
        return this.Index >= this.Length;
    }

    peek(offset=0) {
        if (this.Index + offset < 0 || this.Index + offset >= this.Length) return undefined;
        return this.Tokens[this.Index + offset];
    }

    previous(offset=1) {
        return this.peek((offset + 1) * -1);
    }

    advance() {
        return this.Tokens[this.Index++];
    }
}

/// Takes tokens and turns them into better tokens :3
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
        if (token.Children) {
            const children = new TokenReader(token.Children), tokens = [];
            while (!children.end()) {
                const child = this.token_pointers(children, children.advance());
                if (child) {
                    tokens.push(child);
                }
            }
            token.Children = tokens.length > 0 ? tokens : undefined;
        }

        switch (token.Type) {
            case "Identifier":
            case "Keyword": {
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

    token_functions(reader, token) {
        if (token.Children) {
            const children = new TokenReader(token.Children), tokens = [];
            while (!children.end()) {
                const child = this.token_functions(children, children.advance());
                if (child) {
                    tokens.push(child);
                }
            }
            token.Children = tokens.length > 0 ? tokens : undefined;
        }

        switch (token.Type) {
            case "Identifier": {
                const next = reader.peek();
                if (next) {
                    if (next.Type === Token.name("()")) {
                        const more = reader.peek(1);
                        if (more && more.Type === Token.name("{}")) {
                            token.Type = "FunctionDef";
                        } else {
                            token.Type = "FunctionCall";
                        }
                        token.Children = next.Children;
                        reader.advance();
                        return token;
                    }
                }
            }
        }
        return token;
    }

    get() {
        let pass = [this.token_group, this.token_pointers, this.token_functions], tokens = this.Tokens;
        for(let i = 0; i < pass.length; i++) {
            const reader = new TokenReader(tokens), token_new = [];
            while (!reader.end()) {
                const token = pass[i].apply(this, [reader, reader.advance()]);
                if (token) {
                    token_new.push(token);
                }
            }
            tokens = token_new;
        }
        Logger.info(`Successfully processed ${this.Tokens.length} tokens and retrieved ${tokens.length} tokens`);
        return tokens;
    }
}

module.exports = Processor;
if (!global["__codegen_main"]) if (!global["__codegen_warn"]) {global["__codegen_warn"]=1;console.error("Please execute the program by running main.js");}