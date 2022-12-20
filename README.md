# ImGui_GM
Experimental ImGui wrapper & bindings for GameMaker, heavily work-in-progress
![image](https://user-images.githubusercontent.com/6483989/207724319-a734111a-eee9-497d-a9ef-9689353482df.png)


# Reference
- dll/
  - [`main.cpp`](https://github.com/nommiin/ImGui_GM/blob/main/dll/main.cpp) for DLL initialization & IO/rendering logic
  - [`imgui_gm.cpp`](https://github.com/nommiin/ImGui_GM/blob/main/dll/imgui_gm.cpp) for ImGui->GML wrappers
  - thirdparty/steamworks/source/Steamworks_vs/Steamworks/
    - [`Extension_Interface.h`](https://github.com/YoYoGames/GMEXT-Steamworks/blob/main/source/Steamworks_vs/Steamworks/Extension_Interface.h) for `YYRunnerInterface` struct 
    - [`YYRValue.h`](https://github.com/YoYoGames/GMEXT-Steamworks/blob/main/source/Steamworks_vs/Steamworks/YYRValue.h) for `RValue` documentation 
- scripts/
  - ImGui/
    - [`ImGui.gml`](https://github.com/nommiin/ImGui_GM/blob/main/scripts/ImGui/ImGui.gml) for ImGui static & internal IO/events
  - ImGui_Misc/
    - [`ImGui_Misc.gml`](https://github.com/nommiin/ImGui_GM/blob/main/scripts/ImGui_Misc/ImGui_Misc.gml) for ImGuiKey to GM input mapping
- tools/
  - [`gen-bindings.js`](https://github.com/nommiin/ImGui_GM/blob/main/tools/gen-bindings.js) for ImGui to GM binding generation

# Building
*Using C++14 Standard, Windows SDK v10.0, Node.js v16.18.0, built with Visual Studio Community 2022*

1. Run `copy_dependencies.bat` to copy required `.cpp` and `.h` files from `thirdparty/*` into `dll/`
2. Run `gen-bindings.js` via Node from the root directory to automatically create externals for the ImGui_GM extension and binding functions in the ImGui script
2. Open `dll.sln` in Visual Studio (support for versions older than 2022 is unknown)
3. Build for x64, resulting `imgui_gm.dll` file should be automatically copied to `../extensions/ImGui_GM/imgui_gm.dll`
4. Open `ImGui_GM.yyp` and create a local package containing `ImGui_GM` (extension), `ImGui` (script), and `ImGui_Misc` (script)
5. Import local package into your game and create a controller object that calls `ImGui.__Initialize()` once, `ImGui.__Update()` every frame, and `ImGui.__Render()` in a draw event

# Usage (GameMaker)
***⚠️ HEADS UP: Ensure you're using a compatible runtime, see Compatibility heading below for more info***

0. Import build of ImGui_GM locally or from [releases](https://github.com/nommiin/ImGui_GM/releases/tag/build)
1. Create a persistent object and call the following functions in their respective events:
  - `ImGui.__Initialize()` in the create event
  - `ImGui.__Update()` in any updating event (suggested: Begin Step)
  - `ImGui.__Render()` in any rendering event (suggested: Draw GUI)
  
2. Create an instance of the object at the start of your game, then call `ImGui.Begin` and `ImGui.End` in the step event to draw. Below is example GML for how to use the library. (*Note:* This example probably won't be updated often)

```gml
ImGui.ShowAboutWindow();

if (ImGui.Begin("Test Window", true)) {
	ImGui.Text("Hello World :3");
	str = ImGui.InputText("An Input", str);
	
	if (ImGui.Button("Press Me")) {
		show_message(string("your input was: {0}", str));	
	}
	
	ImGui.End();
}
```

3. See **Coverage** heading below or the ImGui script in project or `imgui_gm.cpp` for ImGui -> GML bindings

# Compatibility
### Platform
Currently, this extension makes heavy usage of the ability to pass a device handler and context to extensions... unfortunately, this functionality **is only avaliable for [DX11 targets](https://manual.yoyogames.com/index.htm#t=GameMaker_Language%2FGML_Reference%2FOS_And_Compiler%2Fos_get_info.htm)**. 

In the interim, I've created an experimental [`ImGui_Translator`](https://github.com/nommiin/ImGui_GM/blob/main/scripts/ImGui_Translator/ImGui_Translator.gml) class contains a buffer that gets parts of `ImDrawData` copied into it every frame. Whilst this still relies on the DX11, there could be room to handle the draw data via GML but due to GameMaker's lack of support for index buffers this seems to be a bigger task than expected.

### Runtime
This extension makes extensive use of the changed `static` behavior in beta runtime v2023.100.0.264 and onward. Be sure to use a runtime that has these changes in them, otherwise usage may not work as expected. If you're unsure about if your runtime supports these new behaviours or not, check if the `static_get` function exists; if so, you're good! Otherwise, you'll likely need to upgrade (or switch to [the beta](https://gms.yoyogames.com/release-notes-runtime-NuBeta.html)). As a good rule of thumb, it's best to assume this project will be using the latest beta release of GameMaker. You can also check the .yyp file's metadata for an IDE version.

At the time of writing, the aforementioned changes to `static` are only avaliable on the beta branch of GameMaker; using stable builds currently unsupported

*Last Updated: 12/20/2022*

# Coverage
This extension is heavily WIP, but wrapped functions can be found in the [`imgui_gm.cpp`](https://github.com/nommiin/ImGui_GM/blob/main/dll/imgui_gm.cpp) file and called as static functions via the `ImGui` class

Using the [`tools/gen-bindings.js`](https://github.com/nommiin/ImGui_GM/blob/main/tools/gen-bindings.js) script, you can automatically create bindings for GameMaker by defining functions in `imgui_gm.cpp` using the `GMFUNC` macro, with the internal name as the only argument. Arguments retrieved with `YYGet_` will be reflected in GM and default values for arguments can be defined using the `GMDEFAULT` macro below the argument assignment. Functions defined using `GMFUNC` must contain at least one call to `ImGui::` (or use `GMOVERRIDE`) to infer naming for GameMaker.

# Notes
- Since some functions in `ImGui` accept pointers to booleans that can be changed in addition to a boolean return, I've added a `ret_flags` argument that allows you to provide a bitmask of what values to return. This argument tends to default to whatever value is returned from the function, so behaviour should reflect what is found in ImGui. As an example, providing `ImGuiReturnFlags.Both` as the `ret_flags` argument for `ImGui.Begin` will pack both the returned value from `ImGui::Begin` and the changed `open` value into the return value from `ImGui.Begin`. You can then use a bitwise AND to check if a given flag is true, as seen in the example below:
```
// Create
open = false;

// Step
if (open) {
    var ret = ImGui.Begin("My Window", open, ImGuiWindowFlags.None, ImGuiReturnFlags.Both);
    open = ret & ImGuiReturnFlags.Open;
	
    if (ret & ImGuiReturnFlags.Visible) {
        ImGui.Text("Hello from My Window!");
        ImGui.End();
    }
}
```

- Functions that accept an array of items as an argument (such as `ImGui.DragInt3`, `ImGui.SliderFloat2`, etc) will ***directly modify*** the given array. Keep this in mind when using them. Analogous functions that accept single elements (such as `ImGui.DrawInt`, `ImGui.SliderFloat`) ***will not*** make any changes directly to the value, and the return value should be used.

# Special Thanks
- [Omar Cornut](https://github.com/ocornut/) for creating [Dear ImGui](https://github.com/ocornut/imgui)
- [rousr](https://rou.sr/) for creating [ImGuiGML](https://imguigml.rou.sr/) which inspired development of this
- [@nkrapivin](https://github.com/nkrapivin) for providing general assistance with `YYRunnerInterface` magic
- [@kraifpatrik](https://github.com/blueburncz/GMD3D11)'s GMD3D11 for serving as reference on how to retrieve textures from GameMaker
