draw_text(4, 256, string("FPS: {0} ({1})\nImGui Version: {2}", fps, round(fps_real), ImGui.GetVersion()));

// Notice that even though ImGui.__Render() is being called after the above text, the text will still render on-top
ImGui.__Render();