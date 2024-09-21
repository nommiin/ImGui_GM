///
/// Create event
///

/// Some cool variables B|
my_color = #002F4C
operating_system = environment_get_variable("OS");

/// Set up the extension before initialization.
// ImGui.__ExtFlags |= ImGuiExtFlags.EXT_WINWIN;
ImGui.__ExtFlags &= ~ImGuiExtFlags.GM;

/// Define common flags
var _configs = ImGuiConfigFlags.ViewportsEnable | ImGuiConfigFlags.DockingEnable;

ImGui.__Initialize(_configs); // This creates a default state.

/* You can also create a state manually and use it as arg0 in ImGui initialize instead. */

imgui_state = ImGui.__State; // Capture the created state.
//ImGui.ConfigFlagToggle(config_flags); // Set some configs.

/// Create a new state (context).
imgui_state2 = new ImGuiState(); // Creates a Context [internal]
imgui_state2.Engine.Window = {hwnd: window_handle()}; // Modify data of State.
imgui_state2.Initialize(_configs); // Initialize the state. Sets as the current state.
// ImGui.ConfigFlagToggle(ImGuiConfigFlags.DockingEnable); // Set some configs.
imgui_state.Use(); // Return back to main state.

/// If ImGui has winwin set, we create a winwin.

/* For this to work correctly, you need to set RENDERER_GM. */

if ImGui.__ExtFlags & ImGuiExtFlags.EXT_WINWIN {
    winwin_main.hwnd = window_handle(); // Simpler for more compatibility?

    var _winwin_cfg = new winwin_config();
    _winwin_cfg.caption = "Extra!";
    _winwin_cfg.resize = false;
    _winwin_cfg.close_button = 1;
    _winwin_cfg.thread = false;
    _winwin_cfg.kind = winwin_kind_normal;

    _winwin_extra = winwin_create(window_get_x() + 350, window_get_y(), 350, 600, _winwin_cfg);
    _winwin_extra.hwnd = winwin_get_handle(_winwin_extra); // important

    _winwin_extra.imgui_state = new ImGuiState(); // Create a state for the winwin.
    _winwin_extra.imgui_state.Engine.Window = _winwin_extra; // Modify data of State.
    _winwin_extra.imgui_state.Initialize(_configs); // Initialize the state. Sets the current state.
    _winwin_extra.font_default = ImGui.AddFontDefault(); // Add default font to the current state (context).
} else {
    _winwin_extra = undefined;
}

/// Set back to main state.
imgui_state.Use();

// Fonts
font_default = ImGui.AddFontDefault();
font_roboto = ImGui.AddFontFromFile("fonts/Roboto-Regular.ttf", 24);

// Window classes
window_class_basic = new ImGuiWindowClass(0, ImGui.GetMainViewport());
window_class_no_automerge = new ImGuiWindowClass(1, ImGui.GetMainViewport(), ImGuiViewportFlags.NoAutoMerge);

// Demos
demo_open = true;
    demo_multi_select = true;

// MultiSelect
multi_select_selection_size = 40;
multi_select_selection = new ImGuiSelectionBasicStorage();

randomize();

/// Sample data.
ExampleNames = [
    "Artichoke", "Arugula", "Asparagus", "Avocado", "Bamboo Shoots", "Bean Sprouts", "Beans", "Beet", "Belgian Endive", "Bell Pepper",
    "Bitter Gourd", "Bok Choy", "Broccoli", "Brussels Sprouts", "Burdock Root", "Cabbage", "Calabash", "Capers", "Carrot", "Cassava",
    "Cauliflower", "Celery", "Celery Root", "Celcuce", "Chayote", "Chinese Broccoli", "Corn", "Cucumber"
];

/* Original code follows. */

main_open = true;
imgui_demo_open = false;
header_visible = true;
enable_docking = false;
init = false;

_static = undefined;
try {
	_static = static_get(ImGui);
} catch (e) {
	_static = undefined;
}

col = c_blue;                     // for TextColored
col2 = c_white;                   // for Image & ColorPicker
col3 = c_lime;                    // for ColorPicker3
col4 = new ImColor(c_aqua, 0.5);  // for ColorPicker4
col5 = c_fuchsia;
col6 = new ImColor(irandom(255), irandom(255), irandom(255), random(1));
dir = ImGuiDir.Right;             // for ArrowButton

surf = -1;                        // for Surface

input_val = "This is a text input! You can type things here! Or even paste new text!";        // for InputText
input_val_ml = "This is a multiline input!\nBelieve it or not, you can have multiple lines here.\n\nPretty neat, right?";
input_hint = "";

input_int = irandom(255);
input_float = random(255);
plot_val = [];
plot_val2 = [];

for(var i = 0; i < 12; i++) {
	array_push(plot_val, irandom(255));
	array_push(plot_val2, irandom(255));
}

drag_mode = 0;
drag_names = [
	"Bobby", "Beatrice", "Betty",
	"Brianna", "Barry", "Bernard",
	"Bibi", "Blaine", "Bryn"
];
 
tab1 = true;

memory = debug_event("DumpMemory", true).totalUsed;
memory_difference = 0;
tick = 0;
