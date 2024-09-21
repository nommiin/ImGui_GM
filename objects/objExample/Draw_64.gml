///
/// Draw GUI Event
///
draw_set_font(fnt_consolas);
draw_set_color(c_white);
var chr_width = string_width("_")
var chr_height = string_height("|");

if _winwin_extra {
    winwin_draw_begin(_winwin_extra);
    winwin_draw_clear(my_color);
    winwin_draw_end();
    
    if _winwin_extra[$ "imgui_state"] {
        _winwin_extra.imgui_state.Use();
        ImGui.__Draw();
        imgui_state.Use();
    }
}

var mem = memory / 1000000;
var mem_diff = (sign(memory_difference) ? "+" : "") + string(memory_difference / 1000);

var str_fps = string("{0} ({1})", fps, fps_real);
var str_mem = string("{0} MB", mem);

draw_text(4, 20,
    string("{0}\n{1}\n{2}\n{3}\n{4}\n{5}",
        "FPS:",
        "RAM:",
        "GM Version:",
        "DLL Version:",
        "GameMaker:",
        "Operating System:",
    )
);
draw_text(144, 20,
	string("{0}\n{1}\n{2}\n{3}\n{4}\n{5}",
		str_fps,
		str_mem,
		ImGui.GetVersion(),
		IMGUI_GM_VERSION,
        GM_version + " - " + GM_runtime_version,
        operating_system,
	)
);

if memory_difference > 200_000 draw_set_color(#ff5040);
var pos_x = string_width(str_mem);
var pos_y = chr_height;
draw_text(144 + pos_x, 20 + pos_y,
    string(" ({0} KB)",
        mem_diff
    )
);
draw_set_color(c_white);
