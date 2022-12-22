const Logger = require("./util/Logger");

const GML = true;

const Keywords = [
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
    "while",            "xor",           "xor_eq",
    "function",         "constructor"
];
if (GML) Keywords.push("function", "constructor");

const Directives = [
    "#define", "#elif",   "#else",
    "#endif",  "#error",  "#if",
    "#ifdef",  "#ifndef", "#include",
    "#line",   "#pragma", "#undef",
];
if (GML) Keywords.push("#macro",  "#region", "#endregion");

class Token {
    constructor(type, literal, index, col, line) {
        this.Type = type;
        this.Literal = literal;
        this.Index = index;
        this.Column = col;
        this.Line = line;
    }
}

class Scanner {
    constructor(content) {
        this.Content = content;
        this.Length = content.length;
        this.Tokens = [];

        this.Index = 0;
        this.Start = 0;
        this.Line = 1;
        this.LineStart = 0;
    }

    scan() {
        while (!this.end()) {
            this.Start = this.Index;

            const token = this.scanToken();
            if (token) {
                const len = this.Tokens.length;
                if (len % 100 === 0) {
                    console.log(`push token #${len}: ${token.Type} (${token.Literal})`);
                }
                this.Tokens.push(token);
            }
        }
        this.Tokens.push(this.token("EndFile", undefined));
        return this.Tokens;
    }

    token(type, literal) {
        if (!literal) return new Token(type, this.Content.slice(this.Start, this.Index), this.Start, this.Start - this.LineStart, this.Line);
        return new Token(type, literal, this.Start, this.Start - this.LineStart, this.Line);
    }

    scanToken() {
        const char = this.advance();
        switch (char) {
            case "(": return this.token("LeftParentheses");
            case ")": return this.token("RightParentheses");
            case "{": return this.token("LeftBrace");
            case "}": return this.token("RightBrace");
            case "[": return this.token("LeftBracket");
            case "]": return this.token("RightBracket");
            case "?": return this.token("QuestionMark");
            case "~": return this.token("BinaryInvert");
            case ";": return this.token("Semicolon");
            case ",": return this.token("Comma");

            case ":": {
                if (this.match(":")) return this.token("ScopeResolver");
                return this.token("Colon");
            }

            case ".": {
                if (this.match("..")) return this.token("Arguments");
                if (this.match("*")) return this.token("PointerToMember");
                return this.token("Period");
            }

            case "-": {
                if (this.match(">*")) return this.token("PointerToMember");
                if (this.match(">")) return this.token("PointerAccess");
                if (this.match("=")) return this.token("AssignSubtract");
                if (this.match("-")) return this.token("Decrement");
                return this.token("Minus");
            }

            case "+": {
                if (this.match("=")) return this.token("AssignAdd");
                if (this.match("+")) return this.token("Increment");
                return this.token("+");
            }

            case "*": {
                if (this.match("=")) return this.token("AssignMultiply");
                return this.token("Asterisk");
            }

            case "/": {
                if (this.match("/")) {
                    while (!this.end()) {
                        if (this.advance() === "\n") {
                            this.Line++;
                            break;
                        }
                    }
                    const ret = this.token("Comment");
                    this.LineStart = this.Index;
                    return ret;
                } else if (this.match("*")) {
                    while (!this.end()) {
                        if (this.peek() === "\n") {
                            this.Line++;
                        }
                        if (this.advance() === "*" && this.match("/")) break;
                    }
                    const ret = this.token("Multiline");
                    this.LineStart = this.Index;
                    return ret;
                } else if (this.match("=")) return this.token("AssignDivide");
                return this.token("Divide");
            }

            case "%": {
                if (this.match("=")) return this.token("AssignModulo");
                return this.token("Modulo");
            }

            case "^": {
                if (this.match("=")) return this.token("AssignBinaryXor");
                return this.token("BinaryXor");
            }

            case "&": {
                if (this.match("&")) return this.token("LogicalAnd");
                if (this.match("=")) return this.token("AssignBinaryAnd");
                return this.token("BinaryAnd");
            }

            case "|": {
                if (this.match("|")) return this.token("LogicalOr");
                if (this.match("=")) return this.token("AssignBinaryOr");
                return this.token("BinaryOr");
            }

            case "!": {
                if (this.match("=")) return this.token("CompareNot");
                return this.token("LogicalNot");
            }

            case "=": {
                if (this.match("=")) return this.token("CompareEqual");
                return this.token("Assign");
            }

            case "<": {
                if (this.match("<=")) return this.token("AssignBinaryShiftLeft");
                if (this.match("<")) return this.token("BinaryShiftLeft");
                if (this.match("=")) return this.token("CompareLessThanEqual");
                return this.token("LessThan");
            }

            case ">": {
                if (this.match(">=")) return this.token("AssignBinaryShiftRight");
                if (this.match(">")) return this.token("BinaryShiftRight");
                if (this.match("=")) return this.token("CompareGreaterThanEqual");
                return this.token("GreaterThan");
            }

            case "\"": {
                while ((this.peek() !== "\"" || this.peek(-1) === "\\") && !this.end()) {
                    if (GML) {
                        if (this.peek() === "\n") {
                            this.Line++;
                        }
                    }
                    this.advance();
                }

                if (this.end()) {
                    throw "Unterminated string!";
                }

                this.advance();
                const ret = this.token("String", this.Content.slice(this.Start + 1, this.Index - 1));
                this.LineStart = this.Index;
                return ret;
            }

            case "'": {
                while (this.peek() !== "'" && !this.end()) {
                    if (this.peek() === "\n") {this.Line++; this.LineStart = this.Index;}
                    this.advance();
                }

                if (this.end()) {
                    throw "Unterminated char!";
                }

                this.advance();
                const ret = this.token("Character", this.Content.slice(this.Start + 1, this.Index - 1));
                this.LineStart = this.Index;
                return ret;
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

            case " ": case "\t": case "\r": return undefined; 

            default: {
                if (this.digit(char)) return this.number(char);
                if (this.alpha(char)) return this.identifier();
                return this.token("Artifact");
            }
        }
    }

    digit(char) {
        const code = char.charCodeAt(0);
        return (code >= 48 && code <= 57);
    }

    number(char) {
        let type = "Number";
        if (this.match("b")) {
            if (char !== "0") throw `Binary literal must start with 0`;
            type = "Binary";
        } else {
            if (this.match("x")) {
                if (char !== "0") throw `Hexadecimal literal must start with 0`;

                while (!this.end()) {
                    const next = this.peek(), code = next.charCodeAt(0);
                    if (!this.digit(next) && !(code >= 65 && code <= 70) || (code >= 97 && code <= 102)) break;
                    this.advance();
                }
                return this.token("Hex", this.Content.slice(this.Start, this.Index));
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
        if (Keywords.includes(ident)) return this.token("Keyword", ident);
        if (Directives.includes(ident)) return this.token("PreprocessorDirective", ident);
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