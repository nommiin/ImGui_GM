ImGui.ShowDemoWindow();

ImGui.SetNextWindowPos(96, 32, ImGuiCond.FirstUseEver);
ImGui.SetNextWindowSize(480, 640, ImGuiCond.FirstUseEver);

if (open) {
	open = ImGui.Begin("Test Window", open, ImGuiWindowFlags.None, ImGuiReturnFlags.Open);
	ind = ImGui.ListBox("hewwo", ind, ["test 1", 32, "test 2", undefined, "test 3"]);
	ImGui.Image(sprAngy);
	ImGui.End();
}