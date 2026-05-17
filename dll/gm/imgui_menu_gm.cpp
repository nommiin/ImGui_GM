#include "../imgui_gm.h"

GMFUNC(__imgui_begin_menubar) {
	Result.kind = VALUE_BOOL;
	Result.val = ImGui::BeginMenuBar();
}

GMFUNC(__imgui_end_menubar) {
	ImGui::EndMenuBar();
	Result.kind = VALUE_UNDEFINED;
}

GMFUNC(__imgui_begin_mainmenubar) {
	Result.kind = VALUE_BOOL;
	Result.val = ImGui::BeginMainMenuBar();
}

GMFUNC(__imgui_end_mainmenubar) {
	ImGui::EndMainMenuBar();
	Result.kind = VALUE_UNDEFINED;
}

GMFUNC(__imgui_begin_menu) {
	const char* label = YYGetString(arg, 0);
	bool enabled = YYGetBool(arg, 1);
	GMDEFAULT(true);

	Result.kind = VALUE_BOOL;
	Result.val = ImGui::BeginMenu(label, enabled);
}

GMFUNC(__imgui_end_menu) {
	Result.kind = VALUE_UNDEFINED;
	ImGui::EndMenu();
}

GMFUNC(__imgui_menu_item) {
	const char* label = YYGetString(arg, 0);
	const char* shortcut = YYGetString(arg, 1);
	GMDEFAULT("");
	bool selected = YYGetBool(arg, 2);
	GMDEFAULT(undefined);
	bool enabled = YYGetBool(arg, 3);
	GMDEFAULT(true);
	int mask = YYGetReal(arg, 4);
	GMDEFAULT(ImGuiReturnMask.Return);

	bool* p_selected = &selected;
	if (!selected) {
		if ((&arg[2])->kind == VALUE_UNDEFINED) {
			p_selected = nullptr;
		}
	}

	bool ret = ImGui::MenuItem(label, (shortcut == "" ? nullptr : shortcut), p_selected, enabled);
	Result.kind = VALUE_REAL;
	Result.val = ((selected << 1) | static_cast<int>(ret)) & mask;
}