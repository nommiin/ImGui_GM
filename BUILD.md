# Build

## Prerequisites

- Visual Studio
- Node

## Steps

### Prepare VS Project

1. **Open this file before executing it** then run it if needed.
```bash
cd dll/
./copy_dependencies.bat
cd ..
```

2. Run `premake5 vs2022`
3. Open `dll/dll.sln` with Visual Studio. Build the solution (Ctrl + B) (Release or Debug configuration).
4. If you want to run the toolchain only: Run `node tools/brief/main.js`.
5. Open ImGui_GM.yyp in GameMaker.
> Note: You can rebuild solution in Visual Studio, and in GameMaker it will just reload it for you.

## Folder Structure
- dll/
  - [`main.cpp`](https://github.com/nommiin/ImGui_GM/blob/main/dll/main.cpp) for DLL initialization & IO/rendering logic
  - `gm/imgui_*_gm.cpp` for wrapped ImGui --> GM definitions

- scripts/
  - ImGui/
    - [`ImGui.gml`](https://github.com/nommiin/ImGui_GM/blob/main/scripts/ImGui/ImGui.gml) for ImGui static functions & internal IO/events
  - ImGui_Misc/
    - [`ImGui_Misc.gml`](https://github.com/nommiin/ImGui_GM/blob/main/scripts/ImGui_Misc/ImGui_Misc.gml) for classes and enum definitions and misc ImGui --> GM mapping
- tools/
  - [`brief/Program.js`](https://github.com/nommiin/ImGui_GM/blob/main/tools/brief/Program.js) for ImGui to GM binding generation

## Building Notes

<!-- TODO: Explain more about Toolchain -->

- Upon building inside of Visual Studio, the `tools/brief/main.js` post-build script will be called. This script collects any `.cpp` files ending in "`_gm.cpp`" (*Any uses of `GMFUNC` outside of files ending in `_gm.cpp` **will not** be read*) and parses out functions defined using the `GMFUNC` macro. These parsed functions are then added to the `extensions/ImGui_GM/ImGui_GM.yy` file and static methods are created in the `@section Binds` section of the `scripts/ImGui/ImGui.gml` file automatically. You can use the various macros to define attributes for wrapped functions and their arguments. See [`brief/Wrapper.js`](https://github.com/nommiin/ImGui_GM/blob/main/tools/brief/Wrapper.js)'s `modifier` method for how various attributes are handled.

## Bundling

- Bundling the package requires the bundle.json file specified as environment variable (for now):
- Example run:
  ```
  node tools/bundle/main.js
  NAME=bundle tools/bundle/main.js
  ```
