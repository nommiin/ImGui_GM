ImGui.ShowDemoWindow();

ImGui.SetNextWindowPos(96, 32, ImGuiCond.FirstUseEver);
ImGui.SetNextWindowSize(480, 640, ImGuiCond.FirstUseEver);

if (open) {
	open = ImGui.Begin("test", open);
	
	if (ImGui.TreeNode("hewwo")) {
		ImGui.Text("hiii");	
		
		ImGui.TreePop();
	}
	
	//ImGui.Image(
	ImGui.End();
}