ImGui.Begin("gwagwa", true);

/*
c = make_color_rgb(255, 0, 0); ImGui.TextColored("red:" + string(c), c);
c = make_color_rgb(0, 255, 0); ImGui.TextColored("green:" + string(c), c);
c = make_color_rgb(0, 0, 255); ImGui.TextColored("blue:" + string(c), c);
c = make_color_hsv(255 * sin(current_time / 1500), 128, 255); ImGui.TextColored("sine:" + string(c), c);
*/

c = ImGui.ColorEdit3("hello", c);
ImGui.ColorEdit4("hello2", c_red);

if (ImGui.ColorButton("hiiii", c, 1)) {
	show_debug_message("hey");
}

ImGui.End();