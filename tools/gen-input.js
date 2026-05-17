const fs = require("node:fs");

class FileReader {
    constructor(file) {
        if (!fs.existsSync(file)) {
            throw `Could not create FileReader for file that does not exist: ${file}`;
        }
        
        this.File = file;
        this.Content = fs.readFileSync(file, {encoding: "utf-8"}).split("\n");
        this.Index = 0;
    }

    getLength() {
        return this.Content.length;
    }

    getCurrent() {
        return this.Content[this.Index];
    }

    getNext() {
        return this.Content[this.Index++];
    }

    peekNext() {
        return this.Content[this.Index + 1];
    }

    atEnd() {
        return this.Index >= this.getLength();
    }
}

try {
    const runtime = "C:/ProgramData/GameMakerStudio2-Beta/Cache/runtimes/runtime-2023.100.0.264/";
    (function(fnames, imgui) {
        let str = [];
        for(let i = 0; i < fnames.length; i++) {
            const key = fnames[i].slice(3);
            let name = key[0].toUpperCase() + key.slice(1);

            switch (fnames[i]) {
                case "vk_lcontrol": name = "LeftCtrl"; break;
                case "vk_rcontrol": name = "RightCtrl"; break;
                case "vk_lshift": name = "LeftShift"; break;
                case "vk_rshift": name = "RightShift"; break;
                case "vk_lalt": name = "LeftAlt"; break;
                case "vk_ralt": name = "RightAlt"; break;
                case "vk_alt":
                case "vk_shift":
                    case "control": continue;
            }

            str.push(`ImGui.__Mapping[ImGuiKey.ImGuiKey_${name}] = vk_${key};`);
        }

        for(let i = 0; i < 10; i++) {
            str.push(`ImGui.__Mapping[ImGuiKey.ImGuiKey_${i + 1}] = ord("${i + 1}");`);
        }

        for(let i = 65; i < 91; i++) {
            const char = String.fromCharCode(i);
            str.push(`ImGui.__Mapping[ImGuiKey.ImGuiKey_${char}] = ord("${char}");`);
        }

        console.log(str.join("\n"));
        // Get 
        //console.log(fnames.map(e => `ImGui.__Mapping[${e}] = ImGuiKey.ImGuiKey_`).join("\n"));
    })(fs.readFileSync(runtime + "fnames", {encoding: "utf-8"}).split("\n").filter(e => e.startsWith("vk_") && e.endsWith("#")).map(e => e.slice(0, -1)), new FileReader("../dll/thirdparty/imgui/imgui.h"));
} catch (e) {
    console.error(`Could not run gen-input.js, an exception has occured:\n- ${e}`);
    process.exit(1);
}
process.exit(0);


/*, runtime = "C:/ProgramData/GameMakerStudio2-Beta/Cache/runtimes/runtime-2023.100.0.264/";
const fnames = fs.readFileSync(runtime + "fnames", {encoding: "utf-8"}).split("\n");
const keys = fnames.filter(e => e.startsWith("vk_") && e.endsWith("#"));

const imgui = fs.readFileSync("../dll/thirdparty/imgui/imgui.h", {encoding: "utf-8"}).split("\n");
for(let i = 0; i < imgui.length; i++) {
    const line = imgui[i].trim();
    if (line.startsWith("enum ImGuiKey")) {
        const next = imgui[++i].trim();
        for(let j = i; j < imgui.length; j++) {
            const ending = imgui[j].trim();
            console.log(ending);
            if (ending.startsWith("};")) {
                console.log("ends at line " + j);
                break;
            }
        }
        console.log("found at line " + i);
        break;
    }
}

console.log(keys.length);
*/

