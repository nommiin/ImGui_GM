ImGui.ShowDemoWindow();
ImGui.ShowStyleEditor();

ImGui.SetNextWindowPos(96, 32, ImGuiCond.FirstUseEver);
ImGui.SetNextWindowSize(480, 640, ImGuiCond.FirstUseEver);

if (ImGui.Begin("Test Window", true)) {
	// Text Widgets
	ImGui.Text("Text");
	
	ImGui.Image(sprAngy, 0, 32, 64);

	int = ImGui.DragInt("testing", int, 1, 0, 100);
	ImGui.DragInt2("testing gwa int2", int2, 1, 0, 100);
	ImGui.DragInt3("testing gwa int3", int3, 1, 0, 100);
	ImGui.DragInt4("testing gwa int4", int4, 1, 0, 100);
	
	ImGui.DragFloatRange2("float range 2", floatrange, 0.25, 0, 100);
	
	ImGui.End();
}