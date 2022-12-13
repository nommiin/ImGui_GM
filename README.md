# ImGui_GM
Experimental ImGui wrapper & bindings for GameMaker, heavily work-in-progress
![image](https://user-images.githubusercontent.com/6483989/207411258-d49b0569-397d-4c2d-9349-b434f8ef2a76.png)

# Reference
- dll/
  - [`main.cpp`](https://github.com/nommiin/ImGui_GM/blob/main/dll/main.cpp) for DLL initialization & IO/rendering logic
  - [`imgui_gm.cpp`](https://github.com/nommiin/ImGui_GM/blob/main/dll/imgui_gm.cpp) for ImGui->GML wrappers
  - thirdparty/
    - steamworks/
      - source/
        - Steamworks_vs/
          - Steamworks/
            - [`Extension_Interface.h`](https://github.com/YoYoGames/GMEXT-Steamworks/blob/main/source/Steamworks_vs/Steamworks/Extension_Interface.h) for `YYRunnerInterface` struct 
            - [`YYRValue.h`](https://github.com/YoYoGames/GMEXT-Steamworks/blob/main/source/Steamworks_vs/Steamworks/YYRValue.h) for `RValue` documentation 

# Building
*Using C++14 Standard, Windows SDK v10.0, built with Visual Studio Community 2022*

1. Run `copy_dependencies.bat` to copy required `.cpp` and `.h` files from `thirdparty/*` into `dll/`
2. Open `dll.sln` in Visual Studio (support for versions older than 2022 is unknown)
3. Build for x64, resulting `imgui_gm.dll` file should be automatically copied to `../extensions/ImGui_GM/imgui_gm.dll`
4. Open `ImGui_GM.yyp` and create a local package containing `ImGui_GM` (extension), `ImGui` (script), and `ImGui_Misc` (script)
5. Import local package into your game and create a controller object that calls `ImGui.__Initialize()` once, `ImGui.__Update()` every frame, and `ImGui.__Render()` in a draw event

# Usage (GameMaker)
***⚠️ HEADS UP: Ensure you're using a compatible runtime, see Compatibility header for more info***

1. Create a persistent object and call the following functions in their respective events:
  - `ImGui.__Initialize()` in the create event
  - `ImGui.__Update()` in any updating event (suggested: Begin Step)
  - `ImGui.__Render()` in any rendering event (suggested: Draw GUI)
  
2. Create an instance of the object at the start of your game, then call `ImGui.Begin` and `ImGui.End` in the step event to draw. Below is example GML for how to use the library.
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

# Compatibility
This extension makes extensive use of the changed `static` behavior in beta runtime v2023.100.0.264 and onward. Be sure to use a runtime that has these changes in them, otherwise usage may not work as expected. If you're unsure about if your runtime supports these new behaviours or not, check if the `static_get` function exists; if so, you're good! Otherwise, you'll likely need to upgrade (or switch to [the beta](https://gms.yoyogames.com/release-notes-runtime-NuBeta.html))

At the time of writing, the aforementioned changes to `static` are only avaliable on the beta branch of GameMaker; using stable builds currently unsupported

*Last Updated: 12/13/2022*

# Coverage
This extension is heavily WIP, but wrapped functions can be found in the [`imgui_gm.cpp`](https://github.com/nommiin/ImGui_GM/blob/main/dll/imgui_gm.cpp) file and called as static functions via the `ImGui` class
- `ImGui.Begin` -> `boolean`
- `ImGui.End` -> `void`
- `ImGui.Text` -> `void`
- `ImGui.InputText` -> `string`
- `ImGui.Button` -> `boolean`

The goal is to have most functions in the `ImGui::` namespace exposed to GML, ideally with direct calls to the ImGui functions (maybe auto generated?)

# Special Thanks
- [rousr](https://rou.sr/) for creating the ImGui binding for GM that inspired development of this
- [@nkrapivin](https://github.com/nkrapivin) for providing general assistance with `YYRunnerInterface` magic
