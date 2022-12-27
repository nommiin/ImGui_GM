class Configuration {
    // If true, FileEditor will write changes to files with ".test" appended to their filename
    static USE_TEST = true;

    // If true, Processor will save processed tokens to "tokens.json" token; useful for debugging
    static WRITE_TOKENS = true;

    // Spacing character used for writing generated code
    static SPACING = "    ";

    // Used by scanner class
    static KEEP_SEMICOLONS = false;
    static KEEP_COMMENTS = false;

    // Keyword/macro used for marking wrapper functions
    static WRAPPER_DEF = "GMFUNC";
}

module.exports = Configuration;
if (!global["__codegen_main"]) if (!global["__codegen_warn"]) {global["__codegen_warn"]=1;console.error("Please execute the program by running main.js");}