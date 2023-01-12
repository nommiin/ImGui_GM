if (ImGui.Begin("test")) {
	

	if (header1) {
		var ret = ImGui.CollapsingHeader("Header with a close button", header1, ImGuiTreeNodeFlags.None, ImGuiReturnMask.Both);
		header1 = ret & ImGuiReturnMask.Pointer;
		
		if (ret & ImGuiReturnMask.Return) {
			ImGui.Text("hewwo");
		}
	}
	
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

