if (ImGui.Begin("test")) {
	
	ImGui.ColorPicker4("ColorPicker4", col4);
	
	fl1 = ImGui.DragFloat("DragFloat", fl1);
	
	ImGui.DragFloat3("DragFloat3", fl3);
	
	ImGui.End();	
}

/*
if (open) {
	var ret = ImGui.Begin("Test", open, ImGuiWindowFlags.None, ImGuiReturnMask.Both);
	open = ret & ImGuiReturnMask.Pointer;
	
	if (ret & ImGuiReturnMask.Return) {
		ImGui.TextColored("hewwo", c_blue, 1);
	}
	ImGui.End();
}*/



/*
c = make_color_rgb(255, 0, 0); ImGui.TextColored("red:" + string(c), c);
c = make_color_rgb(0, 255, 0); ImGui.TextColored("green:" + string(c), c);
c = make_color_rgb(0, 0, 255); ImGui.TextColored("blue:" + string(c), c);
c = make_color_hsv(255 * sin(current_time / 1500), 128, 255); ImGui.TextColored("sine:" + string(c), c);
*/

