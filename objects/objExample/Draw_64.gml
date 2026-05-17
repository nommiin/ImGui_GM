ImGui.__Render();
draw_text(4, 768,
	string("FPS: {0} ({1})\nMemory: {2} MB ({3} KB)\nImGui Version: {4}\nImGui_GM Version: {5}",
		fps,
		fps_real,
		memory / 1000000,
		(sign(memory_difference) ? "+" : "") + string(memory_difference / 1000),
		ImGui.GetVersion(),
		IMGUI_GM_VERSION
	)
);