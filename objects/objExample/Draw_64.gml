ImGui.__Render();

var payload = ImGui.GetDragDropPayload();
draw_text(4, 768, string("FPS: {0} ({1})\nImGui Version: {2}\nImGui_GM Version: {3}\nPayload: {4} (Type: {5})", fps, round(fps_real), ImGui.GetVersion(), IMGUI_GM_VERSION, string(payload), ImGui.GetDragDropPayloadType()));