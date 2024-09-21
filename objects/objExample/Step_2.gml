///
/// End-Step Event
///
/// Use this code to end the frame.
ImGui.__EndFrame(imgui_state);

if _winwin_extra {
    if _winwin_extra[$ "imgui_state"] {
        _winwin_extra.imgui_state.Use();
        ImGui.__EndFrame();
        imgui_state.Use();
    }
}
