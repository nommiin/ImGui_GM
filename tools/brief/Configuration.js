/** 
 * Written by Nommiin - https://github.com/Nommiin
 */
class Configuration {
    /**
     * @description The name of the program, used by Logger.js
     */
    static PROGRAM_NAME = "brief";

    /**
     * @description If true, FileEditor will write changes to files with ".test" appended to their filename
     */
    static USE_TEST = true;

    /**
     * @description If true, Processor will save processed tokens to "tokens.json" token; useful for debugging
     */
    static WRITE_TOKENS = true;

    /**
     * @description Spacing character used for writing generated code
     */
    static SPACING = "    ";

    /**
     * @description If true, scanner class will retain "Semicolon" tokens
     */
    static KEEP_SEMICOLONS = false;

    /**
     * @description If true, scanner class will retain "Comment" and "CommentMultiline" tokens
     */
    static KEEP_COMMENTS = false;

    /**
     * @description Keyword/macro used for marking wrapper functions
     */
    static WRAPPER_DEF = "GMFUNC";
}

module.exports = Configuration;
if (!global["__program_main"]) if (!global["__program_warn"]) {global["__program_warn"]=1;console.error("Please execute the program by running main.js");}