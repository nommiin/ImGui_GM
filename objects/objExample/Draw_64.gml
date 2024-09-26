///
/// Draw GUI Event
///

display_set_gui_size(window_get_width(), window_get_height());
display_set_gui_maximize(1,1,0,0);

draw_set_font(fnt_consolas);
draw_set_color(c_white);
var chr_width = string_width("_")
var chr_height = string_height("|");
var mem = memory / 1000000;
var mem_diff = (sign(memory_difference) ? "+" : "") + string(memory_difference / 1000);

var str_fps = string("{0} ({1})", fps, fps_real);
var str_mem = string("{0} MB", mem);

draw_text(5, 100,
    string("{0}\n{1}\n{2}\n{3}\n{4}\n{5}\n\n{6}",
        "FPS:",
        "RAM:",
        "DLL Version:",
        "ImGui Version:",
        "GameMaker Version:",
        "Operating System:",
        "GM LMB:",
    )
);
draw_text(145, 100,
	string("{0}\n{1}\n{2}\n{3}\n{4}\n{5}\n\n{6}",
		str_fps,
		str_mem,
		IMGUI_GM_VERSION,
		ImGui.GetVersion(),
        GM_version + " - " + GM_runtime_version,
        operating_system,
        (mouse_check_button(mb_left) ? "(true)" : "(false)") + " - ImGui LMB:  " + (ImGui.IsMouseDown(ImGuiMouseButton.Left) ? "(true)" : "(false)"),
	)
);

if memory_difference > 200_000 draw_set_color(#ff5040);
var pos_x = string_width(str_mem);
var pos_y = chr_height;
draw_text(145 + pos_x, 100 + pos_y,
    string(" ({0} KB)",
        mem_diff
    )
);
draw_set_color(c_white);
