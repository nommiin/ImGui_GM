#include "../imgui_gm.h"

GMFUNC(__imgui_get_font) {
	Result.kind = VALUE_PTR;
	Result.ptr = ImGui::GetFont();
}

GMFUNC(__imgui_push_font) {
	RValue* ptr = &arg[0];
	GMDEFAULT(undefined);

	Result.kind = VALUE_UNDEFINED;
	if (ptr->kind == VALUE_UNDEFINED) {
		ImGui::PushFont(NULL);
		return;
	}
	ImGui::PushFont((ImFont*)ptr->ptr);
}

GMFUNC(__imgui_pop_font) {
	ImGui::PopFont();
	Result.kind = VALUE_UNDEFINED;
}

GMFUNC(__imgui_add_font_from_file) {
	const char* file = YYGetString(arg, 0);
	double size = YYGetReal(arg, 1);

	ImGuiIO& io = ImGui::GetIO();

	if (ImFont* font = io.Fonts->AddFontFromFileTTF(file, size)) {
		g_UpdateFont = true;
		Result.kind = VALUE_PTR;
		Result.ptr = font;
	}

	GMOVERRIDE(AddFontFromFile);
	GMRETURNS(Pointer|Undefined);
}

GMFUNC(__imgui_add_font_default) {
	ImGuiIO& io = ImGui::GetIO();

	if (ImFont* font = io.Fonts->AddFontDefault()) {
		g_UpdateFont = true;
		Result.kind = VALUE_PTR;
		Result.ptr = font;
	}

	GMOVERRIDE(AddFontDefault);
}

GMFUNC(__imgui_get_font_size) {
	Result.kind = VALUE_REAL;
	Result.val = ImGui::GetFontSize();
}
