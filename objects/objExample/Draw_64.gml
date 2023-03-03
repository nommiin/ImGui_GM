ImGui.__Render();

var payload = ImGui.GetDragDropPayload();
draw_text(4, 768, "FPS: " + string(fps) + " (" + string(fps_real) + ")\nImGui Version: " + string(ImGui.GetVersion()) + "\nImGui_GM Version: " + string(IMGUI_GM_VERSION));