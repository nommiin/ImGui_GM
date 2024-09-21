///
/// Begin Step Event
///

/// If the extension is set, call `winwin_update`.
if ImGui.__ExtFlags & ImGuiExtFlags.EXT_WINWIN {
    winwin_update();

    if (!winwin_exists(_winwin_extra)) {
        _winwin_extra = undefined;
    }
}

///
/// Start new frame
/// i.e.  { imgui_state.Use(); ImGui.__NewFrame(); }
///
ImGui.__NewFrame(imgui_state);

ImGui.SetNextWindowClass(window_class_no_automerge);
ImGui.SetNextWindowSize(240,50, ImGuiCond.FirstUseEver);
ImGui.SetNextWindowPos(30, 150, ImGuiCond.FirstUseEver);
ImGui.Begin("Some window (with NoAutoMerge)");
ImGui.End();

if _winwin_extra {
    if _winwin_extra[$ "imgui_state"] {
        // Now we switch to _winwin_extra.imgui_state.
        _winwin_extra.imgui_state.Use();
        ImGui.__NewFrame();
        ImGui.SetNextWindowClass(window_class_basic);
        ImGui.SetNextWindowSize(80,80, ImGuiCond.FirstUseEver);
        ImGui.Begin("Window Class Basic (In Extra)");
        ImGui.End();
        // Now we switch back to imgui_state. (for code in step event)
        imgui_state.Use();
    }
}
