const Scanner = require("./Scanner");

/**
 * Generic class to step through and read tokens in an array
 * 
 * Written by Nommiin - https://github.com/Nommiin 
 */
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

    match(snippet, offset=0) {
        const tokens = new Scanner(snippet, {quiet: true}).Tokens.slice(0, -1);
        for(let i = 0; i < tokens.length; i++) {
            const token = this.Tokens[(this.Index + offset) + i];
            if (tokens[i].Type !== token.Type || tokens[i].Literal !== token.Literal) {
                return false;
            }
        }
        return true;
    }
}

function do_thing(tokens) {
    let ret = [];
    for(let i = 0; i < tokens.length; i++) {
        const token = tokens[i];
        if (token.Type.endsWith("Pair")) token.Type = "Left" + token.Type.slice(0, -4);
        ret.push(token);
        if (token.Children) {
            ret = ret.concat(do_thing(token.Children));
            token.Children = undefined;
        }
    }
    return ret;
}

module.exports = TokenReader;
if (!global["__program_main"]) if (!global["__program_warn"]) {global["__program_warn"]=1;console.error("Please execute the program by running main.js");}