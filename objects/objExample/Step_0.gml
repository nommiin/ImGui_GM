ImGui.Begin("gwagwa", true);
ImGui.Text("hello?");
ImGui.TextColored("hello?", c_red, abs(sin(current_time / 250)));
ImGui.Image(sprAngy, 0, c_red, 1, 32, 64);
ImGui.Button("no thank you", 32);

bruh = ImGui.InputInt("hello", bruh);

ImGui.End();