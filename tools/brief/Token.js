/**
 * Generic container for a parsed token
 * Token.name static method can be used to convert individual characters into token names
 * 
 * Written by Nommiin - https://github.com/Nommiin 
 */
class Token {
    /**
     * @param {string} type The type of token
     * @param {any} literal The literal value of the token, depends on type
     * @param {number} index The position of the token in the file as a whole
     * @param {number} col The position of the token on the current line
     * @param {number} line The line (1-index'd) of the token
     */
    constructor(type, literal, index, col, line) {
        this.Type = type;
        this.Literal = literal;
        this.Index = index;
        this.Column = col;
        this.Line = line;
        this.Children = undefined;
    }

    static name(val) {
        switch (val) {
            case "(":   return "LeftParentheses";
            case ")":   return "RightParentheses";
            case "{":   return "LeftBrace";
            case "}":   return "RightBrace";
            case "[":   return "LeftBracket";
            case "]":   return "RightBracket";
            case "?":   return "QuestionMark";
            case "~":   return "BinaryInvert";
            case ";":   return "Semicolon";
            case ",":   return "Comma";
            case "::":  return "ScopeResolver";
            case ":":   return "Colon";
            case "...": return "Arguments";
            case ".*":  return "PointerToMember";
            case ".":   return "Period";
            case "->*": return "PointerToMember";
            case "->":  return "PointerAccess";
            case "-=":  return "AssignSubtract";
            case "--":  return "Decrement";
            case "-":   return "Minus";
            case "+=":  return "AssignAdd";
            case "++":  return "Increment";
            case "+":   return "Plus";
            case "*=":  return "AssignMultiply";
            case "*":   return "Asterisk";
            case "//":  return "Comment";
            case "/*":  return "MultilineComment";
            case "/":   return "Divide";
            case "%":   return "AssignModulo";
            case "%":   return "Modulo";
            case "^=":  return "AssignBinaryXor";
            case "^":   return "BinaryXor";
            case "&&":  return "LogicalAnd";
            case "&=":  return "AssignBinaryAnd";
            case "&":   return "BinaryAnd";
            case "||":  return "LogicalOr";
            case "|=":  return "AssignBinaryOr";
            case "|":   return "BinaryOr";
            case "!=":  return "CompareNot";
            case "!":   return "LogicalNot";
            case "==":  return "CompareEqual";
            case "=":   return "Assign";
            case "<<=": return "AssignBinaryShiftLeft";
            case "<<":  return "BinaryShiftLeft";
            case "<=":  return "CompareLessThanEqual";
            case "<":   return "LessThan";
            case ">>=": return "AssignBinaryShiftRight";
            case ">>":  return "BinaryShiftRight";
            case ">=":  return "CompareGreaterThanEqual";
            case ">":   return "GreaterThan";

            // Helpers
            case "()": return "ParenthesesPair";
            case "[]": return "BracketPair";
            case "{}": return "BracePair";
        }
        if (val.startsWith("#")) return "PreprocessorDirective";
        return undefined;
    }
}

module.exports = Token;
if (!global["__program_main"]) if (!global["__program_warn"]) {global["__program_warn"]=1;console.error("Please execute the program by running main.js");}