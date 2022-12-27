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

module.exports = TokenReader;
if (!global["__codegen_main"]) if (!global["__codegen_warn"]) {global["__codegen_warn"]=1;console.error("Please execute the program by running main.js");}