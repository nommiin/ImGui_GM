global["__program_main"] = true;
const Processor = require("./Processor");
const Scanner = require("./Scanner");
const TokenReader = require("./TokenReader");
const FileEditor = require("./FileEditor");
const Configuration = require("./Configuration");

Configuration.WRITE_TOKENS = false;
// test function to convert processed C++ tokens to a .cpp file

console.log("Output: \"\n" + convert("dll/imgui_gm.cpp") + "\n\"");

function convert(file) {
    var tokens = new Processor(new Scanner(new FileEditor(file).Content).Tokens).get();

    let str = "";
    for(let i = 0; i < tokens.length; i++) {
        str += convert_token(tokens[i]);
    }
    return str;
}

function convert_tokens(tokens) {
    let str = "";
    for(let i = 0; i < tokens.length; i++) {
        str += convert_token(tokens[i]);
    }
    return str;
}

function convert_token(token) {
    let front = undefined, back = undefined, str = "";
    switch (token.Type) {
        case "IncludeProgram": return `#include "${token.Literal}"\n`;
        case "IncludeStandard": return `#include <${token.Literal}>\n`;
        case "Cast": return `(${token.Literal})`;

        case "FunctionCall": {
            front = token.Literal + "(";
            back = ")";
            break;
        }

        case "FunctionDef": {
            front = token.Literal + "(";
        }

        case "BracketPair": {
            front = "[";
            back = "]";
            break;
        }

        case "BracePair": {
            front = "{\n";
            back = "\n}\n";
            break;
        }

        case "ParenthesesPair": {
            front = "(";
            back = ")";
            break;
        }

        default: {
            break;
        }
    }
    if (token.Children) str += convert_tokens(token.Children);
    return (front ?? "") + str + (back ?? "");
}