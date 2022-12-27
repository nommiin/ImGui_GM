const Configuration = require("./Configuration");
const Token = require("./Token"), Logger = require("./Logger");

class Scanner {
    constructor(content, gml=false) {
        this.Content = content;
        this.Length = content.length;
        this.GML = gml;
        this.Tokens = [];

        this.Index = 0;
        this.Start = 0;
        this.Line = 1;
        this.LineStart = 0;

        this.scan();
    }

    static Keywords = [
        "alignas",          "alignof",       "and",           "and_eq",
        "asm",              "atomic_cancel", "atomic_commit", "atomic_noexcept",
        "auto",             "bitand",        "bitor",         "bool",
        "break",            "case",          "catch",         "char",
        "char16_t",         "char32_t",      "class",         "compl",
        "concept",          "const",         "constexpr",     "const_cast",
        "continue",         "co_await",      "co_return",     "co_yield",
        "decltype",         "default",       "delete",        "do",
        "double",           "dynamic_cast",  "else",          "enum",
        "explicit",         "export",        "extern",        "false",
        "float",            "for",           "friend",        "goto",
        "if",               "import",        "inline",        "int",
        "long",             "module",        "mutable",       "namespace",
        "new",              "noexcept",      "not",           "not_eq",
        "nullptr",          "operator",      "or",            "or_eq",
        "private",          "protected",     "public",        "register",
        "reinterpret_cast", "requires",      "return",        "short",
        "signed",           "sizeof",        "static",        "static_assert",
        "static_cast",      "struct",        "switch",        "synchronized",
        "template",         "this",          "thread_local",  "throw",
        "true",             "try",           "typedef",       "typeid",
        "typename",         "union",         "unsigned",      "using",
        "virtual",          "void",          "volatile",      "wchar_t",
        "while",            "xor",           "xor_eq",        "function",
        "constructor"
    ];
    static Keywords_GML_Start = Scanner.Keywords.length - 2;

    static Directives = [
        "#define", "#elif",   "#else",
        "#endif",  "#error",  "#if",
        "#ifdef",  "#ifndef", "#include",
        "#line",   "#pragma", "#undef",
        "#macro",  "#region", "#endregion"
    ];
    static Directives_GML_Start = Scanner.Directives.length - 3;

    scan() {
        let artifact_count = 0;
        while (!this.end()) {
            this.Start = this.Index;

            const token = this.scanToken();
            if (token) {
                if (token.Type === "Artifact") artifact_count++;
                this.Tokens.push(token);
            }
        }
        this.Tokens.push(this.token("EndFile", undefined));
        Logger.info(`Scanned ${this.Line - 1} lines and read ${this.Tokens.length} tokens (${artifact_count} unknown tokens)`);
        return this.Tokens;
    }

    token(type, literal) {
        if (!literal) return new Token(type, this.Content.slice(this.Start, this.Index), this.Start, this.Start - this.LineStart, this.Line);
        return new Token(type, literal, this.Start, this.Start - this.LineStart, this.Line);
    }

    token_auto(fallback=undefined) {
        const literal = this.Content.slice(this.Start, this.Index), name = Token.name(literal) ?? fallback;
        if (!name) throw `Could not determine type for token at Ln ${this.Line}, Col ${this.Start - this.LineStart}`;
        return new Token(name, literal, this.Start, this.Start - this.LineStart, this.Line);
    }

    scanToken() {
        const char = this.advance();
        switch (char) {
            case " ": case "\t": case "\r": return undefined;
            case "!": this.match("="); break;
            case "=": this.match("="); break;
            case "%": this.match("="); break;
            case "^": this.match("="); break;
            case ":": this.match(":"); break;
            case "*": this.match("="); break;
            case ";": if (!Configuration.KEEP_SEMICOLONS) return undefined;
            case "&": if (!this.match("&")) this.match("="); break;
            case "|": if (!this.match("|")) this.match("="); break;
            case "+": if (!this.match("=")) this.match("+"); break;
            case ".": if (!this.match("..")) this.match("*"); break;
            case "<": if (!this.match("<=")) if (!this.match("<")) this.match("="); break;
            case ">": if (!this.match(">=")) if (!this.match(">")) this.match("="); break;
            case "-": if (!this.match(">*")) if (!this.match(">")) if (!this.match("=")) this.match("-"); break;
            // i'm not supporting spaceship operators, sorry

            case "\"": {
                const line_base = this.Line;
                while ((this.peek() !== "\"" || this.peek(-1) === "\\") && !this.end()) {
                    if (this.GML) {
                        if (this.peek() === "\n") {
                            this.Line++;
                        }
                    }
                    this.advance();
                }

                if (this.end()) {
                    throw `Could not find terminating double-quote for string at Ln ${line_base}`;
                }

                this.advance();
                const ret = this.token("String", this.Content.slice(this.Start + 1, this.Index - 1));
                this.LineStart = this.Index;
                return ret;
            }

            case "'": {
                const line_base = this.Line;
                while (this.peek() !== "'" && !this.end()) {
                    if (this.peek() === "\n") {this.Line++; this.LineStart = this.Index;}
                    this.advance();
                }

                if (this.end()) {
                    throw `Could not find terminating quote for char at Ln ${line_base}`;
                }

                this.advance();
                const ret = this.token("Character", this.Content.slice(this.Start + 1, this.Index - 1));
                this.LineStart = this.Index;
                return ret;
            }

            case "/": {
                if (this.match("/")) {
                    while (!this.end()) {
                        if (this.advance() === "\n") {
                            this.Line++;
                            break;
                        }
                    }
                    const ret = (Configuration.KEEP_COMMENTS ? this.token("Comment") : undefined);
                    this.LineStart = this.Index;
                    return ret;
                } else if (this.match("*")) {
                    while (!this.end()) {
                        if (this.peek() === "\n") {
                            this.Line++;
                        }
                        if (this.advance() === "*" && this.match("/")) break;
                    }
                    const ret = this.token("CommentMultiline");
                    this.LineStart = this.Index;
                    return (Configuration.KEEP_COMMENTS ? ret : undefined);
                }
                this.match("=");
                break;
            }

            case "#": {
                this.Index++;
                return this.identifier();
            }

            case "\n": {
                this.Line++;
                this.LineStart = this.Index;
                return undefined;
            }

            default: {
                if (this.digit(char)) return this.number(char);
                if (this.alpha(char)) return this.identifier();
                break;
            }
        }
        return this.token_auto("Artifact");
    }

    digit(char) {
        const code = char.charCodeAt(0);
        return (code >= 48 && code <= 57);
    }

    number(char) {
        let type = "Number";
        if (this.match("b")) {
            if (char !== "0") throw `Binary literal must start with 0`;
            type = "NumberBinary";
        } else {
            if (this.match("x")) {
                if (char !== "0") throw `Hexadecimal literal must start with 0`;

                while (!this.end()) {
                    const next = this.peek(), code = next.charCodeAt(0);
                    if (!this.digit(next) && !(code >= 65 && code <= 70) || (code >= 97 && code <= 102)) break;
                    this.advance();
                }
                return this.token("NumberHex", this.Content.slice(this.Start, this.Index));
            }
        }

        while (this.digit(this.peek())) this.advance();
        if ((this.peek() === "." || this.peek() == "_") && this.digit(this.peek(1))) {
            this.advance();
            while (this.digit(this.peek())) this.advance();
        }
        const literal = this.Content.slice(this.Start, this.Index);
        return this.token("Number", (type === "Number" ? parseFloat(literal) : literal));
    }

    alpha(char) {
        const code = char.charCodeAt(0);
        return (code >= 65 && code <= 90) || (code >= 97 && code <= 122) || code === 95;
    }

    alpha_num(char) {
        return this.digit(char) || this.alpha(char);
    }

    identifier() {
        while (this.alpha_num(this.peek())) this.advance();

        const ident = this.Content.slice(this.Start, this.Index);
        if (this.GML) {
            if (Scanner.Keywords.slice(0, Keywords_GML_Start).includes(ident)) return this.token("Keyword", ident);
            if (Scanner.Directives.slice(0, Directives_GML_Start).includes(ident)) return this.token("PreprocessorDirective", ident);
        } else {
            if (Scanner.Keywords.includes(ident)) return this.token("Keyword", ident);
            if (Scanner.Directives.includes(ident)) return this.token("PreprocessorDirective", ident);
        }
        
        return this.token("Identifier", undefined);
    }

    end(offset=0) {
        return this.Index + offset >= this.Length;
    }

    advance() {
        return this.Content.charAt(this.Index++);
    }

    peek(offset=0) {
        if (this.end(offset)) return "";
        return this.Content.charAt(this.Index + offset);
    }

    match(val) {
        if (this.end()) return false;
        if (this.Content.slice(this.Index, this.Index + val.length) !== val) return false;

        this.Index += val.length;
        return true;
    }
}

module.exports = Scanner;
if (!global["__codegen_main"]) if (!global["__codegen_warn"]) {global["__codegen_warn"]=1;console.error("Please execute the program by running main.js");}