#include "imgui_gm.h"

/// <summary>
/// Layout & Cursor
/// </summary>

GMFUNC(__imgui_spacing) {
	ImGui::Spacing();
	Result.kind = VALUE_UNDEFINED;
}

GMFUNC(__imgui_dummy) {
	double width = YYGetReal(arg, 0);
	double height = YYGetReal(arg, 1);

	ImGui::Dummy(ImVec2(width, height));
	Result.kind = VALUE_UNDEFINED;
}

GMFUNC(__imgui_newline) {
	ImGui::NewLine();
	Result.kind = VALUE_UNDEFINED;
}

GMFUNC(__imgui_align_text_to_frame_padding) {
	ImGui::AlignTextToFramePadding();
	Result.kind = VALUE_UNDEFINED;
}

GMFUNC(__imgui_separator) {
	ImGui::Separator();
	Result.kind = VALUE_UNDEFINED;
}

GMFUNC(__imgui_indent) {
	double indent_w = YYGetReal(arg, 0);
	GMDEFAULT(0);

	ImGui::Indent(indent_w);
	Result.kind = VALUE_UNDEFINED;
}

GMFUNC(__imgui_unindent) {
	double indent_w = YYGetReal(arg, 0);
	GMDEFAULT(0);

	ImGui::Unindent(indent_w);
	Result.kind = VALUE_UNDEFINED;
}

GMFUNC(__imgui_begin_group) {
	ImGui::BeginGroup();
	Result.kind = VALUE_UNDEFINED;
}

GMFUNC(__imgui_end_group) {
	ImGui::EndGroup();
	Result.kind = VALUE_UNDEFINED;
}

GMFUNC(__imgui_get_cursor_pos_x) {
	Result.kind = VALUE_REAL;
	Result.val = ImGui::GetCursorPosX();
}

GMFUNC(__imgui_get_cursor_pos_y) {
	Result.kind = VALUE_REAL;
	Result.val = ImGui::GetCursorPosY();
}

GMFUNC(__imgui_get_cursor_start_pos_x) {
	GMOVERRIDE(GetCursorStartPosX);

	Result.kind = VALUE_REAL;
	Result.val = ImGui::GetCursorStartPos().x;
}

GMFUNC(__imgui_get_cursor_start_pos_y) {
	GMOVERRIDE(GetCursorStartPosY);

	Result.kind = VALUE_REAL;
	Result.val = ImGui::GetCursorStartPos().y;
}

GMFUNC(__imgui_get_cursor_screen_pos_x) {
	GMOVERRIDE(GetCursorScreenPosX);

	Result.kind = VALUE_REAL;
	Result.val = ImGui::GetCursorScreenPos().x;
}

GMFUNC(__imgui_get_cursor_screen_pos_y) {
	GMOVERRIDE(GetCursorScreenPosY);

	Result.kind = VALUE_REAL;
	Result.val = ImGui::GetCursorScreenPos().y;
}

GMFUNC(__imgui_set_cursor_pos_x) {
	double local_x = YYGetReal(arg, 0);

	ImGui::SetCursorPosX(local_x);
	Result.kind = VALUE_UNDEFINED;
}

GMFUNC(__imgui_set_cursor_pos_y) {
	double local_y = YYGetReal(arg, 0);

	ImGui::SetCursorPosY(local_y);
	Result.kind = VALUE_UNDEFINED;
}

GMFUNC(__imgui_get_text_line_height) {
	Result.kind = VALUE_REAL;
	Result.val = ImGui::GetTextLineHeight();
}

GMFUNC(__imgui_get_text_line_height_with_spacing) {
	Result.kind = VALUE_REAL;
	Result.val = ImGui::GetTextLineHeightWithSpacing();
}

GMFUNC(__imgui_get_frame_height) {
	Result.kind = VALUE_REAL;
	Result.val = ImGui::GetFrameHeight();
}

GMFUNC(__imgui_get_frame_height_with_spacing) {
	Result.kind = VALUE_REAL;
	Result.val = ImGui::GetFrameHeightWithSpacing();
}