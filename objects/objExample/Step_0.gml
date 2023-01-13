ImGui.BeginMainMenuBar();
if (ImGui.BeginMenu("File")) {
	var ret = ImGui.MenuItem("Open", "CTRL+O", toggle_thing, true, ImGuiReturnMask.Both);
	toggle_thing = ret & ImGuiReturnMask.Pointer;
	if (ret & ImGuiReturnMask.Return) {
		show_debug_message("pressed it ^_^");	
	}
	ImGui.EndMenu();
}
ImGui.EndMainMenuBar();