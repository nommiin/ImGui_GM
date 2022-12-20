ImGui.ShowDemoWindow();
ImGui.ShowAboutWindow();

ImGui.SetNextWindowSize(640, 480, ImGuiCond.Once);
if (!surface_exists(surface)) {
	surface = surface_create(160, 160);
	surface_set_target(surface);
	draw_clear_alpha(c_aqua, 0.25);
	draw_text(2, 2, "hi from GM");
	surface_reset_target();
}

if (open) {
	var ret = ImGui.Begin("ImGui_GM Debug", open, ImGuiWindowFlags.None, ImGuiReturnFlags.Both);
	open = ret & ImGuiReturnFlags.Open;
	
	if (ret & ImGuiReturnFlags.Visible) {
		ImGui.BulletText("ImGui.Text");
		ImGui.Text("Hello World!");
		ImGui.Separator();
		
		ImGui.BulletText("ImGui.TextColored");
		ImGui.TextColored("Hello World! :3", c_fuchsia, 1);
		ImGui.Separator();
		
		ImGui.BulletText("ImGui.Image");
		ImGui.Image(sprAngy, 0,,,color);
		if (ImGui.IsItemHovered()) {
			ImGui.SetTooltip("grrr....");
		}
		ImGui.Separator();
		
		ImGui.BulletText("ImGui.ColorEdit3");
		color = ImGui.ColorEdit3("Color", color);
		ImGui.Separator();
		
		ImGui.BulletText("ImGui.InputText");
		text = ImGui.InputText("Input", text);
		ImGui.Text(string("you wrote: {0} ({1} letters)", text, string_length(text)));
		ImGui.Separator();
		
		ImGui.BulletText("ImGui.Surface");
		var _x = ImGui.GetWindowPosX() + (ImGui.GetCursorPosX() - ImGui.GetScrollX()), _y = ImGui.GetWindowPosY() + (ImGui.GetCursorPosY() - ImGui.GetScrollY());
		surface_set_target(surface);
		draw_set_alpha(0.8);
		draw_circle_color(window_mouse_get_x() - _x, window_mouse_get_y() - _y, 8, color, color, false);
		draw_set_alpha(1);
		surface_reset_target();
		ImGui.Surface(surface);
		ImGui.Separator();
		
		ImGui.BulletText("ImGui.Combo");
		if (ImGui.BeginCombo("Combo Selection", combo[combo_sel])) {
			for(var i = 0; i < array_length(combo); i++) {
				if (ImGui.Selectable(combo[i], i == combo_sel)) {
					combo_sel = i;	
				}
			}
			ImGui.EndCombo();
		}
		ImGui.Separator();
		
		ImGui.End();
	}
}

frame++;