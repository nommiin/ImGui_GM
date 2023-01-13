ImGui.__Render();
draw_text(4, 256, string("FPS: {0} ({1})\nImGui Version: {2}", fps, round(fps_real), ImGui.GetVersion()));