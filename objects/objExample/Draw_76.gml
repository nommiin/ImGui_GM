///
/// Pre-Draw Event
///

/// You can use the following code in the Pre-Draw event instead.
ImGui.__Render();

if _winwin_extra {
    if _winwin_extra[$ "imgui_state"] {
        _winwin_extra.imgui_state.Use();
        ImGui.__Render();
        imgui_state.Use();
    }
}
