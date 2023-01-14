// Setup
if (!surface_exists(surf)) {
	surf = surface_create(128, 128);
	surface_set_target(surf);
	draw_clear_alpha(c_lime, 0.25);
	surface_reset_target();
}

// Menu
var a = false;
ImGui.BeginMainMenuBar();
if (ImGui.BeginMenu("File")) {
	if (ImGui.MenuItem("Exit")) {
		a = true;
		//ImGui.OpenPopup("popup");
		//game_end();
	}
	ImGui.EndMenu();
}

if (a) ImGui.OpenPopup("popup");
if (ImGui.BeginPopupModal("popup", true)) {
	ImGui.Text("epicness");
	ImGui.EndPopup();	
}

if (ImGui.BeginMenu("Windows")) {
	if (ImGui.MenuItem("Show Example Window", undefined, undefined, !main_open)) main_open = true;	
	if (ImGui.MenuItem("Show Demo Window", undefined, undefined, !demo_open)) demo_open = true;	
	ImGui.EndMenu();
}
ImGui.EndMainMenuBar();

// Main Window
if (main_open) {
	ImGui.SetNextWindowSize(room_width / 2, room_height / 2, ImGuiCond.Once);
	
	var ret = ImGui.Begin("ImGui_GM Example", main_open, ImGuiWindowFlags.None, ImGuiReturnMask.Both);
	main_open = ret & ImGuiReturnMask.Pointer;
	
	if (ret & ImGuiReturnMask.Return) {
		var width = ImGui.GetContentRegionAvailX(), height = 256;
		
		ImGui.BeginChild("Inner_Text", width / 2, height, true);
		ImGui.Text("Text");
		ImGui.Separator();
		ImGui.Text("ImGui::Text");
		ImGui.TextColored("ImGui::TextColored", col);
		ImGui.TextWrapped("ImGui::TextWrapped - " + string_repeat("A", 24));
		ImGui.TextDisabled("ImGui::TextDisabled");
		ImGui.LabelText("A Label", "ImGui::LabelText");
		ImGui.BulletText("ImGui::BulletText");
		ImGui.Text("Right-Click");
		ImGui.EndChild();
		
		ImGui.SameLine();
		
		ImGui.BeginChild("Inner_Buttons", 0, height, true);
		ImGui.Text("Buttons");
		ImGui.Separator();
		if (ImGui.Button("ImGui::Button")) show_message_async("nice, you pressed the button");
		if (ImGui.SmallButton("ImGui::SmallButton")) show_message_async("nice, you pressed the smaller button");
		if (ImGui.InvisibleButton("ImGui::InvisibleButton", ImGui.GetContentRegionAvailX(), 24)) show_message_async("nice, you pressed the super secret invisible button");
		if (ImGui.ArrowButton("ImGui::ArrowButton", dir)) dir = (dir + 1) % 4;
		ImGui.EndChild();
		
		ImGui.BeginChild("Inner_Textured", width / 2, height, true);
		ImGui.Text("Textured Widgets");
		ImGui.Separator();
		ImGui.Text("ImGui::Image");
		ImGui.Image(sprExample, 0, col2);
		if (ImGui.IsItemHovered()) {
			ImGui.BeginTooltip();
			ImGui.Text("Artwork by @Snoozercreation on Twitter!");
			ImGui.EndTooltip();
		}
		ImGui.Text("ImGui::Surface");
		surface_set_target(surf);
		var xx = ImGui.GetCursorScreenPosX(), yy = ImGui.GetCursorScreenPosY();
		var c = make_colour_hsv(255 * ((current_time % 1000) / 1000), 128, 255);
		draw_circle_color(window_mouse_get_x() - xx, window_mouse_get_y() - yy, 4, c, c, false);
		surface_reset_target();
		ImGui.Surface(surf);
		ImGui.EndChild();
	}
	ImGui.End();
}

if (demo_open) {
	demo_open = ImGui.ShowDemoWindow(demo_open);	
}