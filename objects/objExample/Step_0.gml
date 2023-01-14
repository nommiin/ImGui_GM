// Setup
if (!surface_exists(surf)) {
	surf = surface_create(128, 128);
	surface_set_target(surf);
	draw_clear_alpha(c_lime, 0.25);
	surface_reset_target();
}

// Menu
var exit_modal = false;
ImGui.BeginMainMenuBar();
if (ImGui.BeginMenu("File")) {
	if (ImGui.MenuItem("Exit")) {
		exit_modal = true;
	}
	ImGui.EndMenu();
}

if (exit_modal) ImGui.OpenPopup("Exit?");

ImGui.SetNextWindowPos(window_get_width() / 2, window_get_height () / 2, ImGuiCond.Appearing, 0.5, 0.5);
if (ImGui.BeginPopupModal("Exit?", undefined, ImGuiWindowFlags.NoResize)) {
	ImGui.Text("Are you sure you want to exit?");
	ImGui.Separator();
	if (ImGui.Button("Yes")) game_end();
	ImGui.SameLine();
	if (ImGui.Button("Nevermind")) ImGui.CloseCurrentPopup();
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
		ImGui.EndChild();
		
		ImGui.SameLine();
		
		ImGui.BeginChild("Inner_Buttons", 0, height, true);
		ImGui.Text("Buttons");
		ImGui.Separator();
		if (ImGui.Button("ImGui::Button")) show_message_async("nice, you pressed the button");
		if (ImGui.SmallButton("ImGui::SmallButton")) show_message_async("nice, you pressed the smaller button");
		if (ImGui.InvisibleButton("ImGui::InvisibleButton", ImGui.GetContentRegionAvailX(), 24)) show_message_async("nice, you pressed the super secret invisible button");
		if (ImGui.ArrowButton("ImGui::ArrowButton", dir)) dir = (dir + 1) % 4;
		ImGui.SameLine();
		ImGui.Text("Direction: " + string(dir));
		ImGui.ColorButton("ImGui::ColorButton", c_orange, 0.5);
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
		
		ImGui.SameLine();
		
		ImGui.BeginChild("Inner_Tree", 0, height, true);
		ImGui.Text("Tree");
		ImGui.Separator();
		if (ImGui.TreeNode("ImGui::TreeNode")) {
			ImGui.Text("Hello!\nThis is some content inside of a tree node :)");
			ImGui.TreePop();
		}
		
		if (ImGui.TreeNode("Another Node")) {
			ImGui.Text("This is another tree node, for the sake of example!");
			ImGui.Image(sprExample, 0, c_red, 1, sprite_get_width(sprExample) / 2, sprite_get_height(sprExample) / 2);
			ImGui.TreePop();
		}
		
		var ret = ImGui.CollapsingHeader("ImGui::CollapsingHeader", header_visible, undefined, ImGuiReturnMask.Both);
		header_visible = ret & ImGuiReturnMask.Pointer;
		if (ret & ImGuiReturnMask.Return) {
			ImGui.TextColored("hewwo", c_aqua, 0.5);
			ImGui.Text("You can click the X icon at the side of the header to hide it!");
			ImGui.TreePop();	
		}
		
		if (!header_visible) {
			if (ImGui.Button("Restore Header")) {
				header_visible = true;		
			}
		}
		ImGui.EndChild();
	}
	ImGui.End();
}

if (demo_open) {
	demo_open = ImGui.ShowDemoWindow(demo_open);	
}