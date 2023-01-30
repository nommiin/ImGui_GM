#include "imgui_gm.h"

/// <summary>
/// General API functions
/// </summary>
/// <param name=""></param>

GMFUNC(__imgui_create_context) {
	Result.kind = VALUE_PTR;
	Result.ptr = ImGui::CreateContext();
}

GMFUNC(__imgui_destroy_context) {
	void* ctx = YYGetPtr(arg, 0);

	ImGui::DestroyContext((ImGuiContext*)ctx);
	Result.kind = VALUE_UNDEFINED;
}

GMFUNC(__imgui_get_current_context) {
	Result.kind = VALUE_PTR;
	Result.ptr = ImGui::GetCurrentContext();
}

GMFUNC(__imgui_set_current_context) {
	void* ctx = YYGetPtr(arg, 0);

	ImGui::SetCurrentContext((ImGuiContext*)ctx);
	Result.kind = VALUE_UNDEFINED;
}

GMFUNC(__imgui_show_demo_window) {
	bool open = YYGetBool(arg, 0);
	GMDEFAULT(undefined);

	bool* p_open = &open;
	if (!open) {
		if ((&arg[0])->kind == VALUE_UNDEFINED) {
			p_open = nullptr;
		}
	}

	ImGui::ShowDemoWindow(p_open);
	Result.kind = VALUE_BOOL;
	Result.val = open;
}

GMFUNC(__imgui_show_metrics_window) {
	bool open = YYGetBool(arg, 0);
	GMDEFAULT(undefined);

	bool* p_open = &open;
	if (!open) {
		if ((&arg[0])->kind == VALUE_UNDEFINED) {
			p_open = nullptr;
		}
	}

	ImGui::ShowMetricsWindow(p_open);
	Result.kind = VALUE_BOOL;
	Result.val = open;
}

GMFUNC(__imgui_show_debug_log_window) {
	bool open = YYGetBool(arg, 0);
	GMDEFAULT(undefined);

	bool* p_open = &open;
	if (!open) {
		if ((&arg[0])->kind == VALUE_UNDEFINED) {
			p_open = nullptr;
		}
	}

	ImGui::ShowDebugLogWindow(p_open);
	Result.kind = VALUE_BOOL;
	Result.val = open;
}

GMFUNC(__imgui_show_stack_tool_window) {
	bool open = YYGetBool(arg, 0);
	GMDEFAULT(undefined);

	bool* p_open = &open;
	if (!open) {
		if ((&arg[0])->kind == VALUE_UNDEFINED) {
			p_open = nullptr;
		}
	}

	ImGui::ShowStackToolWindow(p_open);
	Result.kind = VALUE_BOOL;
	Result.val = open;
}

GMFUNC(__imgui_show_about_window) {
	bool open = YYGetBool(arg, 0);
	GMDEFAULT(undefined);

	bool* p_open = &open;
	if (!open) {
		if ((&arg[0])->kind == VALUE_UNDEFINED) {
			p_open = nullptr;
		}
	}

	ImGui::ShowAboutWindow(p_open);
	Result.kind = VALUE_BOOL;
	Result.val = open;
}

GMFUNC(__imgui_show_style_editor) {
	ImGui::ShowStyleEditor();
	Result.kind = VALUE_UNDEFINED;
}

GMFUNC(__imgui_show_style_selector) {
	const char* label = YYGetString(arg, 0);

	Result.kind = VALUE_BOOL;
	Result.val = ImGui::ShowStyleSelector(label);
}

GMFUNC(__imgui_show_font_selector) {
	const char* label = YYGetString(arg, 0);

	ImGui::ShowFontSelector(label);
	Result.kind = VALUE_UNDEFINED;
}

GMFUNC(__imgui_show_user_guide) {
	ImGui::ShowUserGuide();
	Result.kind = VALUE_UNDEFINED;
}

GMFUNC(__imgui_get_version) {
	GMOVERRIDE(GetVersion);

	Result.kind = VALUE_STRING;
	YYCreateString(&Result, ImGui::GetVersion());
}

GMFUNC(__imgui_push_id) {
	RValue* id = &arg[0];
	GMHINT(String|Real);

	Result.kind = VALUE_UNDEFINED;
	if (id->kind == VALUE_STRING) {
		ImGui::PushID(id->GetString());
		return;
	}
	ImGui::PushID(id->val);
}

GMFUNC(__imgui_pop_id) {
	ImGui::PopID();
	Result.kind = VALUE_UNDEFINED;
}

GMFUNC(__imgui_get_id) {
	const char* str_id = YYGetString(arg, 0);

	Result.kind = VALUE_REAL;
	Result.val = ImGui::GetID(str_id);
}

GMFUNC(__imgui_begin_disabled) {
	bool disabled = YYGetBool(arg, 0);
	GMDEFAULT(true);

	ImGui::BeginDisabled(disabled);
	Result.kind = VALUE_UNDEFINED;
}

GMFUNC(__imgui_end_disabled) {
	ImGui::EndDisabled();
	Result.kind = VALUE_UNDEFINED;
}

GMFUNC(__imgui_is_item_hovered) {
	ImGuiHoveredFlags flags = YYGetReal(arg, 0);
	GMDEFAULT(ImGuiHoveredFlags.None);

	Result.kind = VALUE_BOOL;
	Result.val = ImGui::IsItemHovered(flags);
}

GMFUNC(__imgui_is_item_active) {
	Result.kind = VALUE_BOOL;
	Result.val = ImGui::IsItemActive();
}

GMFUNC(__imgui_is_item_focused) {
	Result.kind = VALUE_BOOL;
	Result.val = ImGui::IsItemFocused();
}

GMFUNC(__imgui_is_item_clicked) {
	ImGuiMouseButton mouse_button = YYGetReal(arg, 0);
	GMDEFAULT(ImGuiMouseButton.Left);

	Result.kind = VALUE_BOOL;
	Result.val = ImGui::IsItemClicked(mouse_button);
}

GMFUNC(__imgui_is_item_visible) {
	Result.kind = VALUE_BOOL;
	Result.val = ImGui::IsItemVisible();
}

GMFUNC(__imgui_is_item_edited) {
	Result.kind = VALUE_BOOL;
	Result.val = ImGui::IsItemEdited();
}

GMFUNC(__imgui_is_item_activated) {
	Result.kind = VALUE_BOOL;
	Result.val = ImGui::IsItemActivated();
}

GMFUNC(__imgui_is_item_deactivated) {
	Result.kind = VALUE_BOOL;
	Result.val = ImGui::IsItemDeactivated();
}

GMFUNC(__imgui_is_item_deactivated_after_edit) {
	Result.kind = VALUE_BOOL;
	Result.val = ImGui::IsItemDeactivatedAfterEdit();
}

GMFUNC(__imgui_is_item_toggled_open) {
	Result.kind = VALUE_BOOL;
	Result.val = ImGui::IsItemToggledOpen();
}

GMFUNC(__imgui_is_any_item_hovered) {
	Result.kind = VALUE_BOOL;
	Result.val = ImGui::IsAnyItemHovered();
}

GMFUNC(__imgui_is_any_item_active) {
	Result.kind = VALUE_BOOL;
	Result.val = ImGui::IsAnyItemActive();
}

GMFUNC(__imgui_is_any_item_focused) {
	Result.kind = VALUE_BOOL;
	Result.val = ImGui::IsAnyItemFocused();
}

GMFUNC(__imgui_get_item_id) {
	Result.kind = VALUE_REAL;
	Result.val = ImGui::GetItemID();
}

GMFUNC(__imgui_get_item_rect_min_x) {
	GMOVERRIDE(GetItemRectMinX);

	Result.kind = VALUE_REAL;
	Result.val = ImGui::GetItemRectMin().x;
}

GMFUNC(__imgui_get_item_rect_min_y) {
	GMOVERRIDE(GetItemRectMinY);

	Result.kind = VALUE_REAL;
	Result.val = ImGui::GetItemRectMin().y;
}

GMFUNC(__imgui_get_item_rect_max_x) {
	GMOVERRIDE(GetItemRectMaxX);

	Result.kind = VALUE_REAL;
	Result.val = ImGui::GetItemRectMax().x;
}

GMFUNC(__imgui_get_item_rect_max_y) {
	GMOVERRIDE(GetItemRectMaxY);

	Result.kind = VALUE_REAL;
	Result.val = ImGui::GetItemRectMax().y;
}

GMFUNC(__imgui_get_item_rect_size_x) {
	GMOVERRIDE(GetItemRectSizeX);

	Result.kind = VALUE_REAL;
	Result.val = ImGui::GetItemRectSize().x;
}

GMFUNC(__imgui_get_item_rect_size_y) {
	GMOVERRIDE(GetItemRectSizeY);

	Result.kind = VALUE_REAL;
	Result.val = ImGui::GetItemRectSize().y;
}

GMFUNC(__imgui_set_item_allow_overlap) {
	ImGui::SetItemAllowOverlap();
	Result.kind = VALUE_UNDEFINED;
}

GMFUNC(__imgui_is_rect_visible) {
	double x1 = YYGetReal(arg, 0);
	double y1 = YYGetReal(arg, 1);
	double x2 = YYGetReal(arg, 2);
	double y2 = YYGetReal(arg, 3);

	Result.kind = VALUE_BOOL;
	Result.val = ImGui::IsRectVisible(ImVec2(x1, y1), ImVec2(x2, y2));
}

GMFUNC(__imgui_get_time) {
	Result.kind = VALUE_REAL;
	Result.val = ImGui::GetTime();
}

GMFUNC(__imgui_get_frame_count) {
	Result.kind = VALUE_REAL;
	Result.val = ImGui::GetFrameCount();
}

GMFUNC(__imgui_calc_text_width) {
	const char* text = YYGetString(arg, 0);
	bool hide_text_after_double_hash = YYGetBool(arg, 1);
	GMDEFAULT(false);
	float wrap_width = YYGetFloat(arg, 2);
	GMDEFAULT(-1);
	GMOVERRIDE(CalcTextWidth);

	Result.kind = VALUE_REAL;
	Result.val = ImGui::CalcTextSize(text, NULL, hide_text_after_double_hash, wrap_width).x;
}

GMFUNC(__imgui_calc_text_height) {
	const char* text = YYGetString(arg, 0);
	bool hide_text_after_double_hash = YYGetBool(arg, 1);
	GMDEFAULT(false);
	float wrap_width = YYGetFloat(arg, 2);
	GMDEFAULT(-1);
	GMOVERRIDE(CalcTextHeight);

	Result.kind = VALUE_REAL;
	Result.val = ImGui::CalcTextSize(text, NULL, hide_text_after_double_hash, wrap_width).y;
}

GMFUNC(__imgui_push_allow_keyboard_focus) {
	bool allow_keyboard_focus = YYGetBool(arg, 0);

	ImGui::PushAllowKeyboardFocus(allow_keyboard_focus);
	Result.kind = VALUE_UNDEFINED;
}

GMFUNC(__imgui_pop_allow_keyboard_focus) {
	ImGui::PopAllowKeyboardFocus();
	Result.kind = VALUE_UNDEFINED;
}

GMFUNC(__imgui_set_keyboard_focus_here) {
	double offset = YYGetReal(arg, 0);
	GMDEFAULT(0);

	ImGui::SetKeyboardFocusHere(offset);
	Result.kind = VALUE_UNDEFINED;
}

GMFUNC(__imgui_push_button_repeat) {
	bool repeat = YYGetBool(arg, 0);

	ImGui::PushButtonRepeat(repeat);
	Result.kind = VALUE_UNDEFINED;
}

GMFUNC(__imgui_pop_button_repeat) {
	ImGui::PopButtonRepeat();
	Result.kind = VALUE_UNDEFINED;
}

GMFUNC(__imgui_set_item_default_focus) {
	ImGui::SetItemDefaultFocus();
	Result.kind = VALUE_UNDEFINED;
}

GMFUNC(__imgui_config_flags_get) {
	GMOVERRIDE(ConfigFlagsGet);

	ImGuiIO& io = ImGui::GetIO();
	Result.kind = VALUE_INT64;
	Result.val = io.ConfigFlags;
}

GMFUNC(__imgui_config_flags_set) {
	GMOVERRIDE(ConfigFlagsSet);
	ImGuiConfigFlags flags = YYGetInt64(arg, 0);

	ImGuiIO& io = ImGui::GetIO();
	io.ConfigFlags = flags;
}

GMFUNC(__imgui_config_flag_toggle) {
	GMOVERRIDE(ConfigFlagToggle);
	ImGuiConfigFlags flag = YYGetInt64(arg, 0);

	ImGuiIO& io = ImGui::GetIO();
	io.ConfigFlags ^= flag;
	Result.kind = VALUE_BOOL;
	Result.val = io.ConfigFlags & flag;
}

GMFUNC(__imgui_get_main_viewport) {
	Result.kind = VALUE_PTR;
	Result.ptr = ImGui::GetMainViewport();
}

GMFUNC(__imgui_log_text) {
	const char* text = YYGetString(arg, 0);

	ImGui::LogText(text);
	Result.kind = VALUE_UNDEFINED;
}