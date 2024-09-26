# ImGui_GM

A Windows only ImGui wrapper for modern GameMaker.

![screenshot](https://user-images.githubusercontent.com/6483989/208770256-e568fec4-e8ba-4239-82b6-97acbb7f2160.png)
![issues](https://badgen.net/github/open-issues/nommiin/imgui_gm)
![coverage](https://badgen.net/https/raw.githubusercontent.com/knno/imgui_gm/main/extra/badges/coverage.json?icon=awesome)

# Installation

- Download the extension from the [releases](https://github.com/nommiin/ImGui_GM/releases/) tab
- Or you can [build](#building) it yourself.

# Usage (GameMaker)

There are various ways to use the **ImGui_GM** extension in this build.

## Prerequisites

1. Import ImGui_GM.yymps
2. Note the essential functions:
  - `ImGui.__Initialize()` Initializes ImGui
  - `ImGui.__NewFrame()` Starts a new frame
  - `ImGui.__EndFrame()` Ends the frame
  - `ImGui.__Render()` Renders the frame.
  - `ImGui.__Draw()` Draws the frame draw data.
  - `ImGui.__Shutdown()` Frees memory.

## Basic Usage

1. Create a persistent object and call the essential functions in their respective events.
  - `ImGui.__Initialize()` in the create event
  - `ImGui.__NewFrame()` in any stepping event (suggested: *Begin Step*)
  - `ImGui.__EndFrame()` in any stepping event (suggested: *End Step*)
  - `ImGui.__Render()` in any rendering event (suggested: *Draw*)
  - `ImGui.__Draw()` in any draw event (suggested: *Draw GUI*)
  - `ImGui.__Shutdown()` in game end event

2. Write your UI code anywhere but make sure it is executed after `__NewFrame` and before `__EndFrame`.
  - Using the suggested *Begin Step* and *End Step* events makes it easier for UI code to be anywhere in *Step* events of objects.  

3. Make sure you have read and understood the [Notes](#notes) section.

## Advanced Usage

Here we will introduce more ways to initialize and manage ImGui through out a GameMaker project.

### Main Windows

`ImGuiBaseMainWindow` is a custom class that represents the game window. It has wrapping methods (`window_get_width`, `window_get_height` etc.) which can be extended.

Using more than one main Window is currently **not recommended**. You can modify original ImGui code and create an extend of the `ImGuiBaseMainWindow` class to use custom methods in GM side.

*Check out the wiki for integration with other useful extensions.*

You can see the abstract functions of `ImGuiBaseMainWindow` constructor if you want to extend the constructor.

### States

An `ImGuiState` is a custom class that is used to set the current ImGui context and other variables. This is required for mulitple contexts to work. By default, basic usage creates the main state with `ImGui.__Initialize`.

#### Multiple States or Main Windows and Initialization

*See below for how to create windows or states and initialize them instead in code.*

Using multiple states doen't require mulitple windows. And using multiple windows should be possible without having to create another state!

However when using the GM renderer method and more than one main window, each window will require a state different than that of the game's main window.

Using `state.Initialize(window_or_configflags)`:
- If the state doesn't have a window, it's going to be set from `ImGui.__MainWindow`.

Using `ImGui.__Initialize(window_or_state_or_configflags)`:
- Can be used only once.
- If a state was provided, it will be initialized and **a window will be created** if the state doesn't have one.
- If a window was provided, **a state will be created** and will use the window.
- If config flags were provided, **a state will be created**, and its window will be set from `ImGui.__MainWindow`.

#### Examples of Creating States or Windows

Basically, when calling literally `ImGui.__Initialize()`, it creates a state and a window for us.

```gml
ImGui.__Initialize(); // Creates a state and window 
state = ImGui.__State; // Capture the state
window = ImGui.__Window; // Capture the window
```

However you can create the *main* state manually and add a window class to it. Useful if its the first time
to set the `ImGui.__MainWindow` to the state's window.

```gml
window = new ImGuiBaseMainWindow(); // Your own constructor
state = new ImGuiState(); // Creates a state (main state)
state.Engine.Window = window;
ImGui.__Initialize(state); // initialize ImGui with the state
```

Or if you simply want the main window to be your own:

```gml
window = new ImGuiBaseMainWindow(); // Your own constructor.
ImGui.__Initialize(window); // Creates a state
state = ImGui.__State; // Capture the state
```

You can also create more windows and states and initialize the states later on. Make sure you have called `ImGui.__Initialize`!

```gml
// Assuming ImGui.__Initialize(...); was called before.

var state2 = new ImGuiState(); // Creates a state (main state)
state2.Engine.Window = new ImGuiBaseMainWindow(other_window_handle);
state2.Initialize(); // Initialize the state.

// Initializing a state sets it current, so from here on, we are using the new state.
```

#### Switching Between States

If you have more than one state, you need to switch between them to set them active or not.
You can do this directly or with the essential functions

```gml
_state.__Use();
ImGui.__NewFrame(); // New frame in _state.

// same as

ImGui.__NewFrame(_state); // New frame in _state.
```

The following essential functions need to be called for each state:
| Function | Function with `_state` param | Notes |
| --- | --- | --- |
| `_state.__Initialize()` | - | |
| `_state.__Use()` | - | Call to use the state before ImGui functions |
| `ImGui.__NewFrame` | `ImGui.__NewFrame(_state)` | |
| `ImGui.__EndFrame` | `ImGui.__EndFrame(_state)` | |
| `ImGui.__Render`   | `ImGui.__Render(_state)` | |
| `ImGui.__Draw`     | `ImGui.__Draw(_state)` | ⚠️ Caution: Potential memory leak if not used in *Draw GUI* event having multiple `GameWindow`s |
| `_state.__Destroy()` | - | |

States are mostly for internal use, you shouldn't have to modify their values.
Except for the window (`_state.Engine.Window`) per the examples above.

### Extension Flags

Now we will discuss global extension flags for ImGui.

Extension flags are used to define the behavior of ImGui. They are set in your GameMaker project as a static variable in ImGui. `ImGui.__ExtFlags`.

When calling `ImGui.__Initialize`, for the first time, they are also passed to the DLL once.
By default, enabled extension flags are `ImGuiExtFlags.IMPL_DX11 | ImGuiExtFlags.IMPL_WIN32 | ImGuiExtFlags.GM`.

Here is a list of extension flags:
- `ImGuiExtFlags.IMPL_DX11`: Enables ImGui DirectX11 backend.
- `ImGuiExtFlags.IMPL_WIN32`: Enables ImGui WIN32 backend.
- `ImGuiExtFlags.GM`: Enables ImGui GM backend and use GM renderer.

Note: `ImGuiExtFlags.GM` is basically `ImGuiExtFlags.IMPL_GM | ImGuiExtFlags.RENDERER_GM` since you cannot use `RENDERER_GM`, without `IMPL_GM`.

#### Extension Flag: GM

This flag tells that you want to use the GM rendering technique where usage of native ImGui multi-viewports is not possible.

Check the github repository branches or the included example objects in the GameMaker project for more details.

# Compatibility

## Platform
Currently, this extension makes heavy usage of the ability to pass a device handler and context to extensions... unfortunately, this functionality **is only avaliable for [DX11 targets](https://manual.yoyogames.com/index.htm#t=GameMaker_Language%2FGML_Reference%2FOS_And_Compiler%2Fos_get_info.htm)**. 

# Building

Below are some details of how to build the project.

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

## Building DLL
*Using C++20, Windows SDK v10.0, Node.js v16.18.0, built with Visual Studio Community 2022*

1. `cd` into the dll directory and run `copy_dependencies.bat` to copy required `.cpp` and `.h` files from `thirdparty/imgui/*` into `dll/imgui`
2. Open `dll.sln` in Visual Studio (support for versions older than 2022 is unknown)
3. Build for x64, resulting `imgui_gm.dll` file should be automatically copied to `../extensions/ImGui_GM/imgui_gm.dll` and wrapped functions should be generated by `brief/main.js` in `ImGui_GM.yyp`
4. Open `ImGui_GM.yyp` and create a local package containing `ImGui_GM` (extension), `ImGui` (script), and `ImGui_Misc` (script)

### Building Workflow

- Upon building inside of Visual Studio, the `tools/brief/main.js` script will be called. This script collects any `.cpp` files ending in "`_gm.cpp`" (*Any uses of `GMFUNC` outside of files ending in `_gm.cpp` **will not** be read*) and parses out functions defined using the `GMFUNC` macro. These parsed functions are then added to the `extensions/ImGui_GM/ImGui_GM.yy` file and static methods are created in the `@section Binds` section of the `scripts/ImGui/ImGui.gml` file automatically. You can use the various macros to define attributes for wrapped functions and their arguments. See [`brief/Wrapper.js`](https://github.com/nommiin/ImGui_GM/blob/main/tools/brief/Wrapper.js)'s `modifier` method for how various attributes are handled.

# Coverage
Check out [`ImGui_GM.gml`](https://github.com/nommiin/ImGui_GM/blob/main/scripts/ImGui/ImGui.gml#L2) to view all wrapper functions.
Check out [`COVERAGE.md`](https://github.com/nommiin/ImGui_GM/blob/main/COVERAGE.md) for coverage report.

If there is anything missing, submit issues in this repository: [Click here to create an issue](https://github.com/nommiin/ImGui_GM/issues). 

# Notes
- Functions like `ImGui.Begin` may not return what you expect, see ["ImGuiReturnMask Usage"](https://github.com/nommiin/ImGui_GM/wiki/ImGuiReturnMask-Usage) for more info

- Functions that accept an **array** of items as an argument (such as `ImGui.DragInt3`, `ImGui.SliderFloat2`, etc) will ***directly modify*** the given array. Keep this in mind when using them. Analogous functions that accept single elements (such as `ImGui.DrawInt`, `ImGui.SliderFloat`) ***will not*** make any changes directly to the value, and the return value should be used.

- Like the above, `ColorEdit4` and `ColorPicker4` take the GML class `ImColor` and mutates it directly; this is worth mentioning as `ColorEdit3` returns a BGR colour


# Special Thanks
- [Omar Cornut](https://github.com/ocornut/) for creating [Dear ImGui](https://github.com/ocornut/imgui)
- [rousr](https://rou.sr/) for creating [ImGuiGML](https://imguigml.rou.sr/) which inspired development of this
- [@nkrapivin](https://github.com/nkrapivin) for providing general assistance with `YYRunnerInterface` magic
- [@kraifpatrik](https://github.com/blueburncz/GMD3D11)'s GMD3D11 for serving as reference on how to retrieve textures from GameMaker
