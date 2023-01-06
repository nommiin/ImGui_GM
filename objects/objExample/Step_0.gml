ImGui.Begin("gwagwa", true);
ImGui.Text("hello?");
ImGui.TextColored("hello?", c_red, abs(sin(current_time / 250)));
ImGui.Image(sprAngy, 0, c_red, 1, 32, 64);
ImGui.Button("no thank you", 32);

bbb = ImGui.InputText("hello", bbb);
bruh = ImGui.InputInt("hello2", bruh);

ImGui.End();