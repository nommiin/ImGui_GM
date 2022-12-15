ImGui.ShowAboutWindow();
ImGui.ShowStyleEditor();

ImGui.SetNextWindowPos(96, 32, ImGuiCond.FirstUseEver);
ImGui.SetNextWindowSize(480, 640, ImGuiCond.FirstUseEver);

if (ImGui.Begin("Test Window", true)) {
	// Text Widgets
	ImGui.Text("Text");
	ImGui.TextColored("TextColored", c_green, 1);
	ImGui.TextColored("Red: " + string(c_red), c_red, 1);
	ImGui.TextColored("Green: " + string(c_green), c_green, 1);
	ImGui.TextColored("Blue: " + string(c_blue), c_blue, 1);
	ImGui.TextColored("White: " + string(c_white), c_white, 1);
	
	// Input Widgets
	str = ImGui.InputText("InputText", str);
	if (ImGui.Button("Press Me")) {
		show_message(string("your input was: {0}", str));	
	}

	ImGui.Text("image here!");
	ImGui.Image(sprAngy, frame, 256, 256);
	frame += 0.5;
	ImGui.Text("image done");
	
	str2 = ImGui.InputTextWithHint("InputTextWithHint", "(hint goes here ^_^)", str2);
	str3 = ImGui.InputTextMultiline("InputTextMultiline", str3);
	ImGui.End();
}