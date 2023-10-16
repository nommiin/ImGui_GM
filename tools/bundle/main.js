const fs = require("node:fs");
const path = require("node:path");
const AdmZip = require("adm-zip");
const Bundle = require("./bundle.json");
const { globSync } = require("glob");

/**
 * Written by Nommiin - https://github.com/Nommiin
 */

class Logger {
    static info(msg) {
        console.log(`[bundle - INFO]: ${msg}`);
    }

    static error(msg) {
        console.log(`[bundle - ERROR]: ${msg}`);
    }
}

class Program {
    static parse(part, extra) {
        let find = part;
        for(const name in Bundle.Variables) {
            const replace = Bundle.Variables[name];
            find = find.replaceAll("${" + name + "}",  extra ? extra(replace) : replace);
        }
        return find;
    }

    static main(base, output) {
        if (!fs.existsSync(base)) throw `Could not run program, could not find base package file at "${base}"`;
        const extension = new AdmZip(base);
        
        if (!fs.existsSync(output)) fs.mkdirSync(output);
        extension.extractAllTo(output);
        Logger.info(`Extracted ${extension.getEntryCount()} files to output directory "${output}"`);

        const replace = {};
        for(const find in Bundle.Replace) {
            replace[this.parse(find)] = this.parse(Bundle.Replace[find]);
        }

        const rules = Bundle.Include;
        if (!rules) throw `Could not run program, include rules in "bundle.json" are undefined`;

        const copy = [];
        for(let i = 0; i < rules.length; i++) {
            copy.push(...globSync(rules[i]).map(e => {
                fs.copyFileSync(e, output + e);
                return path.normalize(output + e);
            }));
        }
        Logger.info(`Retrieved ${copy.length} files to copy into output`);

        const import_base = Bundle.Import;
        if (import_base) {
            for(let i = 0; i < import_base.length; i++) {
                const file = output + import_base[i];
                if (!fs.existsSync(file)) throw `Could not run program, base file "${import_base[i]}" does not exist in "${output}"`;
                copy.push(file);
            }
            Logger.info(`Retrieved ${import_base.length} imported files`);
        }

        for(let i = 0; i < copy.length; i++) {
            const name = copy[i];
            if (!fs.existsSync(name)) throw `Could not run program, file "${name}" does not exist`;

            const ext = path.extname(name);
            switch (ext) {
                case ".gml":
                case ".yy":
                case ".yyp":
                case ".json": {
                    let data = fs.readFileSync(name, {encoding: "utf-8"});
                    for(const find in replace) {
                        let count = 0;
                        while (data.indexOf(find) > -1) {
                            data = data.replace(find, replace[find]);
                            count++;
                        }

                        if (count > 0) {
                            Logger.info(`${find} -> ${replace[find]} in "${name}"`);
                        }
                    }
                    fs.writeFileSync(name, data, {encoding: "utf-8"});
                    break;
                }
            }
        }

        const out = new AdmZip();
        out.addLocalFolder(output);
        out.writeZip(this.parse(Bundle.Target ?? output + "package.yymps", e => e.replaceAll(".", "_")));
        fs.rmSync(output, { recursive: true, force: true });
    }
}

// Bundle.Base should be pointing to v1.0.10 from packaged/, since it was prior to any breaking project formats
const args = [Bundle.Base, "tools/bundle/output/"];
try {
    if (process.cwd().endsWith("dll")) process.chdir("../");
    
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