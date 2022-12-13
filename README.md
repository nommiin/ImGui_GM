# ImGui_GM
GameMaker bindings for ImGui

# Building
***TODO***

# Jump To
- [main.cpp](https://github.com/nommiin/ImGui_GM/blob/main/dll/main.cpp) for DLL initialization & IO/rendering logic
- [imgui_gm.cpp](https://github.com/nommiin/ImGui_GM/blob/main/dll/imgui_gm.cpp) for ImGui->GML wrappers

# Usage (GameMaker)
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

# Coverage
This extension is heavily WIP, but wrapped functions can be found in the `imgui_gm.cpp` file and called as static functions via the `ImGui` class
- `ImGui.Begin` -> `boolean`
- `ImGui.End` -> `void`
- `ImGui.Text` -> `void`
- `ImGui.InputText` -> `string`
- `ImGui.Button` -> `boolean`

The goal is to have most functions in the `ImGui::` namespace exposed to GML, ideally with direct calls to the ImGui functions (maybe auto generated?)

# Special Thanks
- [rousr](https://rou.sr/) for creating the ImGui binding for GM that inspired development of this
- [@nkrapivin](https://github.com/nkrapivin) for providing general assistance with `YYRunnerInterface` magic
