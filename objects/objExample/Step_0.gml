ImGui.ShowDemoWindow();

ImGui.SetNextWindowPos(96, 32, ImGuiCond.FirstUseEver);
ImGui.SetNextWindowSize(480, 640, ImGuiCond.FirstUseEver);

if (open) {
	open = ImGui.Begin("Test Window", open);
	
	if (ImGui.BeginTabBar("MyTabBar"))
    {
		
		if (avo) {
			var ret = ImGui.BeginTabItem("Avacado", avo, ImGuiTabItemFlags.None, ImGuiReturnFlags.Both);
			avo = ret & ImGuiReturnFlags.Open;
			if (ret & ImGuiReturnFlags.Visible) {
				ImGui.Text("This is the Avocado tab!\nblah blah blah blah blah");
				ImGui.EndTabItem();
			}
		}
		
		
        if (ImGui.BeginTabItem("Broccoli"))
        {
            ImGui.Text("This is the Broccoli tab!\nblah blah blah blah blah");
            ImGui.EndTabItem();
        }
		
        if (ImGui.BeginTabItem("Cucumber"))
        {
            ImGui.Text("This is the Cucumber tab!\nblah blah blah blah blah");
            ImGui.EndTabItem();
        }
        ImGui.EndTabBar();
    }
	
	col4 = ImGui.ColorPicker4("colour", col4);
	
	
	
	ImGui.Text("Hello!");
	ImGui.End();
}