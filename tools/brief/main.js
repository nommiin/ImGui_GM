global["__program_main"] = true;
const Program = require("./Program");
const Logger = require("./Logger");

/**
 * Entrypoint for node.js, only measures performance and catches exceptions
 * Actual program entrypoint is in Program.main
 * 
 * Written by Nommiin - https://github.com/Nommiin
 */
const args = ["dll/", "extensions/ImGui_GM/ImGui_GM.yy", "scripts/ImGui/ImGui.gml"];
try {
    const start = performance.now();
    if (Program.main(...args) === false) {
        throw `An unknown error has occured`;
    }
    Logger.info(`Script execution completed successfully in ${Math.round(performance.now() - start)}ms`);
} catch (e) {
    Logger.error(`An error has occured:\n- ${e}`);
    process.exit(1);
}
process.exit(0);