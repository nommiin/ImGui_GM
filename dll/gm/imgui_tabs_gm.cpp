#include "../imgui_gm.h"

GMFUNC(__imgui_begin_tab_bar) {
	const char* str_id = YYGetString(arg, 0);
	ImGuiTabBarFlags flags = YYGetInt64(arg, 1);
	GMDEFAULT(ImGuiTabBarFlags.None);

	Result.kind = VALUE_BOOL;
	Result.val = ImGui::BeginTabBar(str_id, flags);
}

GMFUNC(__imgui_end_tab_bar) {
	ImGui::EndTabBar();
	Result.kind = VALUE_UNDEFINED;
}

GMFUNC(__imgui_begin_tab_item) {
	const char* label = YYGetString(arg, 0);
	bool open = YYGetBool(arg, 1);
	GMDEFAULT(undefined);
	ImGuiTabItemFlags flags = YYGetInt64(arg, 2);
	GMDEFAULT(ImGuiTabItemFlags.None);
	int64 mask = YYGetInt64(arg, 3);
	GMDEFAULT(ImGuiReturnMask.Return);

	bool* p_open = &open;
	if (!open) {
		if ((&arg[1])->kind == VALUE_UNDEFINED) {
			p_open = nullptr;
		}
	}

	bool ret = ImGui::BeginTabItem(label, p_open, flags);
	Result.kind = VALUE_REAL;
	Result.val = ((open << 1) | static_cast<int>(ret)) & mask;
}

GMFUNC(__imgui_end_tab_item) {
	ImGui::EndTabItem();
	Result.kind = VALUE_UNDEFINED;
}

GMFUNC(__imgui_tab_item_button) {
	const char* label = YYGetString(arg, 0);
	ImGuiTabItemFlags flags = YYGetInt64(arg, 1);
	GMDEFAULT(ImGuiTabItemFlags.None);

	Result.kind = VALUE_BOOL;
	Result.val = ImGui::TabItemButton(label, flags);
}

GMFUNC(__imgui_set_tab_item_closed) {
	const char* tab_or_docked_window_label = YYGetString(arg, 0);

	ImGui::SetTabItemClosed(tab_or_docked_window_label);
	Result.kind = VALUE_UNDEFINED;
}