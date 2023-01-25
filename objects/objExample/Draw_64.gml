var payload = ImGui.GetDragDropPayload();
draw_text(4, 256, string("FPS: {0} ({1})\nImGui Version: {2}\nPayload: {3} (Type: {4})", fps, round(fps_real), ImGui.GetVersion(), string(payload), ImGui.GetDragDropPayloadType()));

// Notice that even though ImGui.__Render() is being called after the above text, the text will still render on-top
ImGui.__Render();