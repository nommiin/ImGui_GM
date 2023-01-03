#include "imgui.h"
#include "imgui_internal.h"
#include "imgui_impl_dx11.h"
#include "imgui_memory_editor.h"

#include "Extension_Interface.h"
#include "YYRValue.h"
#include "Ref.h"

#include <d3d11.h>
#include <vector>
#include <string>

extern ID3D11Device* g_pd3dDevice;
extern ID3D11DeviceContext* g_pd3dDeviceContext;

static ID3D11ShaderResourceView* g_pView;
static inline ID3D11ShaderResourceView* GetTexture() {
	g_pd3dDeviceContext->PSGetShaderResources(0, 1, &g_pView);
	g_pd3dDeviceContext->VSSetShaderResources(0, 1, &g_pView);
	return g_pView;
}

static RValue s_Copy;

#define GMFUNC(name) __declspec(dllexport) void name(RValue& Result, CInstance* selfinst, CInstance* otherinst, int argc, RValue* arg)

// Modifiers for brief
#define GMDEFAULT(...) /**/
#define GMPASSTHROUGH(...) /**/
#define GMHIDDEN(...) /**/
#define GMPREPEND(...) /**/
#define GMAPPEND(...) /**/
#define GMOVERRIDE(...) /**/
#define GMRETURN(...) /**/
#define GMHINT(...) /**/

#define GMCOLOR3_TO(col, alpha) ImColor((int)((int)col & 0xFF), (int)(((int)col >> 8) & 0xFF), (int)(((int)col >> 16) & 0xFF), (int)(alpha * 0xFF))
#define GMCOLOR4_TO(col) ImColor((int)((int)col & 0xFF), (int)(((int)col >> 8) & 0xFF), (int)(((int)col >> 16) & 0xFF), (int)(((int)col >> 24) & 0xFF))

#define GMCOLOR_FROM(col) (double)((int)(col[0] * 0xFF) | (int)((int)(col[1] * 0xFF) << 8) | (int)((int)(col[2] * 0xFF) << 16) | (int)((int)(col[3] * 0xFF) << 24))
#define SCRATCH_BUFFER_SIZE 4096

template<typename T> static inline T* YYGetArray(RValue* arg, int ind, int len) {
	RValue* arr = &arg[ind];
	T* val = new T[len];
	for (int i = 0; i < len; i++) {
		GET_RValue(&s_Copy, arr, NULL, i);
		val[i] = s_Copy.val;
	}
	return val;
}

template<typename T> static inline void YYSetArray(RValue* arg, T* arr, int len) {
	for (int i = 0; i < len; i++) {
		s_Copy.kind = VALUE_REAL;
		s_Copy.val = arr[i];
		SET_RValue(arg, &s_Copy, NULL, i);
	}
	return;
}

#pragma warning( push )
#pragma warning( disable : 4244 )

enum ImGuiReturnFlags {
	ImGuiReturnFlags_Visible = 1 << 0,
	ImGuiReturnFlags_Open = 1 << 1,
	ImGuiReturnFlags_Both = ImGuiReturnFlags_Visible | ImGuiReturnFlags_Open
};

// Direct bindings for ImGui functions to GML, add to ImGui statics
GMFUNC(__imgui_begin) {
	const char* name = YYGetString(arg, 0);
	bool open = YYGetBool(arg, 1);
	GMDEFAULT(undefined);
	int64 flags = YYGetInt64(arg, 2);
	GMDEFAULT(ImGuiWindowFlags.None);
	int64 ret_mask = YYGetInt64(arg, 3);
	GMDEFAULT(ImGuiReturnFlags.Open);
	
	bool ret = ImGui::Begin(name, &open, (ImGuiWindowFlags)flags);
	Result.kind = VALUE_REAL;
	Result.val = ((open << 1) | (int)ret) & ret_mask;
	return;
}

GMFUNC(__imgui_end) {
	ImGui::End();
	Result.kind = VALUE_UNDEFINED;
	return;
}

GMFUNC(__imgui_bring_window_to_display_front) {
	ImGuiWindow* window = (ImGuiWindow*)YYGetPtr(arg, 0);

	ImGui::BringWindowToDisplayFront(window);
	Result.kind = VALUE_UNDEFINED;
	return;
}

GMFUNC(__imgui_bring_window_to_display_back) {
	ImGuiWindow* window = (ImGuiWindow*)YYGetPtr(arg, 0);

	ImGui::BringWindowToDisplayBack(window);
	Result.kind = VALUE_UNDEFINED;
	return;
}

GMFUNC(__imgui_bring_window_to_display_behind) {
	ImGuiWindow* window = (ImGuiWindow*)YYGetPtr(arg, 0);
	ImGuiWindow* behind_window = (ImGuiWindow*)YYGetPtr(arg, 1);

	ImGui::BringWindowToDisplayBehind(window, behind_window);
	Result.kind = VALUE_UNDEFINED;
	return;
}

GMFUNC(__imgui_find_window_display_index) {
	ImGuiWindow* window = (ImGuiWindow*)YYGetPtr(arg, 0);

	Result.kind = VALUE_REAL;
	Result.val = ImGui::FindWindowDisplayIndex(window);
	return;
}

GMFUNC(__imgui_focus_window) {
	ImGuiWindow* window = (ImGuiWindow*)YYGetPtr(arg, 0);

	ImGui::FocusWindow(window);
	Result.kind = VALUE_UNDEFINED;
	return;
}

GMFUNC(__imgui_focus_top_mouse_window_under_one) {
	ImGuiWindow* under_window = (ImGuiWindow*)YYGetPtr(arg, 0);
	ImGuiWindow* ignore_window = (ImGuiWindow*)YYGetPtr(arg, 1);
	GMDEFAULT(pointer_null);

	ImGui::FocusTopMostWindowUnderOne(under_window, ignore_window);
	Result.kind = VALUE_UNDEFINED;
	return;
}

GMFUNC(__imgui_push_item_flag) {
	int64 flags = YYGetReal(arg, 0);
	bool enabled = YYGetBool(arg, 1);

	ImGui::PushItemFlag(flags, enabled);
	Result.kind = VALUE_UNDEFINED;
	return;
}

GMFUNC(__imgui_pop_item_flag) {
	ImGui::PopItemFlag();
	Result.kind = VALUE_UNDEFINED;
	return;
}

GMFUNC(__imgui_show_about) {
	bool show = YYGetBool(arg, 0);

	ImGui::ShowAboutWindow(&show);
	Result.kind = VALUE_UNDEFINED;
	return;
}

GMFUNC(__imgui_show_demo) {
	bool show = YYGetBool(arg, 0);

	ImGui::ShowDemoWindow(&show);
	Result.kind = VALUE_UNDEFINED;
	return;
}

GMFUNC(__imgui_show_style) {
	ImGui::ShowStyleEditor();
	Result.kind = VALUE_UNDEFINED;
	return;
}

GMFUNC(__imgui_begin_disabled) {
	bool disabled = YYGetBool(arg, 0);

	ImGui::BeginDisabled(disabled);
	Result.kind = VALUE_UNDEFINED;
	return;
}

GMFUNC(__imgui_end_disabled) {
	ImGui::EndDisabled();
	Result.kind = VALUE_UNDEFINED;
	return;
}

GMFUNC(__imgui_push_allow_keyboard_focus) {
	bool allow_keyboard_focus = YYGetBool(arg, 0);

	ImGui::PushAllowKeyboardFocus(allow_keyboard_focus);
	Result.kind = VALUE_UNDEFINED;
	return;
}

GMFUNC(__imgui_pop_allow_keyboard_focus) {
	ImGui::PopAllowKeyboardFocus();
	Result.kind = VALUE_UNDEFINED;
	return;
}

GMFUNC(__imgui_push_button_repeat) {
	bool repeat = YYGetBool(arg, 0);

	ImGui::PushButtonRepeat(repeat);
	Result.kind = VALUE_UNDEFINED;
	return;
}

GMFUNC(__imgui_pop_button_repeat) {
	ImGui::PopButtonRepeat();
	Result.kind = VALUE_UNDEFINED;
	return;
}

GMFUNC(__imgui_push_text_wrap_pos) {
	float wrap_pos_x = YYGetReal(arg, 0);

	ImGui::PushTextWrapPos(wrap_pos_x);
	Result.kind = VALUE_UNDEFINED;
	return;
}

GMFUNC(__imgui_pop_text_wrap_pos) {
	ImGui::PopTextWrapPos();
	Result.kind = VALUE_UNDEFINED;
	return;
}

GMFUNC(__imgui_is_window_child_of) {
	ImGuiWindow* window = (ImGuiWindow*)YYGetPtr(arg, 0);
	ImGuiWindow* potential_parent = (ImGuiWindow*)YYGetPtr(arg, 1);
	bool popup_hierarchy = YYGetBool(arg, 2);
	bool dock_hierarchy = YYGetBool(arg, 3);

	Result.kind = VALUE_BOOL;
	Result.val = ImGui::IsWindowChildOf(window, potential_parent, popup_hierarchy, dock_hierarchy);
	return;
}

GMFUNC(__imgui_is_window_within_begin_stack_of) {
	ImGuiWindow* window = (ImGuiWindow*)YYGetPtr(arg, 0);
	ImGuiWindow* potential_parent = (ImGuiWindow*)YYGetPtr(arg, 1);

	Result.kind = VALUE_BOOL;
	Result.val = ImGui::IsWindowWithinBeginStackOf(window, potential_parent);
	return;
}

GMFUNC(__imgui_is_window_above) {
	ImGuiWindow* potential_above = (ImGuiWindow*)YYGetPtr(arg, 0);
	ImGuiWindow* potential_below = (ImGuiWindow*)YYGetPtr(arg, 1);

	Result.kind = VALUE_BOOL;
	Result.val = ImGui::IsWindowAbove(potential_above, potential_below);
	return;
}

GMFUNC(__imgui_is_window_hovered) {
	int64 flags = YYGetReal(arg, 0);
	GMDEFAULT(ImGuiHoveredFlags.AnyWindow);

	Result.kind = VALUE_BOOL;
	Result.val = ImGui::IsWindowHovered(flags);
	return;
}

GMFUNC(__imgui_is_window_focused) {
	int64 flags = YYGetReal(arg, 0);
	GMDEFAULT(ImGuiFocusedFlags.AnyWindow);

	Result.kind = VALUE_BOOL;
	Result.val = ImGui::IsWindowHovered(flags);
	return;
}

GMFUNC(__imgui_is_window_docked) {
	Result.kind = VALUE_BOOL;
	Result.val = ImGui::IsWindowDocked();
	return;
}

GMFUNC(__imgui_is_window_nav_focusable) {
	ImGuiWindow* window = (ImGuiWindow*)YYGetPtr(arg, 0);

	Result.kind = VALUE_BOOL;
	Result.val = ImGui::IsWindowNavFocusable(window);
	return;
}

GMFUNC(__imgui_get_window_width) {
	Result.kind = VALUE_REAL;
	Result.val = ImGui::GetWindowWidth();
	return;
}

GMFUNC(__imgui_get_window_height) {
	Result.kind = VALUE_REAL;
	Result.val = ImGui::GetWindowHeight();
	return;
}

GMFUNC(__imgui_get_window_pos_x) {
	Result.kind = VALUE_REAL;
	/*
		ImGui::GetWindowPosX();
	*/
	Result.val = ImGui::GetWindowPos().x;
	return;
}

GMFUNC(__imgui_get_window_pos_y) {
	Result.kind = VALUE_REAL;
	/*
		ImGui::GetWindowPosY();
	*/
	Result.val = ImGui::GetWindowPos().y;
	return;
}

GMFUNC(__imgui_set_window_pos) {
	ImGuiWindow* window = (ImGuiWindow*)YYGetPtr(arg, 0);
	double x = YYGetReal(arg, 1);
	double y = YYGetReal(arg, 2);
	int64 cond = YYGetInt64(arg, 3);
	GMDEFAULT(ImGuiCond.Always);

	ImGui::SetWindowPos(window, ImVec2(x, y), cond);
	Result.kind = VALUE_UNDEFINED;
	return;
}

GMFUNC(__imgui_set_window_size) {
	ImGuiWindow* window = (ImGuiWindow*)YYGetPtr(arg, 0);
	double width = YYGetReal(arg, 1);
	double height = YYGetReal(arg, 2);
	int64 cond = YYGetInt64(arg, 3);
	GMDEFAULT(ImGuiCond.Always);

	ImGui::SetWindowSize(window, ImVec2(width, height), cond);
	Result.kind = VALUE_UNDEFINED;
	return;
}

GMFUNC(__imgui_set_window_collapsed) {
	ImGuiWindow* window = (ImGuiWindow*)YYGetPtr(arg, 0);
	bool collapsed = YYGetReal(arg, 1);
	int64 cond = YYGetInt64(arg, 2);
	GMDEFAULT(ImGuiCond.Always);

	ImGui::SetWindowCollapsed(window, collapsed, cond);
	Result.kind = VALUE_UNDEFINED;
	return;
}

GMFUNC(__imgui_is_window_collapsed) {
	Result.kind = VALUE_BOOL;
	Result.val = ImGui::IsWindowCollapsed();
	return;
}

GMFUNC(__imgui_is_window_appearing) {
	Result.kind = VALUE_BOOL;
	Result.val = ImGui::IsWindowAppearing();
	return;
}

GMFUNC(__imgui_set_window_focus) {
	ImGui::SetWindowFocus();
	Result.kind = VALUE_UNDEFINED;
	return;
}

GMFUNC(__imgui_set_next_window_pos) {
	double x = YYGetReal(arg, 0);
	double y = YYGetReal(arg, 1);
	int64 cond = YYGetInt64(arg, 2);
	GMDEFAULT(ImGuiCond.Always);
	double pivot_x = YYGetReal(arg, 3);
	GMDEFAULT(0);
	double pivot_y = YYGetReal(arg, 4);
	GMDEFAULT(0);

	ImGui::SetNextWindowPos(ImVec2(x, y), cond, ImVec2(pivot_x, pivot_y));
	Result.kind = VALUE_UNDEFINED;
	return;
}

GMFUNC(__imgui_set_next_window_size) {
	double width = YYGetReal(arg, 0);
	double height = YYGetReal(arg, 1);
	int64 cond = YYGetInt64(arg, 2);
	GMDEFAULT(ImGuiCond.Always);

	ImGui::SetNextWindowSize(ImVec2(width, height), cond);
	Result.kind = VALUE_UNDEFINED;
	return;
}

GMFUNC(__imgui_set_next_window_size_constraints) {
	double width_min = YYGetReal(arg, 0);
	double height_min = YYGetReal(arg, 1);
	double width_max = YYGetReal(arg, 2);
	double height_max = YYGetReal(arg, 3);

	ImGui::SetNextWindowSizeConstraints(ImVec2(width_min, height_min), ImVec2(width_max, height_max));
	Result.kind = VALUE_UNDEFINED;
	return;
}

GMFUNC(__imgui_set_next_window_content_size) {
	double width = YYGetReal(arg, 0);
	double height = YYGetReal(arg, 1);

	ImGui::SetNextWindowContentSize(ImVec2(width, height));
	Result.kind = VALUE_UNDEFINED;
	return;
}

GMFUNC(__imgui_set_next_window_scroll) {
	double x = YYGetReal(arg, 0);
	double y = YYGetReal(arg, 1);

	ImGui::SetNextWindowScroll(ImVec2(x, y));
	Result.kind = VALUE_UNDEFINED;
	return;
}

GMFUNC(__imgui_set_next_window_collapsed) {
	bool collapsed = YYGetBool(arg, 0);
	int64 cond = YYGetInt64(arg, 1);
	GMDEFAULT(ImGuiCond.Always);

	ImGui::SetNextWindowCollapsed(collapsed, cond);
	Result.kind = VALUE_UNDEFINED;
	return;
}

GMFUNC(__imgui_set_next_window_focus) {
	ImGui::SetNextWindowFocus();
	Result.kind = VALUE_UNDEFINED;
	return;
}

GMFUNC(__imgui_set_next_window_bg_alpha) {
	float alpha = YYGetReal(arg, 0);

	ImGui::SetNextWindowBgAlpha(alpha);
	Result.kind = VALUE_UNDEFINED;
	return;
}

GMFUNC(__imgui_set_window_font_scale) {
	float scale = YYGetReal(arg, 0);

	ImGui::SetWindowFontScale(scale);
	Result.kind = VALUE_UNDEFINED;
	return;
}

GMFUNC(__imgui_pushid) {
	RValue* id = &arg[0];
	GMHINT(String|Real);
	if (id->kind == VALUE_STRING) {
		ImGui::PushID(id->pRefString->m_thing);
	}
	else
	{
		ImGui::PushID((int)id->val);
	}

	// TODO: brief doesn't check inside of nested tokens, so we need to use GMOVERRIDE for now
	GMOVERRIDE(PushStyleVar);
	Result.kind = VALUE_UNDEFINED;
	return;
}

GMFUNC(__imgui_popid) {
	ImGui::PopID();
	Result.kind = VALUE_UNDEFINED;
	return;
}

GMFUNC(__imgui_is_rect_visible) {
	double width = YYGetReal(arg, 0);
	double height = YYGetReal(arg, 1);

	Result.kind = VALUE_BOOL;
	Result.val = ImGui::IsRectVisible(ImVec2(width, height));
	return;
}

GMFUNC(__imgui_get_cursor_pos_x) {
	Result.kind = VALUE_REAL;
	Result.val = ImGui::GetCursorPosX();
	return;
}

GMFUNC(__imgui_get_cursor_pos_y) {
	Result.kind = VALUE_REAL;
	Result.val = ImGui::GetCursorPosY();
	return;
}

GMFUNC(__imgui_get_cursor_start_x) {
	Result.kind = VALUE_REAL;
	Result.val = ImGui::GetCursorStartPos().x;
	return;
}

GMFUNC(__imgui_get_cursor_start_y) {
	Result.kind = VALUE_REAL;
	Result.val = ImGui::GetCursorStartPos().y;
	return;
}

GMFUNC(__imgui_set_cursor_pos) {
	double x = YYGetReal(arg, 0);
	double y = YYGetReal(arg, 1);

	ImGui::SetCursorPos(ImVec2(x, y));
	Result.kind = VALUE_UNDEFINED;
	return;
}

GMFUNC(__imgui_indent) {
	double width = YYGetReal(arg, 0);

	ImGui::Indent(width);
	Result.kind = VALUE_UNDEFINED;
	return;
}

GMFUNC(__imgui_unindent) {
	double width = YYGetReal(arg, 0);

	ImGui::Unindent(width);
	Result.kind = VALUE_UNDEFINED;
	return;
}

GMFUNC(__imgui_set_next_item_width) {
	double width = YYGetReal(arg, 0);

	ImGui::SetNextItemWidth(width);
	Result.kind = VALUE_UNDEFINED;
	return;
}

GMFUNC(__imgui_push_item_width) {
	double width = YYGetReal(arg, 0);

	ImGui::PushItemWidth(width);
	Result.kind = VALUE_UNDEFINED;
	return;
}

GMFUNC(__imgui_pop_item_width) {
	ImGui::PopItemWidth();
	Result.kind = VALUE_UNDEFINED;
	return;
}

GMFUNC(__imgui_calc_item_width) {
	Result.kind = VALUE_REAL;
	Result.val = ImGui::CalcItemWidth();
	return;
}

GMFUNC(__imgui_get_text_line_height) {
	Result.kind = VALUE_REAL;
	Result.val = ImGui::GetTextLineHeight();
	return;
}

GMFUNC(__imgui_get_text_line_height_with_spacing) {
	Result.kind = VALUE_REAL;
	Result.val = ImGui::GetTextLineHeightWithSpacing();
	return;
}

GMFUNC(__imgui_get_frame_height) {
	Result.kind = VALUE_REAL;
	Result.val = ImGui::GetFrameHeight();
	return;
}

GMFUNC(__imgui_get_frame_height_with_spacing) {
	Result.kind = VALUE_REAL;
	Result.val = ImGui::GetFrameHeightWithSpacing();
	return;
}

GMFUNC(__imgui_begin_group) {
	ImGui::BeginGroup();
	Result.kind = VALUE_UNDEFINED;
	return;
}

GMFUNC(__imgui_end_group) {
	ImGui::EndGroup();
	Result.kind = VALUE_UNDEFINED;
	return;
}

GMFUNC(__imgui_scroll_to_item) {
	int64 flags = YYGetReal(arg, 0);

	ImGui::ScrollToItem(flags);
	Result.kind = VALUE_UNDEFINED;
	return;
}

GMFUNC(__imgui_scroll_to_rect) {
	ImGuiWindow* window = (ImGuiWindow*)YYGetPtr(arg, 0);
	double x1 = YYGetReal(arg, 1);
	double y1 = YYGetReal(arg, 2);
	double x2 = YYGetReal(arg, 3);
	double y2 = YYGetReal(arg, 4);
	int64 flags = YYGetInt64(arg, 5);
	GMDEFAULT(ImGuiScrollFlags.None);

	ImGui::ScrollToRect(window, ImRect(x1, y1, x2, y2), flags);
	Result.kind = VALUE_UNDEFINED;
	return;
}

GMFUNC(__imgui_get_scroll_x) {
	Result.kind = VALUE_REAL;
	Result.val = ImGui::GetScrollX();
	return;
}

GMFUNC(__imgui_get_scroll_y) {
	Result.kind = VALUE_REAL;
	Result.val = ImGui::GetScrollY();
	return;
}

GMFUNC(__imgui_get_scroll_max_x) {
	Result.kind = VALUE_REAL;
	Result.val = ImGui::GetScrollMaxX();
	return;
}

GMFUNC(__imgui_get_scroll_max_y) {
	Result.kind = VALUE_REAL;
	Result.val = ImGui::GetScrollMaxY();
	return;
}

GMFUNC(__imgui_set_scroll_x) {
	float scroll_x = YYGetReal(arg, 0);
	ImGuiWindow* window = (ImGuiWindow*)YYGetPtr(arg, 1);
	GMDEFAULT(pointer_null);

	if (window)
	{
		ImGui::SetScrollX(window, scroll_x);
	}
	else
	{
		ImGui::SetScrollX(scroll_x);
	}

	Result.kind = VALUE_UNDEFINED;
	return;
}

GMFUNC(__imgui_set_scroll_y) {
	float scroll_x = YYGetReal(arg, 0);
	ImGuiWindow* window = (ImGuiWindow*)YYGetPtr(arg, 1);
	GMDEFAULT(pointer_null);

	if (window)
	{
		ImGui::SetScrollY(window, scroll_x);
	}
	else
	{
		ImGui::SetScrollY(scroll_x);
	}

	Result.kind = VALUE_UNDEFINED;
	return;
}

GMFUNC(__imgui_set_scroll_from_pos_x) {
	float local_x = YYGetReal(arg, 0);
	float center_x_ratio = YYGetReal(arg, 1);
	ImGuiWindow* window = (ImGuiWindow*)YYGetPtr(arg, 2);
	GMDEFAULT(pointer_null);

	if (window)
	{
		ImGui::SetScrollFromPosX(window, local_x, center_x_ratio);
	}
	else
	{
		ImGui::SetScrollFromPosX(local_x, center_x_ratio);
	}

	Result.kind = VALUE_UNDEFINED;
	return;
}

GMFUNC(__imgui_set_scroll_from_pos_y) {
	float local_y = YYGetReal(arg, 0);
	float center_y_ratio = YYGetReal(arg, 1);
	ImGuiWindow* window = (ImGuiWindow*)YYGetPtr(arg, 2);
	GMDEFAULT(pointer_null);

	if (window)
	{
		ImGui::SetScrollFromPosY(window, local_y, center_y_ratio);
	}
	else
	{
		ImGui::SetScrollFromPosY(local_y, center_y_ratio);
	}
	Result.kind = VALUE_UNDEFINED;
	return;
}

GMFUNC(__imgui_set_scroll_here_x) {
	float center_x_ratio = YYGetReal(arg, 0);

	ImGui::SetScrollHereX(center_x_ratio);
	Result.kind = VALUE_UNDEFINED;
	return;
}

GMFUNC(__imgui_set_scroll_here_y) {
	float center_y_ratio = YYGetReal(arg, 0);

	ImGui::SetScrollHereY(center_y_ratio);
	Result.kind = VALUE_UNDEFINED;
	return;
}

GMFUNC(__imgui_is_popup_open) {
	const char* str_id = YYGetString(arg, 0);
	int64 flags = YYGetReal(arg, 1);
	GMDEFAULT(ImGuiWindowFlags.None);

	Result.kind = VALUE_BOOL;
	Result.val = ImGui::IsPopupOpen(str_id, flags);
	return;
}

GMFUNC(__imgui_get_topmost_popup_modal) {
	Result.kind = VALUE_PTR;
	Result.ptr = ImGui::GetTopMostPopupModal();
	return;
}

GMFUNC(__imgui_get_topmost_and_visible_popup_modal) {
	Result.kind = VALUE_PTR;
	Result.ptr = ImGui::GetTopMostAndVisiblePopupModal();
	return;
}

GMFUNC(__imgui_open_popup) {
	const char* str_id = YYGetString(arg, 0);
	int64 flags = YYGetReal(arg, 1);
	GMDEFAULT(ImGuiWindowFlags.None);

	ImGui::OpenPopup(str_id, flags);
	Result.kind = VALUE_UNDEFINED;
	return;
}

GMFUNC(__imgui_close_popups_over_window) {
	ImGuiWindow* ref_window = (ImGuiWindow*)YYGetPtr(arg, 0);
	bool restore_focus_to_window_under_popup = YYGetBool(arg, 1);

	ImGui::ClosePopupsOverWindow(ref_window, restore_focus_to_window_under_popup);
	Result.kind = VALUE_UNDEFINED;
	return;
}

GMFUNC(__imgui_close_popups_except_modals) {
	ImGui::ClosePopupsExceptModals();
	Result.kind = VALUE_UNDEFINED;
	return;
}

GMFUNC(__imgui_close_popup_to_level) {
	int remaining = YYGetReal(arg, 0);
	bool restore_focus_to_window_under_popup = YYGetBool(arg, 1);

	ImGui::ClosePopupToLevel(remaining, restore_focus_to_window_under_popup);
	Result.kind = VALUE_UNDEFINED;
	return;
}

GMFUNC(__imgui_close_current_popup) {
	ImGui::CloseCurrentPopup();
	Result.kind = VALUE_UNDEFINED;
	return;
}

GMFUNC(__imgui_begin_popup) {
	const char* str_id = YYGetString(arg, 0);
	int64 flags = YYGetReal(arg, 1);
	GMDEFAULT(ImGuiWindowFlags.None);

	Result.kind = VALUE_BOOL;
	Result.val = ImGui::BeginPopup(str_id, flags);
	return;
}

GMFUNC(__imgui_begin_popup_modal) {
	const char* name = YYGetString(arg, 0);
	bool open = YYGetBool(arg, 1);
	GMDEFAULT(undefined);
	int64 flags = YYGetInt64(arg, 2);
	GMDEFAULT(ImGuiWindowFlags.None);
	int64 ret_mask = YYGetInt64(arg, 3);
	GMDEFAULT(ImGuiReturnFlags.Open);

	bool ret = ImGui::BeginPopupModal(name, &open, (ImGuiWindowFlags)flags);
	Result.kind = VALUE_REAL;
	Result.val = ((open << 1) | (int)ret) & ret_mask;
}

GMFUNC(__imgui_end_popup) {
	ImGui::EndPopup();
	Result.kind = VALUE_UNDEFINED;
	return;
}

GMFUNC(__imgui_is_item_hovered) {
	int64 flags = YYGetReal(arg, 0);
	GMDEFAULT(ImGuiHoveredFlags.None);

	Result.kind = VALUE_BOOL;
	Result.val = ImGui::IsItemHovered(flags);
	return;
}

//-------------------------------------------------------------------------
// [SECTION] Widgets: Text, etc.
//-------------------------------------------------------------------------
// UNSUPPORTED - TextUnformatted()
// - Text()
// UNSUPPORTED - TextV()
// - TextColored()
// UNSUPPORTED - TextColoredV()
// - TextDisabled()
// UNSUPPORTED - TextDisabledV()
// - TextWrapped()
// UNSUPPORTED - TextWrappedV()
// - LabelText()
// UNSUPPORTED - LabelTextV()
// - BulletText()
// UNSUPPORTED - BulletTextV()
//-------------------------------------------------------------------------
GMFUNC(__imgui_text) {
	const char* text = YYGetString(arg, 0);

	ImGui::Text(text);
	Result.kind = VALUE_UNDEFINED;
	return;
}

GMFUNC(__imgui_text_colored) {
	const char* text = YYGetString(arg, 0);
	int64 color = YYGetInt64(arg, 1);
	double alpha = YYGetReal(arg, 2);
	GMDEFAULT(1)

	ImGui::TextColored(GMCOLOR3_TO(color, alpha), text);
	Result.kind = VALUE_UNDEFINED;
	return;
}

GMFUNC(__imgui_text_disabled) {
	const char* text = YYGetString(arg, 0);

	ImGui::TextDisabled(text);
	Result.kind = VALUE_UNDEFINED;
	return;
}

GMFUNC(__imgui_text_wrapped) {
	const char* text = YYGetString(arg, 0);

	ImGui::TextWrapped(text);
	Result.kind = VALUE_UNDEFINED;
	return;
}

GMFUNC(__imgui_label_text) {
	const char* label = YYGetString(arg, 0);
	const char* text = YYGetString(arg, 1);

	ImGui::LabelText(label, text);
	Result.kind = VALUE_UNDEFINED;
	return;
}

GMFUNC(__imgui_bullet_text) {
	const char* text = YYGetString(arg, 0);

	ImGui::BulletText(text);
	Result.kind = VALUE_UNDEFINED;
	return;
}

//-------------------------------------------------------------------------
// [SECTION] Widgets: Main
//-------------------------------------------------------------------------
// - Button()
// - SmallButton()
// - InvisibleButton()
// - ArrowButton()
// - Image()
// - ImageButton()
// - Checkbox()
// UNSUPPORTED - CheckboxFlags()
// - RadioButton()
// - ProgressBar()
// - Bullet()
//-------------------------------------------------------------------------
GMFUNC(__imgui_button) {
	const char* label = YYGetString(arg, 0);
	double width = YYGetReal(arg, 1);
	GMDEFAULT(0);
	double height = YYGetReal(arg, 2);
	GMDEFAULT(0);

	Result.kind = VALUE_BOOL;
	Result.val = ImGui::Button(label, ImVec2(width, height));
	return;
}

GMFUNC(__imgui_small_button) {
	const char* label = YYGetString(arg, 0);

	Result.kind = VALUE_BOOL;
	Result.val = ImGui::SmallButton(label);
	return;
}

GMFUNC(__imgui_invisible_button) {
	const char* id = YYGetString(arg, 0);
	double width = YYGetReal(arg, 1);
	GMDEFAULT(0);
	double height = YYGetReal(arg, 2);
	GMDEFAULT(0);
	int64 flags = YYGetInt64(arg, 3);
	GMDEFAULT(ImGuiButtonFlags.None);

	Result.kind = VALUE_BOOL;
	Result.val = ImGui::InvisibleButton(id, ImVec2(width, height), flags);
	return;
}

GMFUNC(__imgui_arrow_button) {
	const char* id = YYGetString(arg, 0);
	int64 dir = YYGetInt64(arg, 1);

	Result.kind = VALUE_BOOL;
	Result.val = ImGui::ArrowButton(id, (ImGuiDir)dir);
	return;
}

GMFUNC(__imgui_image) {
	double spr = YYGetReal(arg, 0);
	double frame = YYGetReal(arg, 1);
	GMDEFAULT(0);
	double width = YYGetReal(arg, 2);
	GMDEFAULT(sprite_get_width(#arg0));
	double height = YYGetReal(arg, 3);
	GMDEFAULT(sprite_get_height(#arg0));
	double blend = YYGetReal(arg, 4);
	GMDEFAULT(c_white);
	double alpha = YYGetReal(arg, 5);
	GMDEFAULT(1);
	double* uvs = YYGetArray<double>(arg, 6, 4);
	GMPASSTHROUGH(sprite_get_uvs(#arg0, #arg1));
	GMHIDDEN();
	GMPREPEND(texture_set_stage(0, sprite_get_texture(#arg0, #arg1)););

	Result.kind = VALUE_UNDEFINED;
	ImGui::Image(GetTexture(), ImVec2(width, height), ImVec2(uvs[0], uvs[1]), ImVec2(uvs[2], uvs[3]), GMCOLOR3_TO(blend, alpha));
	delete[]uvs;
	return;
}

GMFUNC(__imgui_image_button) {
	const char* id = YYGetString(arg, 0);
	double spr = YYGetReal(arg, 1);
	double frame = YYGetReal(arg, 2);
	GMDEFAULT(0);
	double width = YYGetReal(arg, 3);
	GMDEFAULT(sprite_get_width(#arg1));
	double height = YYGetReal(arg, 4);
	GMDEFAULT(sprite_get_height(#arg1));
	double blend = YYGetReal(arg, 5);
	GMDEFAULT(c_white);
	double alpha = YYGetReal(arg, 6);
	GMDEFAULT(1);
	double* uvs = YYGetArray<double>(arg, 7, 4);
	GMPASSTHROUGH(sprite_get_uvs(#arg1, #arg2));
	GMHIDDEN();
	GMPREPEND(texture_set_stage(0, sprite_get_texture(#arg1, #arg2)););

	Result.kind = VALUE_BOOL;
	Result.val = ImGui::ImageButton(id, GetTexture(), ImVec2(width, height), ImVec2(uvs[0], uvs[1]), ImVec2(uvs[2], uvs[3]), ImColor(0, 0, 0, 0), GMCOLOR3_TO(blend, alpha));
	delete[]uvs;
	return;
}

GMFUNC(__imgui_checkbox) {
	const char* label = YYGetString(arg, 0);
	bool val = YYGetBool(arg, 1);

	ImGui::Checkbox(label, &val);
	Result.kind = VALUE_BOOL;
	Result.val = val;
	return;
}

GMFUNC(__imgui_radio_button) {
	const char* label = YYGetString(arg, 0);
	bool active = YYGetBool(arg, 1);

	ImGui::RadioButton(label, &active);
	Result.kind = VALUE_BOOL;
	Result.val = active;
	return;
}

GMFUNC(__imgui_progressbar) {
	double frac = YYGetReal(arg, 0);
	double width = YYGetReal(arg, 1);
	GMDEFAULT(0);
	double height = YYGetReal(arg, 2);
	GMDEFAULT(0);
	const char* overlay = YYGetString(arg, 3);
	GMDEFAULT("");

	ImGui::ProgressBar(frac, ImVec2(width, height), overlay);
	Result.kind = VALUE_UNDEFINED;
	return;
}

GMFUNC(__imgui_bullet) {
	ImGui::Bullet();
	Result.kind = VALUE_UNDEFINED;
	return;
}

//-------------------------------------------------------------------------
// [SECTION] Widgets: Low-level Layout helpers
//-------------------------------------------------------------------------
// - Spacing()
// - Dummy()
// - NewLine()
// - AlignTextToFramePadding()
// - Separator()
//-------------------------------------------------------------------------
GMFUNC(__imgui_spacing) {
	ImGui::Spacing();
	Result.kind = VALUE_UNDEFINED;
	return;
}

GMFUNC(__imgui_dummy) {
	double width = YYGetReal(arg, 0);
	double height = YYGetReal(arg, 1);
	ImGui::Dummy(ImVec2(width, height));
	Result.kind = VALUE_UNDEFINED;
	return;
}

GMFUNC(__imgui_newline) {
	ImGui::NewLine();
	Result.kind = VALUE_UNDEFINED;
	return;
}

GMFUNC(__imgui_align_text_to_frame_padding) {
	ImGui::AlignTextToFramePadding();
	Result.kind = VALUE_UNDEFINED;
	return;
}

GMFUNC(__imgui_separator) {
	ImGui::Separator();
	Result.kind = VALUE_UNDEFINED;
	return;
}

//-------------------------------------------------------------------------
// [SECTION] Widgets: ComboBox
//-------------------------------------------------------------------------
// - BeginCombo()
// - EndCombo()
// UNSUPPORTED - Combo()
//-------------------------------------------------------------------------
GMFUNC(__imgui_begin_combo) {
	const char* label = YYGetString(arg, 0);
	const char* preview_val = YYGetString(arg, 1);
	int64 flags = YYGetInt64(arg, 2);
	GMDEFAULT(ImGuiComboFlags.None);
	Result.kind = VALUE_BOOL;
	Result.val = ImGui::BeginCombo(label, preview_val, (ImGuiComboFlags)flags);
	return;
}

GMFUNC(__imgui_end_combo) {
	ImGui::EndCombo();
	Result.kind = VALUE_UNDEFINED;
	return;
}

//-------------------------------------------------------------------------
// [SECTION] Widgets: DragScalar, DragFloat, DragInt, etc.
//-------------------------------------------------------------------------
// UNSUPPORTED - DragScalar()
// UNSUPPORTED - DragScalarN()
// - DragFloat()
// - DragFloat2()
// - DragFloat3()
// - DragFloat4()
// - DragFloatRange2()
// - DragInt()
// - DragInt2()
// - DragInt3()
// - DragInt4()
// - DragIntRange2()
//-------------------------------------------------------------------------
GMFUNC(__imgui_drag_float) {
	const char* label = YYGetString(arg, 0);
	float val = YYGetFloat(arg, 1);
	double val_speed = YYGetReal(arg, 2);
	GMDEFAULT(1);
	double val_min = YYGetReal(arg, 3);
	GMDEFAULT(1);
	double val_max = YYGetReal(arg, 4);
	GMDEFAULT(1);
	const char* fmt = YYGetString(arg, 5);
	GMDEFAULT("%.3f");
	int64 flags = YYGetInt64(arg, 6);
	GMDEFAULT(ImGuiComboFlags.None);

	ImGui::DragFloat(label, &val, val_speed, val_min, val_max, fmt, flags);
	Result.kind = VALUE_REAL;
	Result.val = val;
	return;
}

GMFUNC(__imgui_drag_float2) {
	const int len = 2;

	const char* label = YYGetString(arg, 0);
	float* val = YYGetArray<float>(arg, 1, len);
	double val_speed = YYGetReal(arg, 2);
	GMDEFAULT(1);
	double val_min = YYGetReal(arg, 3);
	GMDEFAULT(1);
	double val_max = YYGetReal(arg, 4);
	GMDEFAULT(1);
	const char* fmt = YYGetString(arg, 5);
	GMDEFAULT("%.3f");
	int64 flags = YYGetInt64(arg, 6);
	GMDEFAULT(ImGuiComboFlags.None);

	if (ImGui::DragFloat2(label, val, val_speed, val_min, val_max, fmt, flags)) {
		YYSetArray(&arg[1], val, len);
	}
	Result = arg[1];
	return;
}

GMFUNC(__imgui_drag_float3) {
	const int len = 3;

	const char* label = YYGetString(arg, 0);
	float* val = YYGetArray<float>(arg, 1, len);
	double val_speed = YYGetReal(arg, 2);
	GMDEFAULT(1);
	double val_min = YYGetReal(arg, 3);
	GMDEFAULT(1);
	double val_max = YYGetReal(arg, 4);
	GMDEFAULT(1);
	const char* fmt = YYGetString(arg, 5);
	GMDEFAULT("%.3f");
	int64 flags = YYGetInt64(arg, 6);
	GMDEFAULT(ImGuiComboFlags.None);

	if (ImGui::DragFloat3(label, val, val_speed, val_min, val_max, fmt, flags)) {
		YYSetArray(&arg[1], val, len);
	}
	Result = arg[1];
	return;
}

GMFUNC(__imgui_drag_float4) {
	const int len = 4;

	const char* label = YYGetString(arg, 0);
	float* val = YYGetArray<float>(arg, 1, len);
	double val_speed = YYGetReal(arg, 2);
	GMDEFAULT(1);
	double val_min = YYGetReal(arg, 3);
	GMDEFAULT(1);
	double val_max = YYGetReal(arg, 4);
	GMDEFAULT(1);
	const char* fmt = YYGetString(arg, 5);
	GMDEFAULT("%.3f");
	int64 flags = YYGetInt64(arg, 6);
	GMDEFAULT(ImGuiComboFlags.None);

	if (ImGui::DragFloat4(label, val, val_speed, val_min, val_max, fmt, flags)) {
		YYSetArray(&arg[1], val, len);
	}
	Result = arg[1];
	return;
}

GMFUNC(__imgui_drag_float_range2) {
	const int len = 2;

	const char* label = YYGetString(arg, 0);
	float* val = YYGetArray<float>(arg, 1, len);
	double val_speed = YYGetReal(arg, 2);
	GMDEFAULT(1);
	double val_min = YYGetReal(arg, 3);
	GMDEFAULT(1);
	double val_max = YYGetReal(arg, 4);
	GMDEFAULT(1);
	const char* fmt = YYGetString(arg, 5);
	GMDEFAULT("%.3f");
	const char* fmt_max = YYGetString(arg, 6);
	GMDEFAULT("%.3f");
	int64 flags = YYGetInt64(arg, 7);
	GMDEFAULT(ImGuiComboFlags.None);

	Result.kind = VALUE_UNDEFINED;
	if (ImGui::DragFloatRange2(label, &val[0], &val[1], val_speed, val_min, val_max, fmt, fmt_max, (ImGuiComboFlags)flags)) {
		YYSetArray(&arg[1], val, len);
	}
	return;
}

GMFUNC(__imgui_drag_int) {
	const char* label = YYGetString(arg, 0);
	int val = YYGetReal(arg, 1);
	double val_speed = YYGetReal(arg, 2);
	GMDEFAULT(1);
	double val_min = YYGetReal(arg, 3);
	GMDEFAULT(1);
	double val_max = YYGetReal(arg, 4);
	GMDEFAULT(1);
	const char* fmt = YYGetString(arg, 5);
	GMDEFAULT("%d");
	int64 flags = YYGetInt64(arg, 6);
	GMDEFAULT(ImGuiComboFlags.None);

	ImGui::DragInt(label, &val, val_speed, val_min, val_max, fmt, flags);
	Result.kind = VALUE_REAL;
	Result.val = val;
	return;
}

GMFUNC(__imgui_drag_int2) {
	const int len = 2;

	const char* label = YYGetString(arg, 0);
	int* val = YYGetArray<int>(arg, 1, len);
	double val_speed = YYGetReal(arg, 2);
	GMDEFAULT(1);
	double val_min = YYGetReal(arg, 3);
	GMDEFAULT(1);
	double val_max = YYGetReal(arg, 4);
	GMDEFAULT(1);
	const char* fmt = YYGetString(arg, 5);
	GMDEFAULT("%d");
	int64 flags = YYGetInt64(arg, 6);
	GMDEFAULT(ImGuiComboFlags.None);

	if (ImGui::DragInt2(label, val, val_speed, val_min, val_max, fmt, flags)) {
		YYSetArray(&arg[1], val, len);
	}
	Result = arg[1];
	return;
}

GMFUNC(__imgui_drag_int3) {
	const int len = 3;

	const char* label = YYGetString(arg, 0);
	int* val = YYGetArray<int>(arg, 1, len);
	double val_speed = YYGetReal(arg, 2);
	GMDEFAULT(1);
	double val_min = YYGetReal(arg, 3);
	GMDEFAULT(1);
	double val_max = YYGetReal(arg, 4);
	GMDEFAULT(1);
	const char* fmt = YYGetString(arg, 5);
	GMDEFAULT("%d");
	int64 flags = YYGetInt64(arg, 6);
	GMDEFAULT(ImGuiComboFlags.None);

	if (ImGui::DragInt3(label, val, val_speed, val_min, val_max, fmt, flags)) {
		YYSetArray(&arg[1], val, len);
	}
	Result = arg[1];
	return;
}

GMFUNC(__imgui_drag_int4) {
	const int len = 4;

	const char* label = YYGetString(arg, 0);
	int* val = YYGetArray<int>(arg, 1, len);
	double val_speed = YYGetReal(arg, 2);
	GMDEFAULT(1);
	double val_min = YYGetReal(arg, 3);
	GMDEFAULT(1);
	double val_max = YYGetReal(arg, 4);
	GMDEFAULT(1);
	const char* fmt = YYGetString(arg, 5);
	GMDEFAULT("%d");
	int64 flags = YYGetInt64(arg, 6);
	GMDEFAULT(ImGuiComboFlags.None);

	if (ImGui::DragInt4(label, val, val_speed, val_min, val_max, fmt, flags)) {
		YYSetArray(&arg[1], val, len);
	}
	Result = arg[1];
	return;
}

GMFUNC(__imgui_drag_int_range2) {
	const int len = 2;

	const char* label = YYGetString(arg, 0);
	int* val = YYGetArray<int>(arg, 1, len);
	double val_speed = YYGetReal(arg, 2);
	GMDEFAULT(1);
	double val_min = YYGetReal(arg, 3);
	GMDEFAULT(1);
	double val_max = YYGetReal(arg, 4);
	GMDEFAULT(1);
	const char* fmt = YYGetString(arg, 5);
	GMDEFAULT("%.3f");
	const char* fmt_max = YYGetString(arg, 6);
	GMDEFAULT("%.3f");
	int64 flags = YYGetInt64(arg, 7);
	GMDEFAULT(ImGuiComboFlags.None);

	Result.kind = VALUE_UNDEFINED;
	if (ImGui::DragIntRange2(label, &val[0], &val[1], val_speed, val_min, val_max, fmt, fmt_max, (ImGuiComboFlags)flags)) {
		YYSetArray(&arg[1], val, len);
	}
	return;
}

//-------------------------------------------------------------------------
// [SECTION] Widgets: SliderScalar, SliderFloat, SliderInt, etc.
//-------------------------------------------------------------------------
// UNSUPPORTED - SliderScalar()
// UNSUPPORTED - SliderScalarN()
// - SliderFloat()
// - SliderFloat2()
// - SliderFloat3()
// - SliderFloat4()
// - SliderAngle()
// - SliderInt()
// - SliderInt2()
// - SliderInt3()
// - SliderInt4()
// - VSliderScalar()
// - VSliderFloat()
// - VSliderInt()
//-------------------------------------------------------------------------
GMFUNC(__imgui_slider_float) {
	const char* label = YYGetString(arg, 0);
	float val = YYGetFloat(arg, 1);
	double val_min = YYGetReal(arg, 2);
	GMDEFAULT(1);
	double val_max = YYGetReal(arg, 3);
	GMDEFAULT(1);
	const char* fmt = YYGetString(arg, 4);
	GMDEFAULT("%.3f");
	int64 flags = YYGetInt64(arg, 5);
	GMDEFAULT(ImGuiSliderFlags.None);

	ImGui::SliderFloat(label, &val, val_min, val_max, fmt, flags);
	Result.kind = VALUE_REAL;
	Result.val = val;
	return;
}

GMFUNC(__imgui_slider_float2) {
	const int len = 2;

	const char* label = YYGetString(arg, 0);
	float* val = YYGetArray<float>(arg, 1, len);
	GMDEFAULT(1);
	double val_min = YYGetReal(arg, 2);
	GMDEFAULT(1);
	double val_max = YYGetReal(arg, 3);
	GMDEFAULT(1);
	const char* fmt = YYGetString(arg, 4);
	GMDEFAULT("%.3f");
	int64 flags = YYGetInt64(arg, 5);
	GMDEFAULT(ImGuiSliderFlags.None);

	if (ImGui::SliderFloat2(label, val, val_min, val_max, fmt, flags)) {
		YYSetArray(&arg[1], val, len);
	}
	Result = arg[1];
	return;
}

GMFUNC(__imgui_slider_float3) {
	const int len = 3;

	const char* label = YYGetString(arg, 0);
	float* val = YYGetArray<float>(arg, 1, len);
	double val_min = YYGetReal(arg, 2);
	GMDEFAULT(1);
	double val_max = YYGetReal(arg, 3);
	GMDEFAULT(1);
	const char* fmt = YYGetString(arg, 4);
	GMDEFAULT("%.3f");
	int64 flags = YYGetInt64(arg, 5);
	GMDEFAULT(ImGuiSliderFlags.None);

	if (ImGui::SliderFloat3(label, val, val_min, val_max, fmt, flags)) {
		YYSetArray(&arg[1], val, len);
	}
	Result = arg[1];
	return;
}

GMFUNC(__imgui_slider_float4) {
	const int len = 4;

	const char* label = YYGetString(arg, 0);
	float* val = YYGetArray<float>(arg, 1, len);
	GMDEFAULT(1);
	double val_min = YYGetReal(arg, 2);
	GMDEFAULT(1);
	double val_max = YYGetReal(arg, 3);
	GMDEFAULT(1);
	const char* fmt = YYGetString(arg, 4);
	GMDEFAULT("%.3f");
	int64 flags = YYGetInt64(arg, 5);
	GMDEFAULT(ImGuiSliderFlags.None);

	if (ImGui::SliderFloat4(label, val, val_min, val_max, fmt, flags)) {
		YYSetArray(&arg[1], val, len);
	}
	Result = arg[1];
	return;
}

GMFUNC(__imgui_slider_angle) {
	const char* label = YYGetString(arg, 0);
	float v_rad = YYGetFloat(arg, 1);
	double v_deg_min = YYGetReal(arg, 2);
	GMDEFAULT(1);
	double v_deg_max = YYGetReal(arg, 3);
	GMDEFAULT(1);
	const char* fmt = YYGetString(arg, 4);
	GMDEFAULT("%.0f deg");
	int64 flags = YYGetInt64(arg, 5);
	GMDEFAULT(ImGuiSliderFlags.None);

	ImGui::SliderAngle(label, &v_rad, v_deg_min, v_deg_max, fmt, flags);
	Result.kind = VALUE_REAL;
	Result.val = v_rad;
	return;
}

GMFUNC(__imgui_slider_int) {
	const char* label = YYGetString(arg, 0);
	int val = YYGetReal(arg, 1);
	double val_min = YYGetReal(arg, 2);
	GMDEFAULT(1);
	double val_max = YYGetReal(arg, 3);
	GMDEFAULT(1);
	const char* fmt = YYGetString(arg, 4);
	GMDEFAULT("%d");
	int64 flags = YYGetInt64(arg, 5);
	GMDEFAULT(ImGuiSliderFlags.None);

	ImGui::SliderInt(label, &val, val_min, val_max, fmt, flags);
	Result.kind = VALUE_REAL;
	Result.val = val;
	return;
}

GMFUNC(__imgui_slider_int2) {
	const int len = 2;

	const char* label = YYGetString(arg, 0);
	int* val = YYGetArray<int>(arg, 1, len);
	GMDEFAULT(1);
	double val_min = YYGetReal(arg, 2);
	GMDEFAULT(1);
	double val_max = YYGetReal(arg, 3);
	GMDEFAULT(1);
	const char* fmt = YYGetString(arg, 4);
	GMDEFAULT("%d");
	int64 flags = YYGetInt64(arg, 5);
	GMDEFAULT(ImGuiSliderFlags.None);

	if (ImGui::SliderInt2(label, val, val_min, val_max, fmt, flags)) {
		YYSetArray(&arg[1], val, len);
	}
	Result = arg[1];
	return;
}

GMFUNC(__imgui_slider_int3) {
	const int len = 3;

	const char* label = YYGetString(arg, 0);
	int* val = YYGetArray<int>(arg, 1, len);
	GMDEFAULT(1);
	double val_min = YYGetReal(arg, 2);
	GMDEFAULT(1);
	double val_max = YYGetReal(arg, 3);
	GMDEFAULT(1);
	const char* fmt = YYGetString(arg, 4);
	GMDEFAULT("%d");
	int64 flags = YYGetInt64(arg, 5);
	GMDEFAULT(ImGuiSliderFlags.None);

	if (ImGui::SliderInt3(label, val, val_min, val_max, fmt, flags)) {
		YYSetArray(&arg[1], val, len);
	}
	Result = arg[1];
	return;
}

GMFUNC(__imgui_slider_int4) {
	const int len = 4;

	const char* label = YYGetString(arg, 0);
	int* val = YYGetArray<int>(arg, 1, len);
	GMDEFAULT(1);
	double val_min = YYGetReal(arg, 2);
	GMDEFAULT(1);
	double val_max = YYGetReal(arg, 3);
	GMDEFAULT(1);
	const char* fmt = YYGetString(arg, 4);
	GMDEFAULT("%d");
	int64 flags = YYGetInt64(arg, 5);
	GMDEFAULT(ImGuiSliderFlags.None);

	if (ImGui::SliderInt4(label, val, val_min, val_max, fmt, flags)) {
		YYSetArray(&arg[1], val, len);
	}
	Result = arg[1];
	return;
}

//-------------------------------------------------------------------------
// [SECTION] Widgets: InputScalar, InputFloat, InputInt, etc.
//-------------------------------------------------------------------------
// UNSUPPORTED - InputScalar()
// UNSUPPORTED - InputScalarN()
// - InputFloat()
// - InputFloat2()
// - InputFloat3()
// - InputFloat4()
// - InputInt()
// - InputInt2()
// - InputInt3()
// - InputInt4()
// - InputDouble()
//-------------------------------------------------------------------------
GMFUNC(__imgui_input_float) {
	const char* label = YYGetString(arg, 0);
	float val = YYGetReal(arg, 1);
	double step = YYGetReal(arg, 2);
	GMDEFAULT(1);
	double step_fast = YYGetReal(arg, 3);
	GMDEFAULT(1);
	const char* fmt = YYGetString(arg, 4);
	GMDEFAULT("%.3f");
	int64 flags = YYGetInt64(arg, 5);
	GMDEFAULT(ImGuiInputTextFlags.None);

	ImGui::InputFloat(label, &val, step, step_fast, fmt, flags);
	Result.kind = VALUE_REAL;
	Result.val = val;
	return;
}

GMFUNC(__imgui_input_float2) {
	const int len = 2;

	const char* label = YYGetString(arg, 0);
	float* val = YYGetArray<float>(arg, 1, len);
	GMDEFAULT(1);
	const char* fmt = YYGetString(arg, 2);
	GMDEFAULT("%.3f");
	int64 flags = YYGetInt64(arg, 3);
	GMDEFAULT(ImGuiSliderFlags.None);

	if (ImGui::InputFloat2(label, val, fmt, flags)) {
		YYSetArray(&arg[1], val, len);
	}
	Result = arg[1];
	return;
}

GMFUNC(__imgui_input_float3) {
	const int len = 3;

	const char* label = YYGetString(arg, 0);
	float* val = YYGetArray<float>(arg, 1, len);
	GMDEFAULT(1);
	const char* fmt = YYGetString(arg, 2);
	GMDEFAULT("%.3f");
	int64 flags = YYGetInt64(arg, 3);
	GMDEFAULT(ImGuiSliderFlags.None);

	if (ImGui::InputFloat3(label, val, fmt, flags)) {
		YYSetArray(&arg[1], val, len);
	}
	Result = arg[1];
	return;
}

GMFUNC(__imgui_input_float4) {
	const int len = 4;

	const char* label = YYGetString(arg, 0);
	float* val = YYGetArray<float>(arg, 1, len);
	GMDEFAULT(1);
	const char* fmt = YYGetString(arg, 2);
	GMDEFAULT("%.3f");
	int64 flags = YYGetInt64(arg, 3);
	GMDEFAULT(ImGuiSliderFlags.None);

	if (ImGui::InputFloat3(label, val, fmt, flags)) {
		YYSetArray(&arg[1], val, len);
	}
	Result = arg[1];
	return;
}

GMFUNC(__imgui_input_int) {
	const char* label = YYGetString(arg, 0);
	int val = YYGetReal(arg, 1);
	double step = YYGetReal(arg, 2);
	GMDEFAULT(1);
	double step_fast = YYGetReal(arg, 3);
	GMDEFAULT(100);
	int64 flags = YYGetInt64(arg, 4);
	GMDEFAULT(ImGuiInputTextFlags.None);

	ImGui::InputInt(label, &val, step, step_fast, flags);
	Result.kind = VALUE_REAL;
	Result.val = val;
	return;
}

GMFUNC(__imgui_input_int2) {
	const int len = 2;

	const char* label = YYGetString(arg, 0);
	int* val = YYGetArray<int>(arg, 1, len);
	GMDEFAULT(1);
	int64 flags = YYGetInt64(arg, 2);
	GMDEFAULT(ImGuiInputTextFlags.None);

	if (ImGui::InputInt2(label, val, flags)) {
		YYSetArray(&arg[1], val, len);
	}
	Result = arg[1];
	return;
}


GMFUNC(__imgui_input_int3) {
	const int len = 3;

	const char* label = YYGetString(arg, 0);
	int* val = YYGetArray<int>(arg, 1, len);
	GMDEFAULT(1);
	int64 flags = YYGetInt64(arg, 2);
	GMDEFAULT(ImGuiInputTextFlags.None);

	if (ImGui::InputInt3(label, val, flags)) {
		YYSetArray(&arg[1], val, len);
	}
	Result = arg[1];
	return;
}

GMFUNC(__imgui_input_int4) {
	const int len = 4;

	const char* label = YYGetString(arg, 0);
	int* val = YYGetArray<int>(arg, 1, len);
	GMDEFAULT(1);
	int64 flags = YYGetInt64(arg, 2);
	GMDEFAULT(ImGuiInputTextFlags.None);

	if (ImGui::InputInt4(label, val, flags)) {
		YYSetArray(&arg[1], val, len);
	}
	Result = arg[1];
	return;
}


GMFUNC(__imgui_input_double) {
	const char* label = YYGetString(arg, 0);
	double val = YYGetReal(arg, 1);
	double step = YYGetReal(arg, 2);
	GMDEFAULT(0);
	double step_fast = YYGetReal(arg, 3);
	GMDEFAULT(0);
	const char* fmt = YYGetString(arg, 4);
	GMDEFAULT("%.6f");
	int64 flags = YYGetInt64(arg, 5);
	GMDEFAULT(ImGuiInputTextFlags.None);

	ImGui::InputDouble(label, &val, step, step_fast, fmt, flags);
	Result.kind = VALUE_REAL;
	Result.val = val;
	return;
}

//-------------------------------------------------------------------------
// [SECTION] Widgets: InputText, InputTextMultiline, InputTextWithHint
//-------------------------------------------------------------------------
// - InputText()
// - InputTextWithHint()
// - InputTextMultiline()
//-------------------------------------------------------------------------
char INPUT_BUF[SCRATCH_BUFFER_SIZE];
GMFUNC(__imgui_input_text) {
	const char* label = YYGetString(arg, 0);
	const char* val = YYGetString(arg, 1);
	GMRETURN();
	int64 flags = YYGetInt64(arg, 2);
	GMDEFAULT(ImGuiInputTextFlags.None);

	strcpy_s(INPUT_BUF, val);
	ImGui::InputText(label, INPUT_BUF, IM_ARRAYSIZE(INPUT_BUF), (ImGuiInputTextFlags)flags);
	YYCreateString(&s_Copy, INPUT_BUF);
	COPY_RValue(&Result, &s_Copy);
	return;
}

GMFUNC(__imgui_input_text_with_hint) {
	const char* label = YYGetString(arg, 0);
	const char* hint = YYGetString(arg, 1);
	const char* val = YYGetString(arg, 2);
	GMRETURN();
	int64 flags = YYGetInt64(arg, 3);
	GMDEFAULT(ImGuiInputTextFlags.None);

	strcpy_s(INPUT_BUF, val);
	ImGui::InputTextWithHint(label, hint, INPUT_BUF, IM_ARRAYSIZE(INPUT_BUF), (ImGuiInputTextFlags)flags);
	YYCreateString(&s_Copy, INPUT_BUF);
	COPY_RValue(&Result, &s_Copy);
	return;
}

GMFUNC(__imgui_input_text_multiline) {
	const char* label = YYGetString(arg, 0);
	const char* val = YYGetString(arg, 1);
	GMRETURN();
	int64 flags = YYGetInt64(arg, 2);
	GMDEFAULT(ImGuiInputTextFlags.None);
	double width = YYGetReal(arg, 3);
	GMDEFAULT(0);
	double height = YYGetReal(arg, 4);
	GMDEFAULT(0);

	strcpy_s(INPUT_BUF, val);
	ImGui::InputTextMultiline(label, INPUT_BUF, IM_ARRAYSIZE(INPUT_BUF), ImVec2(width, height), (ImGuiInputTextFlags)flags);
	YYCreateString(&s_Copy, INPUT_BUF);
	COPY_RValue(&Result, &s_Copy);
	return;
}


//-------------------------------------------------------------------------
// [SECTION] Widgets: ColorEdit, ColorPicker, ColorButton, etc.
//-------------------------------------------------------------------------
// - ColorEdit3()
// - ColorEdit4()
// - ColorPicker3()
// - ColorPicker4()
// - ColorButton()
// - SetColorEditOptions()
//-------------------------------------------------------------------------
GMFUNC(__imgui_color_edit3) {
	const char* label = YYGetString(arg, 0);
	double color = YYGetReal(arg, 1);
	int64 flags = YYGetInt64(arg, 2);
	GMDEFAULT(ImGuiColorEditFlags.None);

	ImColor col = GMCOLOR3_TO(color, 1);

	Result.kind = VALUE_REAL;
	Result.val = color;
	if (ImGui::ColorEdit3(label, (float*)&col.Value, flags)) {
		Result.val = GMCOLOR_FROM(((float*)&col.Value));
	}
	return;
}

GMFUNC(__imgui_color_edit4) {
	const char* label = YYGetString(arg, 0);
	double color = YYGetReal(arg, 1);
	int64 flags = YYGetInt64(arg, 2);
	GMDEFAULT(ImGuiColorEditFlags.None);

	ImColor col = GMCOLOR4_TO(color, ((int)((int)color >> 24) & 0xFF) / 255);

	Result.kind = VALUE_REAL;
	Result.val = color;
	if (ImGui::ColorEdit4(label, (float*)&col.Value, flags)) {
		Result.val = GMCOLOR_FROM(((float*)&col.Value));
	}
	return;
}

GMFUNC(__imgui_color_picker3) {
	const char* label = YYGetString(arg, 0);
	double color = YYGetReal(arg, 1);
	int64 flags = YYGetInt64(arg, 2);
	GMDEFAULT(ImGuiColorEditFlags.None);

	ImColor col = GMCOLOR3_TO(color, 1);

	Result.kind = VALUE_REAL;
	Result.val = color;
	if (ImGui::ColorPicker3(label, (float*)&col.Value, flags)) {
		Result.val = GMCOLOR_FROM(((float*)&col.Value));
	}
	return;
}

GMFUNC(__imgui_color_picker4) {
	const char* label = YYGetString(arg, 0);
	double color = YYGetReal(arg, 1);
	int64 flags = YYGetInt64(arg, 2);
	GMDEFAULT(ImGuiColorEditFlags.None);

	ImColor col = GMCOLOR4_TO(color);

	Result.kind = VALUE_REAL;
	if (ImGui::ColorPicker4(label, (float*)&col.Value, flags)) {
		Result.val = GMCOLOR_FROM(((float*)&col.Value));
	}
	else
	{
		Result.val = color;
	}
	return;
}

GMFUNC(__imgui_color_button) {
	const char* id = YYGetString(arg, 0);
	double color = YYGetReal(arg, 1);
	double alpha = YYGetReal(arg, 2);
	GMDEFAULT(1)
	int64 flags = YYGetInt64(arg, 3);
	GMDEFAULT(ImGuiColorEditFlags.None);
	double width = YYGetReal(arg, 4);
	GMDEFAULT(0);
	double height = YYGetReal(arg, 5);
	GMDEFAULT(0);

	ImColor col = GMCOLOR3_TO(color, alpha);

	Result.kind = VALUE_BOOL;
	Result.val = ImGui::ColorButton(id, col, flags, ImVec2(width, height));
	return;
}

GMFUNC(__imgui_set_color_edit_options) {
	int64 flags = YYGetInt64(arg, 0);
	ImGui::SetColorEditOptions(flags);

	Result.kind = VALUE_UNDEFINED;
	return;
}

//-------------------------------------------------------------------------
// [SECTION] Widgets: TreeNode, CollapsingHeader, etc.
//-------------------------------------------------------------------------
// - TreeNode()
// UNSUPPORTED - TreeNodeV()
// - TreeNodeEx()
// UNSUPPORTED - TreeNodeExV()
// - TreePush()
// - TreePop()
// - GetTreeNodeToLabelSpacing()
// - SetNextItemOpen()
// - CollapsingHeader()
//-------------------------------------------------------------------------
GMFUNC(__imgui_treenode) {
	const char* label = YYGetString(arg, 0);

	Result.kind = VALUE_BOOL;
	Result.val = ImGui::TreeNode(label);
	return;
}

GMFUNC(__imgui_treenode_ex) {
	const char* label = YYGetString(arg, 0);
	int64 flags = YYGetInt64(arg, 1);
	GMDEFAULT(ImGuiTreeNodeFlags.None)

	Result.kind = VALUE_BOOL;
	Result.val = ImGui::TreeNodeEx(label, flags);
	return;
}

GMFUNC(__imgui_tree_push) {
	const char* id = YYGetString(arg, 0);

	ImGui::TreePush(id);
	Result.kind = VALUE_UNDEFINED;
	return;
}

GMFUNC(__imgui_tree_pop) {
	ImGui::TreePop();
	Result.kind = VALUE_UNDEFINED;
	return;
}

GMFUNC(__imgui_get_tree_node_to_label_spacing) {
	Result.kind = VALUE_REAL;
	Result.val = ImGui::GetTreeNodeToLabelSpacing();
	return;
}

GMFUNC(__imgui_set_next_item_open) {
	bool open = YYGetBool(arg, 0);
	int64 cond = YYGetInt64(arg, 1);
	GMDEFAULT(ImGuiCond.None);

	ImGui::SetNextItemOpen(open, cond);
	Result.kind = VALUE_UNDEFINED;
	return;
}

GMFUNC(__imgui_collapsing_header) {
	const char* label = YYGetString(arg, 0);
	bool open = YYGetBool(arg, 1);
	int64 flags = YYGetInt64(arg, 2);
	GMDEFAULT(ImGuiTreeNodeFlags.None);
	int64 ret_mask = YYGetInt64(arg, 3);
	GMDEFAULT(ImGuiReturnFlags.Open);

	bool ret = ImGui::CollapsingHeader(label, &open, (ImGuiTreeNodeFlags)flags);
	Result.kind = VALUE_REAL;
	Result.val = ((open << 1) | (int)ret) & ret_mask;
	return;
}

//-------------------------------------------------------------------------
// [SECTION] Widgets: Selectable
//-------------------------------------------------------------------------
// - Selectable()
//-------------------------------------------------------------------------
GMFUNC(__imgui_selectable) {
	const char* label = YYGetString(arg, 0);
	bool selected = YYGetBool(arg, 1);
	GMDEFAULT(false);
	int64 flags = YYGetInt64(arg, 2);
	GMDEFAULT(ImGuiSelectableFlags.None);
	double width = YYGetReal(arg, 3);
	GMDEFAULT(0);
	double height = YYGetReal(arg, 4);
	GMDEFAULT(0);

	Result.kind = VALUE_BOOL;
	Result.val = ImGui::Selectable(label, selected, flags, ImVec2(width, height));
	return;
}

//-------------------------------------------------------------------------
// [SECTION] Widgets: ListBox
//-------------------------------------------------------------------------
// - BeginListBox()
// - EndListBox()
// - ListBox()
//-------------------------------------------------------------------------
GMFUNC(__imgui_begin_listbox) {
	const char* label = YYGetString(arg, 0);
	double width = YYGetReal(arg, 1);
	GMDEFAULT(0);
	double height = YYGetReal(arg, 2);
	GMDEFAULT(0);

	Result.kind = VALUE_BOOL;
	Result.val = ImGui::BeginListBox(label, ImVec2(width, height));
	return;
}

GMFUNC(__imgui_end_listbox) {
	ImGui::EndListBox();
	Result.kind = VALUE_UNDEFINED;
	return;
}

static std::vector<const char*> s_Items;
static std::vector<std::string> s_Strings;
GMFUNC(__imgui_listbox) {
	const char* label = YYGetString(arg, 0);
	int ind = YYGetReal(arg, 1);
	RValue* items = &arg[2];
	GMHINT(Array<String>)
	double height_in_items = YYGetReal(arg, 3);
	GMDEFAULT(-1);

	s_Strings.clear();
	for (int i = 0; GET_RValue(&s_Copy, items, NULL, i); i++) {
		switch (s_Copy.kind) {
			case VALUE_STRING: {
				s_Strings.emplace_back(std::string(s_Copy.GetString()));
				break;
			}

			case VALUE_INT32:
			case VALUE_INT64:
			case VALUE_REAL: {
				s_Strings.emplace_back(std::to_string(s_Copy.asReal()));
				break;
			}

			case VALUE_UNDEFINED: {
				s_Strings.push_back("undefined");
				break;
			}

			default: {
				YYError("ImGui.Listbox unsupported type \"%s\" met at items[%d]", KIND_NAME_RValue(&s_Copy), i);
			}
		}
	}

	s_Items.clear();
	for (auto&& str : s_Strings) {
		s_Items.push_back(str.c_str());
	}
	ImGui::ListBox(label, &ind, s_Items.data(), (int)s_Items.size(), height_in_items);
	
	Result.kind = VALUE_REAL;
	Result.val = ind;
	return;
}

//-------------------------------------------------------------------------
// [SECTION] Widgets: PlotLines, PlotHistogram
//-------------------------------------------------------------------------
// - PlotLines()
// - PlotHistogram()
//-------------------------------------------------------------------------
static std::vector<float> s_Lines;
GMFUNC(__imgui_plot_lines) {
	const char* label = YYGetString(arg, 0);
	RValue* values = &arg[1];
	GMHINT(Array<Any>);
	const char* overlay = YYGetString(arg, 2);
	GMDEFAULT("");
	double width = YYGetReal(arg, 3);
	GMDEFAULT(0);
	double height = YYGetReal(arg, 4);
	GMDEFAULT(0);
	int stride = YYGetReal(arg, 5);
	GMDEFAULT(4);

	s_Lines.clear();
	for (int i = 0; GET_RValue(&s_Copy, values, NULL, i); i++) {
		s_Lines.push_back(s_Copy.val);
	}

	Result.kind = VALUE_UNDEFINED;
	ImGui::PlotLines(label, s_Lines.data(), s_Lines.size(), 0, overlay, FLT_MAX, FLT_MAX, ImVec2(width, height), stride);
	return;
}

GMFUNC(__imgui_plot_histogram) {
	const char* label = YYGetString(arg, 0);
	RValue* values = &arg[1];
	GMHINT(Array<Any>);
	const char* overlay = YYGetString(arg, 2);
	GMDEFAULT("");
	double width = YYGetReal(arg, 3);
	GMDEFAULT(0);
	double height = YYGetReal(arg, 4);
	GMDEFAULT(0);
	int stride = YYGetReal(arg, 5);
	GMDEFAULT(4);

	s_Lines.clear();
	for (int i = 0; GET_RValue(&s_Copy, values, NULL, i); i++) {
		s_Lines.push_back(s_Copy.val);
	}

	Result.kind = VALUE_UNDEFINED;
	ImGui::PlotHistogram(label, s_Lines.data(), s_Lines.size(), 0, overlay, FLT_MAX, FLT_MAX, ImVec2(width, height), stride);
	return;
}

//-------------------------------------------------------------------------
// [SECTION] MenuItem, BeginMenu, EndMenu, etc.
//-------------------------------------------------------------------------
// - BeginMenuBar()
// - EndMenuBar()
// - BeginMainMenuBar()
// - EndMainMenuBar()
// - BeginMenu()
// - EndMenu()
// - MenuItem()
//-------------------------------------------------------------------------
GMFUNC(__imgui_begin_menu_bar) {
	Result.kind = VALUE_BOOL;
	Result.val = ImGui::BeginMenuBar();
	return;
}

GMFUNC(__imgui_end_menu_bar) {
	ImGui::EndMenuBar();
	Result.kind = VALUE_UNDEFINED;
	return;
}

GMFUNC(__imgui_begin_main_menu_bar) {
	Result.kind = VALUE_BOOL;
	Result.val = ImGui::BeginMainMenuBar();
	return;
}

GMFUNC(__imgui_end_main_menu_bar) {
	ImGui::EndMainMenuBar();
	Result.kind = VALUE_UNDEFINED;
	return;
}

GMFUNC(__imgui_begin_menu) {
	const char* label = YYGetString(arg, 0);
	bool enabled = YYGetBool(arg, 1);
	GMDEFAULT(true);

	Result.kind = VALUE_BOOL;
	Result.val = ImGui::BeginMenu(label, enabled);
	return;
}

GMFUNC(__imgui_end_menu) {
	ImGui::EndMenu();
	Result.kind = VALUE_UNDEFINED;
	return;
}

GMFUNC(__imgui_menu_item) {
	const char* label = YYGetString(arg, 0);
	RValue* shortcut = &arg[1];
	GMDEFAULT(undefined);
	bool enabled = YYGetBool(arg, 2);
	GMDEFAULT(true);
	bool selected = YYGetBool(arg, 3);
	GMDEFAULT(false);
	GMAPPEND(show_debug_message("bruh"));

	Result.kind = VALUE_BOOL;
	Result.val = ImGui::MenuItem(label, shortcut->kind != VALUE_UNDEFINED ? shortcut->GetString() : NULL, selected, enabled);
	return;
}

//-------------------------------------------------------------------------
// [SECTION] Widgets: BeginTabBar, EndTabBar, etc.
//-------------------------------------------------------------------------
// - BeginTabBar()
// - EndTabBar()
//-------------------------------------------------------------------------
GMFUNC(__imgui_begin_tab_bar) {
	const char* id = YYGetString(arg, 0);
	int64 flags = YYGetInt64(arg, 1);
	GMDEFAULT(ImGuiTabBarFlags.None);

	Result.kind = VALUE_BOOL;
	Result.val = ImGui::BeginTabBar(id, (ImGuiTabBarFlags)flags);
	return;
}

GMFUNC(__imgui_end_tab_bar) {
	ImGui::EndTabBar();
	Result.kind = VALUE_UNDEFINED;
	return;
}

//-------------------------------------------------------------------------
// [SECTION] Widgets: BeginTabItem, EndTabItem, etc.
//-------------------------------------------------------------------------
// - BeginTabItem()
// - EndTabItem()
// - TabItemButton()
// - SetTabItemClosed()
//-------------------------------------------------------------------------
GMFUNC(__imgui_begin_tab_item) {
	const char* label = YYGetString(arg, 0);
	bool open = YYGetBool(arg, 1);// YYGetBool(arg, 1);
	GMDEFAULT(undefined);
	int64 flags = YYGetInt64(arg, 2);
	GMDEFAULT(ImGuiTabItemFlags.None);
	int64 ret_mask = YYGetInt64(arg, 3);
	GMDEFAULT(ImGuiReturnFlags.Visible);

	bool ret = ImGui::BeginTabItem(label, (arg[1].kind == VALUE_UNDEFINED) ? NULL : &open, (ImGuiTabItemFlags)flags);
	Result.kind = VALUE_REAL;
	Result.val = ((open << 1) | (int)ret) & ret_mask;
	return;
}

GMFUNC(__imgui_end_tab_item) {
	ImGui::EndTabItem();
	Result.kind = VALUE_UNDEFINED;
	return;
}

GMFUNC(__imgui_tab_item_button) {
	const char* label = YYGetString(arg, 0);
	int64 flags = YYGetInt64(arg, 1);
	GMDEFAULT(ImGuiTabItemFlags.None);

	Result.kind = VALUE_BOOL;
	Result.val = ImGui::TabItemButton(label, (ImGuiTabItemFlags)flags);
	return;
}

GMFUNC(__imgui_set_tab_item_closed) {
	const char* label = YYGetString(arg, 0);

	ImGui::SetTabItemClosed(label);
	Result.kind = VALUE_UNDEFINED;
	return;
}

//-----------------------------------------------------------------------------
// [SECTION] STYLING
//-----------------------------------------------------------------------------
GMFUNC(__imgui_get_style_color) {
	int idx = YYGetReal(arg, 0);

	const ImVec4 col = ImGui::GetStyleColorVec4(idx);
	Result.kind = VALUE_REAL;
	Result.val = (int)col.x | (((int)col.y << 8) & 0xFF) | (((int)col.y << 16) & 0xFF) | (((int)col.z << 24) & 0xFF);
	return;
}

GMFUNC(__imgui_get_style_color_name) {
	int idx = YYGetReal(arg, 0);
	Result.kind = VALUE_STRING;
	YYCreateString(&Result, ImGui::GetStyleColorName(idx));
	return;
}

GMFUNC(__imgui_push_style_color) {
	int idx = YYGetReal(arg, 0);
	double color = YYGetReal(arg, 1);
	float alpha = YYGetReal(arg, 2);
	GMDEFAULT(1);

	ImColor col = GMCOLOR3_TO(color, alpha);
	ImGui::PushStyleColor(idx, (ImVec4)col);
	Result.kind = VALUE_UNDEFINED;
	return;
}

GMFUNC(__imgui_pop_style_color) {
	int count = YYGetReal(arg, 0);
	GMDEFAULT(1);

	ImGui::PopStyleColor(count);
	Result.kind = VALUE_UNDEFINED;
	return;
}

GMFUNC(__imgui_push_style_var) {
	int idx = YYGetReal(arg, 0);
	float v1 = YYGetReal(arg, 1);
	RValue* v2 = &arg[2];
	GMDEFAULT(undefined);
	GMHINT(Real);

	if (v2->kind == VALUE_UNDEFINED) {
		ImGui::PushStyleVar(idx, v1);
	}
	else 
	{
		ImGui::PushStyleVar(idx, ImVec2(v1, (float)v2->val));
	}

	Result.kind = VALUE_UNDEFINED;
	return;
}

GMFUNC(__imgui_pop_style_var) {
	int count = YYGetReal(arg, 0);
	GMDEFAULT(1);

	ImGui::PopStyleVar(count);
	Result.kind = VALUE_UNDEFINED;
	return;
}

//-------------------------------------------------------------------------
// [SECTION] Speciality
//-------------------------------------------------------------------------
// - Surface()
//-------------------------------------------------------------------------
GMFUNC(__imgui_surface) {
	double surf = YYGetReal(arg, 0);
	double width = YYGetReal(arg, 1);
	GMDEFAULT(surface_get_width(#arg0));
	double height = YYGetReal(arg, 2);
	GMDEFAULT(surface_get_height(#arg0));
	double blend = YYGetReal(arg, 3);
	GMDEFAULT(c_white);
	double alpha = YYGetReal(arg, 4);
	GMDEFAULT(1);
	double* uvs = YYGetArray<double>(arg, 5, 4);
	GMPASSTHROUGH(texture_get_uvs(tex))
	GMHIDDEN();
	GMPREPEND(var tex = surface_get_texture(#arg0); texture_set_stage(0, tex));
	GMOVERRIDE(Surface);

	Result.kind = VALUE_UNDEFINED;
	ImGui::Image(GetTexture(), ImVec2(width, height), ImVec2(uvs[0], uvs[1]), ImVec2(uvs[2], uvs[3]), GMCOLOR3_TO(blend, alpha));
	delete[]uvs;
	return;
}

// TODO: This function just draws a standalone window, would be nice to build MemoryEditors from GM!
static MemoryEditor buffer_edit;
GMFUNC(__imgui_buffer) {
	const char* title = YYGetString(arg, 0);
	double ind = YYGetReal(arg, 1);
	double size = YYGetReal(arg, 2);
	GMDEFAULT(buffer_get_size(#arg1));
	GMOVERRIDE(Buffer);

	void* buff = BufferGet(BufferGetFromGML(ind));
	buffer_edit.DrawWindow(title, buff, size);
	Result.kind = VALUE_UNDEFINED;
	return;
}

//-----------------------------------------------------------------------------
// [SECTION] TOOLTIPS
//-----------------------------------------------------------------------------
GMFUNC(__imgui_begin_tooltip) {
	ImGui::BeginTooltip();
	Result.kind = VALUE_UNDEFINED;
	return;
}

GMFUNC(__imgui_end_tooltip) {
	ImGui::EndTooltip();
	Result.kind = VALUE_UNDEFINED;
	return;
}

GMFUNC(__imgui_set_tooltip) {
	const char* val = YYGetString(arg, 0);

	ImGui::SetTooltip(val);
	Result.kind = VALUE_UNDEFINED;
	return;
}

#pragma warning( pop )