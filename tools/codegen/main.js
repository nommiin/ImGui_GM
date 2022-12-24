global["__codegen_main"] = true;
const Program = require("./Program"), Logger = require("./Logger");

//try {
    const start = performance.now();
    if (Program.main("dll\\imgui.cpp", "extensions\\ImGui_GM\\ImGui_GM.yy", "scripts\\ImGui\\ImGui.gml") === false) {
        throw `An unknown error has occured`;
    }
    Logger.info(`Script execution completed successfully in ${Math.round(performance.now() - start)}ms`);
    process.exit(0);
//} catch (e) {
    Logger.error(e);
    process.exit(1);
//}