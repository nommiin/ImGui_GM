#include "../imgui_gm.h"

GMFUNC(__imgui_begin_popup) {
	const char* str_id = YYGetString(arg, 0);
	ImGuiWindowFlags flags = YYGetInt64(arg, 1);
	GMDEFAULT(ImGuiWindowFlags.None);

	Result.kind = VALUE_BOOL;
	Result.val = ImGui::BeginPopup(str_id, flags);
}

GMFUNC(__imgui_begin_popup_modal) {
	const char* name = YYGetString(arg, 0);
	bool open = YYGetBool(arg, 1);
	GMDEFAULT(undefined);
	ImGuiWindowFlags flags = YYGetInt64(arg, 2);
	GMDEFAULT(ImGuiWindowFlags.None);
	int64 mask = YYGetInt64(arg, 3);
	GMDEFAULT(ImGuiReturnMask.Return);

	bool* p_open = &open;
	if (!open) {
		if ((&arg[1])->kind == VALUE_UNDEFINED) {
			p_open = nullptr;
		}
	}

	bool ret = ImGui::BeginPopupModal(name, p_open, flags);
	Result.kind = VALUE_REAL;
	Result.val = ((open << 1) | static_cast<int>(ret)) & mask;
}

GMFUNC(__imgui_end_popup) {
	ImGui::EndPopup();
	Result.kind = VALUE_UNDEFINED;
}

GMFUNC(__imgui_open_popup) {
	const char* str_id = YYGetString(arg, 0);
	ImGuiPopupFlags flags = YYGetInt64(arg, 1);
	GMDEFAULT(ImGuiPopupFlags.None);

	ImGui::OpenPopup(str_id, flags);
	Result.kind = VALUE_UNDEFINED;
}

GMFUNC(__imgui_open_popup_on_item_click) {
	const char* str_id = YYGetString(arg, 0);
	GMDEFAULT(undefined);
	ImGuiPopupFlags flags = YYGetInt64(arg, 1);
	GMDEFAULT(ImGuiPopupFlags.MouseButtonRight);

	if ((&arg[0])->kind == VALUE_UNDEFINED) {
		str_id = NULL;
	}

	ImGui::OpenPopupOnItemClick(str_id, flags);
	Result.kind = VALUE_UNDEFINED;
}

GMFUNC(__imgui_close_current_popup) {
	ImGui::CloseCurrentPopup();
	Result.kind = VALUE_UNDEFINED;
}

GMFUNC(__imgui_begin_popup_context_item) {
	const char* str_id = YYGetString(arg, 0);
	GMDEFAULT(undefined);
	ImGuiPopupFlags flags = YYGetInt64(arg, 1);
	GMDEFAULT(ImGuiPopupFlags.MouseButtonRight);

	if ((&arg[0])->kind == VALUE_UNDEFINED) {
		str_id = NULL;
	}

	Result.kind = VALUE_BOOL;
	Result.val = ImGui::BeginPopupContextItem(str_id, flags);
}

GMFUNC(__imgui_begin_popup_context_window) {
	const char* str_id = YYGetString(arg, 0);
	GMDEFAULT(undefined);
	ImGuiPopupFlags flags = YYGetInt64(arg, 1);
	GMDEFAULT(ImGuiPopupFlags.MouseButtonRight);

	if ((&arg[0])->kind == VALUE_UNDEFINED) {
		str_id = NULL;
	}

	Result.kind = VALUE_BOOL;
	Result.val = ImGui::BeginPopupContextWindow(str_id, flags);
}

GMFUNC(__imgui_begin_popup_context_void) {
	const char* str_id = YYGetString(arg, 0);
	GMDEFAULT(undefined);
	ImGuiPopupFlags flags = YYGetInt64(arg, 1);
	GMDEFAULT(ImGuiPopupFlags.MouseButtonRight);

	if ((&arg[0])->kind == VALUE_UNDEFINED) {
		str_id = NULL;
	}

	Result.kind = VALUE_BOOL;
	Result.val = ImGui::BeginPopupContextVoid(str_id, flags);
}

GMFUNC(__imgui_is_popup_open) {
	const char* str_id = YYGetString(arg, 0);
	ImGuiPopupFlags flags = YYGetInt64(arg, 1);
	GMDEFAULT(ImGuiPopupFlags.None);

	Result.kind = VALUE_BOOL;
	Result.val = ImGui::IsPopupOpen(str_id, flags);
}