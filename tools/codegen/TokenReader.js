const Token = require("./Token");

/**
 * @description Helper class to linearly read through a list of tokens
 */
class TokenReader {
    /**
     * @param {Array<Token>} tokens Array containing tokens to read 
     */
    constructor(tokens) {
        this.Tokens = tokens;
        this.Length = tokens.length;
        this.Index = 0;
    }

    /**
     * @param {number} offset Amount of tokens to offset read position by
     * @returns If current read position plus "offset" exceeds token list length
     */
    end(offset=0) {
        return (this.Index + offset) >= this.Length;
    }

    /**
     * @param {number} offset Amount of tokens to offset read position by
     * @returns Token at current read position plus "offset", undefined if out of bounds
     */
    peek(offset=0) {
        if (this.Index + offset >= this.Length) return undefined;
        return this.Tokens[this.Index + offset];
    }

    /**
     * @description Helper function for getting previous token after advancing
     * @returns The token behind the current read position
     */
    previous() {
        return this.peek(-2);
    }

    /**
     * @returns The next token in the list
     */
    advance() {
        return this.Tokens[this.Index++];
    }

    match_type(type) {
        if (this.end()) return false;
        if (this.peek()?.Type !== type) return false;

        this.advance();
        return true;
    }

    match(literal) {
        return this.match_type(Token.name(literal));
    }

    /**
     * Advances the read position until a token with the given "type" is found, resets position to start if not found
     * @param {string} type The type name for the token to stop at
     * @returns If the token was found, false otherwise
     */
    skip_to(type) {
        const start = this.Index;
        while (!this.end()) {
            const token = this.peek();
            if (token) {
                if (token.Type === type) {
                    return true;
                }
            }
            this.advance();
        }
        this.Index = start;
        return false;
    }

    /**
     * Advances the read position and collects tokens until a token of "type" is found
     * @param {string} type The type name for the token to stop at
     * @returns {Array<Token>} List of tokens between start position and "type" token, undefined if not found
     */
    until(type) {
        const start = this.Index;
        if (!this.skip_to(type)) return undefined;
        return this.Tokens.slice(start, this.Index++);
    }

    until_multi(types) {
        const start = this.Index;
        while (!this.end()) {
            const token = this.peek();
            if (token) {
                for(let i = 0; i < arguments.length; i++) {
                    if (token.Type == arguments[i]) {
                        return this.Tokens.slice(start, this.Index++);
                    }
                }
            }
            this.advance();
        }
        return undefined;
    }

    /**
     * Similar to .util method, except a callback is ran for each token
     * @param {Function} callback Ran for each token read, return true to stop; false to continue
     * @returns List of tokens between start position and end token, undefined if not found
     */
    until_condition(callback) {
        const start = this.Index;
        let met = false;
        while (!this.end()) {
            const token = this.peek();
            if (token) {
                if (callback(token)) {
                    met = true;
                    break;
                }
            }
            this.advance();
        }
        return met ? this.Tokens.slice(start, this.Index) : undefined;
    }

    /**
     * 
     * @param {*} type1 
     * @param {*} type2 
     * @returns 
     */
    between_types(type1, type2) {
        this.skip_to(type1);
        this.Index++;
        return this.until(type2);
    }

    between_types_nested(type1, type2) {
        this.skip_to(type1);
        let start = this.Index, nest = 0;
        while (!this.end()) {
            const token = this.peek();
            if (token) {
                if (token.Type == type2) {
                    if (--nest <= 0) {
                        break;
                    }
                } else if (token.Type === type1) nest++;
            }
            this.advance();
        }
        return this.Tokens.slice(start + 1, this.Index++);
    }

    between(literal1, literal2) {
        return this.between_types(Token.name(literal1), Token.name(literal2));
    }

    between_nested(literal1, literal2) {
        return this.between_types_nested(Token.name(literal1), Token.name(literal2));
    }
}

module.exports = TokenReader;
if (!global["__codegen_main"]) if (!global["__codegen_warn"]) {global["__codegen_warn"]=1;console.error("Please execute the program by running main.js");}