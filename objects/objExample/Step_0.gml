// Menu
ImGui.BeginMainMenuBar();
if (ImGui.BeginMenu("File")) {
	if (ImGui.MenuItem("Show Example Window", "", undefined, !main_open)) {
		main_open = true;	
	}
	
	if (ImGui.MenuItem("Exit")) {
		game_end();
	}
	ImGui.EndMenu();
}
ImGui.EndMainMenuBar();

// Main Window
if (main_open) {
	var ret = ImGui.Begin("ImGui_GM Example", main_open, ImGuiWindowFlags.None, ImGuiReturnMask.Both);
	main_open = ret & ImGuiReturnMask.Pointer;
	
	if (ret & ImGuiReturnMask.Return) {
		
	}
	ImGui.End();
}