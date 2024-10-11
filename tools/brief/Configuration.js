/**
 * Written by Nommiin - https://github.com/Nommiin
 */
class Configuration {
    /**
     * @description The Github repository URL.
     */
    static REPOSITORY_URL = "https://github.com/nommiin/ImGui_GM"

    /**
     * @description The Github repository name.
     */
    static REPOSITORY_NAME = "nommiin/ImGui_GM";

    /**
     * @description The name of the program, used by Logger.js
     */
    static PROGRAM_NAME = "brief";

    /**
     * @description Suppress warning types in Logger.js
     *
     * Examples:
     *      true
     *      ["W001", "H002",]
     *      "W*"
     */
    static LOGGER_IGNORE_WARNS = [
        "H000",
        "W001",
        "W002",
    ];

    /**
     * @description If true, FileEditor will write changes to files with ".test" appended to their filename
     */
    static USE_TEST = false;

    /**
     * @description If true, Processor will save processed tokens to "tokens.json" token; useful for debugging
     */
    static WRITE_TOKENS = false;

    /**
     * @description Spacing character used for writing generated code
     */
    static SPACING = "    ";

    /**
     * @description If true, scanner class will retain "Semicolon" tokens
     *              For pretty token flattening, keep this as true
     */
    static KEEP_SEMICOLONS = true;

    /**
     * @description If true, scanner class will retain "Comment" and "CommentMultiline" tokens
     */
    static KEEP_COMMENTS = false;

    /**
     * @description Keyword/macro used for marking wrapper functions
     */
    static WRAPPER_DEF = "GMFUNC";

    /**
     * @description If true, GML writer will call forceinline for each static method
     */
    static FORCEINLINE = false;

    /**
     * @description If true, program will generate a coverage report in COVERAGE.md
     */
    static WRITE_REPORT = true;

    /**
     * @description If true, program will generate badges in .github/badges/
     */
    static WRITE_BADGES = true;

    /**
     * @description If true, program will generate a .gml script containing snake-case functions for ImGui_GM
     */
    static WRITE_SNAKE = true;

    /**
     * @description If true, program will generate a .js file containing documentation and information for all functions
     */
    static WRITE_DOCS = false;
}

module.exports = Configuration;
if (!global["__program_main"]) if (!global["__program_warn"]) {global["__program_warn"]=1;console.error("Please execute the program by running main.js");}