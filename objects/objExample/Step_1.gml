///
/// Begin Step Event
///

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
