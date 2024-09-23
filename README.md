# ImGui_GM

A Windows only ImGui wrapper for modern GameMaker.

<!-- ![screenshot](https://user-images.githubusercontent.com/6483989/208770256-e568fec4-e8ba-4239-82b6-97acbb7f2160.png) -->

![issues](https://badgen.net/github/issues/knno/imgui_gm)
![coverage](https://badgen.net/https/raw.githubusercontent.com/knno/imgui_gm/main/extra/badges/coverage.json?icon=awesome)

# Installation

- Download the extension from the [releases](https://github.com/knno/ImGui_GM/releases/) tab
- Or you can [build](#building) it yourself.

# Usage (GameMaker)

There are various ways to use the **ImGui_GM** extension in this build.

## Prerequisites

1. Import ImGui_GM.yy
2. Note the essential functions:
  - `ImGui.__Initialize()` Initializes ImGui
  - `ImGui.__NewFrame()` Starts a new frame
  - `ImGui.__EndFrame()` Ends the frame
  - `ImGui.__Render()` Renders the frame.
  - `ImGui.__Draw()` Draws the frame draw data.

## Basic Usage

1. Create a persistent object and call the essential functions in their respective events.
  - `ImGui.__Initialize()` in the create event
  - `ImGui.__NewFrame()` in any stepping event (suggested: *Begin Step*)
  - `ImGui.__EndFrame()` in any stepping event (suggested: *End Step*)
  - `ImGui.__Render()` in any rendering event (suggested: *Draw*)
  - `ImGui.__Draw()` in any draw event (suggested: *Draw GUI*)

2. Write your UI code anywhere but make sure it is executed after `__NewFrame` and before `__EndFrame`.
  - Using the suggested *Begin Step* and *End Step* events makes it easier for UI code to be anywhere in *Step* events of objects.  

3. Make sure you have read and understood the [Notes](#notes) section.

## Intermediate Usage

Here we will introduce the `ImGuiState` constructor.

### States

An `ImGuiState` is used to set the current ImGui context and other variables. This is required for mulitple contexts to work. By default, basic usage creates the main state with `ImGui.__Initialize`.

#### Creating States

When calling `ImGui.__Initialize()`, it creates a state for us.

```gml
ImGui.__Initialize(); // Creates a state internally
var _state = ImGui.__State; // Capture the state.
```

However you can create the *main* state manually.

```gml
var _state = new ImGuiState(); // Creates a state (main state)
_state.Engine.Window.hwnd = window_handle(); // Modify some data.
ImGui.__Initialize(_state); // initialize ImGui with the main state.
```
    
You can also create more states and initialize them too later on.

```gml
// Assumign ImGui.__Initialize(); was called before.

var _state = new ImGuiState(); // Creates a state (main state)
_state.Engine.Window.hwnd = get_other_window_handle();
_state.__Initialize(); // Initialize the state.

// Initializing a state sets it current, so from here on, we are using the new state.
```

#### Switching Between States

If you have more than one state, you need to switch between them to set them active or not.
You can do this directly or with the essential functions

```gml
_state.__Use();
ImGui.__NewFrame(); // New frame in _state.
// Above Same as below
ImGui.__NewFrame(_state); // New frame in _state.
```

The following essential functions need to be called for each state:
| Function | Function with `_state` param | Notes |
| --- | --- | --- |
| `ImGui.__NewFrame` | `ImGui.__NewFrame(_state)` | |
| `ImGui.__EndFrame` | `ImGui.__EndFrame(_state)` | |
| `ImGui.__Render`   | `ImGui.__Render(_state)` | |
| `ImGui.__Draw`     | `ImGui.__Draw(_state)` | ⚠️ Caution: Only use in *Draw GUI* event (when both `GM` and `EXT_WINWIN` are set as Ext flags.) |

States are mostly for internal use, you shouldn't have to modify their values.
Except for the window handle (`_state.Engine.Window.hwnd`) per the examples above.

Functions of `ImGuiState` constructor:
- `_state.__Initialize()`: Initializes the state and use it.
- `_state.__Use()`: activate as the current state.
- `_state.__Destroy()`: Frees the ImGui internal context (and GameMaker variables, such as buffers) from memory.

### Extension Flags

Now we will discuss global extension flags for ImGui.

Extension flags are used to define the behavior of ImGui. They are set in your GameMaker project as a static variable in ImGui. `ImGui.__ExtFlags`.

When calling `ImGui.__Initialize`, for the first time, they are also passed to the DLL once.
By default, enabled extension flags are `ImGuiExtFlags.IMPL_DX11 | ImGuiExtFlags.IMPL_WIN32 | ImGuiExtFlags.GM`.

Here is a list of extension flags:
- `ImGuiExtFlags.IMPL_DX11`: Enables ImGui DirectX11 backend.
- `ImGuiExtFlags.IMPL_WIN32`: Enables ImGui WIN32 backend.
- `ImGuiExtFlags.GM`: Enables ImGui GM backend and use GM renderer.
- `ImGuiExtFlags.EXT_WINWIN`: Enables winwin extension. (See below.)

Note: `ImGuiExtFlags.GM` is basically `ImGuiExtFlags.IMPL_GM | ImGuiExtFlags.RENDERER_GM` since you cannot use `RENDERER_GM`, without `IMPL_GM`.

#### Extension Flag: GM

This flag tells that you want to use the GM rendering technique where usage of native ImGui multi-viewports is not possible. It is required for usage with winwin extension.
Check the included example objects in the GameMaker project for more details.

#### Extension Flag: EXT_WINWIN

The [winwin](https://github.com/YAL-GameMaker/winwin) extension is maintained by YellowAfterLife.
If you have it, you can simply enable this flag and create a `ImGuiState` to use with that window.

Hopefully you will only need these two lines for the `state` to work with a `winwin`:

```gml
_state.Engine.Window = winwin_window;
_state.Engine.Window.hwnd = winwin_get_handle(winwin_window);
```

# Compatibility

## Platform
Currently, this extension makes heavy usage of the ability to pass a device handler and context to extensions... unfortunately, this functionality **is only avaliable for [DX11 targets](https://manual.yoyogames.com/index.htm#t=GameMaker_Language%2FGML_Reference%2FOS_And_Compiler%2Fos_get_info.htm)**. 

# Building

Below are some details of how to build the project.

## Folder Structure
- dll/
  - [`main.cpp`](https://github.com/knno/ImGui_GM/blob/main/dll/main.cpp) for DLL initialization & IO/rendering logic
  - `gm/imgui_*_gm.cpp` for wrapped ImGui --> GM definitions
- scripts/
  - ImGui/
    - [`ImGui.gml`](https://github.com/knno/ImGui_GM/blob/main/scripts/ImGui/ImGui.gml) for ImGui static functions & internal IO/events
  - ImGui_Misc/
    - [`ImGui_Misc.gml`](https://github.com/knno/ImGui_GM/blob/main/scripts/ImGui_Misc/ImGui_Misc.gml) for classes and enum definitions and misc ImGui --> GM mapping 
- tools/
  - [`brief/Program.js`](https://github.com/knno/ImGui_GM/blob/main/tools/brief/Program.js) for ImGui to GM binding generation

## Building DLL
*Using C++20, Windows SDK v10.0, Node.js v16.18.0, built with Visual Studio Community 2022*

1. `cd` into the dll directory and run `copy_dependencies.bat` to copy required `.cpp` and `.h` files from `thirdparty/imgui/*` into `dll/imgui`
2. Open `dll.sln` in Visual Studio (support for versions older than 2022 is unknown)
3. Build for x64, resulting `imgui_gm.dll` file should be automatically copied to `../extensions/ImGui_GM/imgui_gm.dll` and wrapped functions should be generated by `brief/main.js` in `ImGui_GM.yyp`
4. Open `ImGui_GM.yyp` and create a local package containing `ImGui_GM` (extension), `ImGui` (script), and `ImGui_Misc` (script)

### Building Workflow

- Upon building inside of Visual Studio, the `tools/brief/main.js` script will be called. This script collects any `.cpp` files ending in "`_gm.cpp`" (*Any uses of `GMFUNC` outside of files ending in `_gm.cpp` **will not** be read*) and parses out functions defined using the `GMFUNC` macro. These parsed functions are then added to the `extensions/ImGui_GM/ImGui_GM.yy` file and static methods are created in the `@section Binds` section of the `scripts/ImGui/ImGui.gml` file automatically. You can use the various macros to define attributes for wrapped functions and their arguments. See [`brief/Wrapper.js`](https://github.com/knno/ImGui_GM/blob/main/tools/brief/Wrapper.js)'s `modifier` method for how various attributes are handled.

# Coverage
Check out [`ImGui_GM.gml`](https://github.com/knno/ImGui_GM/blob/main/scripts/ImGui/ImGui.gml#L2) to view all wrapper functions.
Check out [`COVERAGE.md`](https://github.com/knno/ImGui_GM/blob/main/COVERAGE.md) for coverage report.

If there is anything missing, submit issues in this repository: [Click here to create an issue](https://github.com/knno/ImGui_GM/issues). 

# Notes
- Functions like `ImGui.Begin` may not return what you expect, see ["ImGuiReturnMask Usage"](https://github.com/knno/ImGui_GM/wiki/ImGuiReturnMask-Usage) for more info

- Functions that accept an **array** of items as an argument (such as `ImGui.DragInt3`, `ImGui.SliderFloat2`, etc) will ***directly modify*** the given array. Keep this in mind when using them. Analogous functions that accept single elements (such as `ImGui.DrawInt`, `ImGui.SliderFloat`) ***will not*** make any changes directly to the value, and the return value should be used.

- Like the above, `ColorEdit4` and `ColorPicker4` take the GML class `ImColor` and mutates it directly; this is worth mentioning as `ColorEdit3` returns a BGR colour


# Special Thanks
- [Omar Cornut](https://github.com/ocornut/) for creating [Dear ImGui](https://github.com/ocornut/imgui)
- [rousr](https://rou.sr/) for creating [ImGuiGML](https://imguigml.rou.sr/) which inspired development of this
- [@nkrapivin](https://github.com/nkrapivin) for providing general assistance with `YYRunnerInterface` magic
- [@kraifpatrik](https://github.com/blueburncz/GMD3D11)'s GMD3D11 for serving as reference on how to retrieve textures from GameMaker
- [@nommiin](https://github.com/nommiin/ImGui_GM)'s original work on the wrapper.
