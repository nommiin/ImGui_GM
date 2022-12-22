const fs = require("node:fs"), path = require("node:path"), crypto = require("node:crypto"), Logger = require("./util/Logger"), Configuration = require("./Configuration");

class FileEditor {
    /**
     * @param {string} file File to load
     */
    constructor(file) {
        this.File = path.normalize(file);
        this.Name = path.basename(this.File);
        if (!fs.existsSync(this.File)) {
            throw `Failed to load file: "${this.Name}", file does not exist at ${this.File}`;
        }

        this.Content = fs.readFileSync(this.File, {encoding: "utf-8"});
        this.Hash = crypto.createHash("md5").update(this.Content).digest("hex");
        this.Size = this.Content.length;
        this.Lines = (this.Content.match(/\n/g) ?? []).length;
        this.Changed = false;
        Logger.info(`Successfully loaded file "${this.Name}" (${this.Lines} lines, ${this.Content.length} characters, MD5: ${this.Hash})`);
    }

    /**
     * Writes the given value to the start of the file
     * @param {string} value The value to write
     */
    prepend(value) {
        this.Content = value + this.Content;
        this.Changed = true;
    }

    /**
     * Writes the given value to the end of the file
     * @param {string} value The value to write
     */
    append(value) {
        this.Content += value;
        this.Changed = true;
    }

    /**
     * Updates content, changed, and hash values if given value is unique. Does not write to disk
     * @param {string} value The value to use
     * @returns {boolean} If the value has been updated
     */
    update(value) {
        const hash = crypto.createHash("md5").update(value).digest("hex");
        if (hash === this.Hash) {
            return false;
        }

        this.Content = value;
        this.Changed = true;
        this.Hash = hash;
        return true;
    }

    /**
     * Writes content to disk if changes were made 
     * @returns {boolean} If the file was written
     */
    commit() {
        if (!this.Changed) {
            Logger.info(`Skipping write to file "${this.Name}", no changes have been made`);
            return false;
        }

        try {
            fs.writeFileSync(this.File + (Configuration.USE_TEST ? ".test" : ""), this.Content, {encoding: "utf-8"});
            this.Hash = crypto.createHash("md5").update(this.Content).digest("hex");
        } catch (e) {
            Logger.error(`Failed to write file "${this.Name}", an error has occured:\n- ${e}`);
            return false;
        }

        const char_diff = this.Content.length - this.Size;
        const line_count = (this.Content.match(/\n/g) ?? []).length;
        const line_diff = line_count - this.Lines;
        Logger.info(`Successfully wrote file "${this.Name}" (${line_diff < 0 ? "" : (line_diff === 0 ? "±" : "+")}${line_diff} line${line_diff !== 1 ? "s" : ""}, ${char_diff < 0 ? "" : (char_diff === 0 ? "±" : "+")}${char_diff} character${char_diff !== 1 ? "s" : ""}, MD5: ${this.Hash})`)
        this.Size = this.Content.length;
        this.Lines = line_count;
        this.Changed = false;
        return true;
    }
}

module.exports = FileEditor;
if (!global["__codegen_main"]) if (!global["__codegen_warn"]) {global["__codegen_warn"]=1;console.error("Please execute the program by running main.js");}