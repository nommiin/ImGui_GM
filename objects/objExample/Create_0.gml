///
/// Create event
///

/// Some cool variables B|
my_color = #002F4C
operating_system = environment_get_variable("OS");

/// Optional: Save settings.
// ini_filename = ""; // To not save
// ini_filename = game_save_id + "imgui_gm.ini"; // To save
ini_filename = "";

/// Optional: Set up the extension before initialization.
//ImGui.__ExtFlags &= ~ImGuiExtFlags.GM; // Uncomment to use DX11 renderer.

/// Optional: Define common config flags
var _configs = ImGuiConfigFlags.DockingEnable | ImGuiConfigFlags.ViewportsEnable;

ImGui.__Initialize(_configs); // Note that this creates a default window and state.

imgui_state = ImGui.__State; // Capture the created state.
imgui_window = ImGui.__Window; // Capture the created gamewindow.

/// Optional: load and save ini file in a custom path.
if ini_filename != "" {
    ImGui.IniFilename(ini_filename);
    ImGui.LoadIniSettingsFromDisk(ini_filename);
}
/// Optional: Create a new state example
/*
    imgui_state2 = new ImGuiState(); // Creates a Context [internal]
    imgui_window2 = new ImGuiBaseMainWindow(window_handle());
    // imgui_state2.some_attribute = some_value; // modify some data [example]
    imgui_state2.Initialize(imgui_window2, _configs); // Initialize the state. Attach state to the window. Set the config flags to add. This sets as the current state.
    ImGui.AddFontDefault(); // Add default font to the state.
    imgui_state.Use(); // Return back to main state.
*/

/// Optional: Set the main state active.
// imgui_state.Use();

/// -----------------------------------------------------------------------------

// Fonts
font_default = ImGui.AddFontDefault();
font_roboto = ImGui.AddFontFromFile("fonts/Roboto-Regular.ttf", 24);

// Window classes
window_class_basic = new ImGuiWindowClass(1, -1);
window_class_no_automerge = new ImGuiWindowClass(2, -1, ImGuiViewportFlags.NoAutoMerge);

// Demos
demo_open = true;
    demo_multi_select = true;

// MultiSelect
multi_select_selection_size = 40;
multi_select_selection = new ImGuiSelectionBasicStorage();

randomize();

// Samples
ExampleNames = [
    "Artichoke", "Arugula", "Asparagus", "Avocado", "Bamboo Shoots", "Bean Sprouts", "Beans", "Beet", "Belgian Endive", "Bell Pepper",
    "Bitter Gourd", "Bok Choy", "Broccoli", "Brussels Sprouts", "Burdock Root", "Cabbage", "Calabash", "Capers", "Carrot", "Cassava",
    "Cauliflower", "Celery", "Celery Root", "Celcuce", "Chayote", "Chinese Broccoli", "Corn", "Cucumber"
];

main_open = true; // Main window
imgui_demo_open = false; // ImGui demo window
header_visible = true;
enable_docking = false; // Enable game window viewport docking
init = false; // Set up docking

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
