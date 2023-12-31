ImGui.__Initialize();
ImGui.ConfigFlagToggle(ImGuiConfigFlags.DockingEnable);	

randomize();

main_open = true;
demo_open = true;
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

font_default = ImGui.AddFontDefault();
font_roboto = ImGui.AddFontFromFile("fonts/Roboto-Regular.ttf", 24);

memory = debug_event("DumpMemory", true).totalUsed;
memory_difference = 0;
tick = 0;