#include "../imgui_gm.h"

GMFUNC(__imgui_begin) {
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

	bool ret = ImGui::Begin(name, p_open, flags);
	Result.kind = VALUE_REAL;
	Result.val = ((open << 1) | static_cast<int>(ret)) & mask;
}

GMFUNC(__imgui_end) {
	ImGui::End();
	Result.kind = VALUE_UNDEFINED;
}

GMFUNC(__imgui_begin_child) {
	const char* str_id = YYGetString(arg, 0);
	double width = YYGetReal(arg, 1);
	GMDEFAULT(0);
	double height = YYGetReal(arg, 2);
	GMDEFAULT(0);
	ImGuiChildFlags child_flags = YYGetInt64(arg, 3);
	GMDEFAULT(ImGuiChildFlags.None);
	ImGuiWindowFlags window_flags = YYGetInt64(arg, 4);
	GMDEFAULT(ImGuiWindowFlags.None);

	Result.kind = VALUE_BOOL;
	Result.val = ImGui::BeginChild(str_id, ImVec2(width, height), child_flags, window_flags);
}

GMFUNC(__imgui_end_child) {
	ImGui::EndChild();
	Result.kind = VALUE_UNDEFINED;
}

GMFUNC(__imgui_begin_child_frame) {
	double id = YYGetReal(arg, 0);
	double width = YYGetReal(arg, 1);
	GMDEFAULT(0);
	double height = YYGetReal(arg, 2);
	GMDEFAULT(0);
	ImGuiWindowFlags flags = YYGetInt64(arg, 3);
	GMDEFAULT(ImGuiWindowFlags.None);

	Result.kind = VALUE_BOOL;
	Result.val = ImGui::BeginChildFrame(id, ImVec2(width, height), flags);
}

GMFUNC(__imgui_end_child_frame) {
	ImGui::EndChildFrame();
	Result.kind = VALUE_UNDEFINED;
}

GMFUNC(__imgui_is_window_appearing) {
	Result.kind = VALUE_BOOL;
	Result.val = ImGui::IsWindowAppearing();
}

GMFUNC(__imgui_is_window_collapsed) {
	Result.kind = VALUE_BOOL;
	Result.val = ImGui::IsWindowCollapsed();
}

GMFUNC(__imgui_is_window_focused) {
	ImGuiHoveredFlags flags = YYGetInt64(arg, 0);
	GMDEFAULT(ImGuiFocusedFlags.None);

	Result.kind = VALUE_BOOL;
	Result.val = ImGui::IsWindowFocused(flags);
}

GMFUNC(__imgui_is_window_hovered) {
	ImGuiHoveredFlags flags = YYGetInt64(arg, 0);
	GMDEFAULT(ImGuiHoveredFlags.None);

	Result.kind = VALUE_BOOL;
	Result.val = ImGui::IsWindowHovered(flags);
}

GMFUNC(__imgui_get_window_dpi_scale) {
	Result.kind = VALUE_REAL;
	Result.val = ImGui::GetWindowDpiScale();
}

GMFUNC(__imgui_get_window_x) {
	GMOVERRIDE(GetWindowPosX);

	Result.kind = VALUE_REAL;
	Result.val = ImGui::GetWindowPos().x;
}

GMFUNC(__imgui_get_window_y) {
	GMOVERRIDE(GetWindowPosY);

	Result.kind = VALUE_REAL;
	Result.val = ImGui::GetWindowPos().y;
}

GMFUNC(__imgui_get_window_width) {
	Result.kind = VALUE_REAL;
	Result.val = ImGui::GetWindowWidth();
}

GMFUNC(__imgui_get_window_height) {
	Result.kind = VALUE_REAL;
	Result.val = ImGui::GetWindowHeight();
}

GMFUNC(__imgui_get_window_viewport) {
	Result.kind = VALUE_PTR;
	Result.ptr = ImGui::GetWindowViewport();
}

GMFUNC(__imgui_set_window_font_scale) {
	float scale = YYGetFloat(arg, 0);

	ImGui::SetWindowFontScale(scale);

	Result.kind = VALUE_UNDEFINED;
}

GMFUNC(__imgui_set_next_window_viewport) {
	double id = YYGetReal(arg, 0);

	ImGui::SetNextWindowViewport(id);

	Result.kind = VALUE_UNDEFINED;
}

GMFUNC(__imgui_set_next_window_pos) {
	double x = YYGetReal(arg, 0);
	double y = YYGetReal(arg, 1);
	ImGuiCond cond = YYGetInt64(arg, 2);
	GMDEFAULT(ImGuiCond.None);
	double pivot_x = YYGetReal(arg, 3);
	GMDEFAULT(0);
	double pivot_y = YYGetReal(arg, 4);
	GMDEFAULT(0);

	ImGui::SetNextWindowPos(ImVec2(x, y), cond, ImVec2(pivot_x, pivot_y));
	Result.kind = VALUE_UNDEFINED;
}

GMFUNC(__imgui_set_next_window_size) {
	double width = YYGetReal(arg, 0);
	double height = YYGetReal(arg, 1);
	ImGuiCond cond = YYGetInt64(arg, 2);
	GMDEFAULT(ImGuiCond.None);

	ImGui::SetNextWindowSize(ImVec2(width, height), cond);
	Result.kind = VALUE_UNDEFINED;
}

GMFUNC(__imgui_set_next_window_size_constraints) {
	double min_width = YYGetReal(arg, 0);
	double min_height = YYGetReal(arg, 1);
	double max_width = YYGetReal(arg, 2);
	double max_height = YYGetReal(arg, 3);
	// TODO: callback :v

	ImGui::SetNextWindowSizeConstraints(ImVec2(min_width, min_height), ImVec2(max_width, max_height));
	Result.kind = VALUE_UNDEFINED;
}

GMFUNC(__imgui_set_next_window_content_size) {
	double width = YYGetReal(arg, 0);
	double height = YYGetReal(arg, 1);

	ImGui::SetNextWindowContentSize(ImVec2(width, height));
	Result.kind = VALUE_UNDEFINED;
}

GMFUNC(__imgui_set_next_window_collapsed) {
	bool collapsed = YYGetBool(arg, 0);
	ImGuiCond cond = YYGetInt64(arg, 1);
	GMDEFAULT(ImGuiCond.None);

	ImGui::SetNextWindowCollapsed(collapsed, cond);
	Result.kind = VALUE_UNDEFINED;
}

GMFUNC(__imgui_set_next_window_focus) {
	ImGui::SetNextWindowFocus();
	Result.kind = VALUE_UNDEFINED;
}

GMFUNC(__imgui_set_next_window_scroll) {
	double scroll_x = YYGetReal(arg, 0);
	double scroll_y = YYGetReal(arg, 1);

	ImGui::SetNextWindowScroll(ImVec2(scroll_x, scroll_y));
	Result.kind = VALUE_UNDEFINED;
}


GMFUNC(__imgui_set_next_window_bgalpha) {
	float alpha = YYGetReal(arg, 0);

	ImGui::SetNextWindowBgAlpha(alpha);
	Result.kind = VALUE_UNDEFINED;
}

GMFUNC(__imgui_get_scroll_x) {
	Result.kind = VALUE_REAL;
	Result.val = ImGui::GetScrollX();
}

GMFUNC(__imgui_get_scroll_y) {
	Result.kind = VALUE_REAL;
	Result.val = ImGui::GetScrollY();
}

GMFUNC(__imgui_set_scroll_x) {
	double scroll_x = YYGetReal(arg, 0);

	ImGui::SetScrollX(scroll_x);
	Result.kind = VALUE_UNDEFINED;
}

GMFUNC(__imgui_set_scroll_y) {
	double scroll_y = YYGetReal(arg, 0);

	ImGui::SetScrollY(scroll_y);
	Result.kind = VALUE_UNDEFINED;
}

GMFUNC(__imgui_get_scroll_max_x) {
	Result.kind = VALUE_REAL;
	Result.val = ImGui::GetScrollMaxX();
}

GMFUNC(__imgui_get_scroll_max_y) {
	Result.kind = VALUE_REAL;
	Result.val = ImGui::GetScrollMaxY();
}

GMFUNC(__imgui_set_scroll_here_x) {
	double center_x_ratio = YYGetReal(arg, 0);
	GMDEFAULT(0.5);

	ImGui::SetScrollHereX(center_x_ratio);
	Result.kind = VALUE_UNDEFINED;
}

GMFUNC(__imgui_set_scroll_here_y) {
	double center_y_ratio = YYGetReal(arg, 0);
	GMDEFAULT(0.5);

	ImGui::SetScrollHereY(center_y_ratio);
	Result.kind = VALUE_UNDEFINED;
}

GMFUNC(__imgui_set_scroll_from_pos_x) {
	double local_x = YYGetReal(arg, 0);
	double center_x_ratio = YYGetReal(arg, 1);
	GMDEFAULT(0.5);

	ImGui::SetScrollFromPosX(local_x, center_x_ratio);
	Result.kind = VALUE_UNDEFINED;
}

GMFUNC(__imgui_set_scroll_from_pos_y) {
	double local_y = YYGetReal(arg, 0);
	double center_y_ratio = YYGetReal(arg, 1);
	GMDEFAULT(0.5);

	ImGui::SetScrollFromPosY(local_y, center_y_ratio);
	Result.kind = VALUE_UNDEFINED;
}


GMFUNC(__imgui_set_window_pos) {
	const char* name = YYGetString(arg, 0);
	GMDEFAULT("");
	double x = YYGetReal(arg, 1);
	double y = YYGetReal(arg, 2);
	ImGuiCond cond = YYGetInt64(arg, 3);
	GMDEFAULT(ImGuiCond.None);

	if (name == "") {
		ImGui::SetWindowPos(ImVec2(x, y), cond);
	} else {
		ImGui::SetWindowPos(name, ImVec2(x, y), cond);
	}
	
	Result.kind = VALUE_UNDEFINED;
}

GMFUNC(__imgui_set_window_size) {
	const char* name = YYGetString(arg, 0);
	GMDEFAULT("");
	double width = YYGetReal(arg, 1);
	double height = YYGetReal(arg, 2);
	ImGuiCond cond = YYGetInt64(arg, 3);
	GMDEFAULT(ImGuiCond.None);

	if (name == "") {
		ImGui::SetWindowSize(ImVec2(width, height), cond);
	} else {
		ImGui::SetWindowSize(name, ImVec2(width, height), cond);
	}
	
	Result.kind = VALUE_UNDEFINED;
}

GMFUNC(__imgui_set_window_collapsed) {
	const char* name = YYGetString(arg, 0);
	GMDEFAULT("");
	bool collapsed = YYGetBool(arg, 1);
	ImGuiCond cond = YYGetInt64(arg, 2);
	GMDEFAULT(ImGuiCond.None);

	if (name == "") {
		ImGui::SetWindowCollapsed(collapsed, cond);
	} else {
		ImGui::SetWindowCollapsed(name, collapsed, cond);
	}
	Result.kind = VALUE_UNDEFINED;
}

GMFUNC(__imgui_set_window_focus) {
	const char* name = YYGetString(arg, 0);
	GMDEFAULT("");

	if (name == "") {
		ImGui::SetWindowFocus();
	} else {
		ImGui::SetWindowFocus(name);
	}
	Result.kind = VALUE_UNDEFINED;
}
