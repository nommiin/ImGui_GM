#include "../imgui_gm.h"

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

GMFUNC(__imgui_separator_text) {
	const char* label = YYGetString(arg, 0);

	ImGui::SeparatorText(label);

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

GMFUNC(__imgui_sameline) {
	double offset_from_start_x = YYGetReal(arg, 0);
	GMDEFAULT(0);
	double spacing = YYGetReal(arg, 1);
	GMDEFAULT(-1);

	ImGui::SameLine(offset_from_start_x, spacing);
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

GMFUNC(__imgui_set_cursor_screen_pos) {
	double x = YYGetReal(arg, 0);
	double y = YYGetReal(arg, 1);

	ImGui::SetCursorScreenPos(ImVec2(x, y));
	Result.kind = VALUE_UNDEFINED;
}

GMFUNC(__imgui_set_cursor_pos) {
	double local_x = YYGetReal(arg, 0);
	double local_y = YYGetReal(arg, 1);

	ImGui::SetCursorPos(ImVec2(local_x, local_y));
	Result.kind = VALUE_UNDEFINED;
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

GMFUNC(__imgui_get_content_region_avail_x) {
	GMOVERRIDE(GetContentRegionAvailX);

	Result.kind = VALUE_REAL;
	Result.val = ImGui::GetContentRegionAvail().x;
}

GMFUNC(__imgui_get_content_region_avail_y) {
	GMOVERRIDE(GetContentRegionAvailY);

	Result.kind = VALUE_REAL;
	Result.val = ImGui::GetContentRegionAvail().y;
}

GMFUNC(__imgui_get_content_region_max_x) {
	GMOVERRIDE(GetContentRegionMaxX);

	Result.kind = VALUE_REAL;
	Result.val = ImGui::GetContentRegionMax().x;
}

GMFUNC(__imgui_get_content_region_max_y) {
	GMOVERRIDE(GetContentRegionMaxY);

	Result.kind = VALUE_REAL;
	Result.val = ImGui::GetContentRegionMax().y;
}

GMFUNC(__imgui_get_window_content_region_min_x) {
	GMOVERRIDE(GetWindowContentRegionMinX);

	Result.kind = VALUE_REAL;
	Result.val = ImGui::GetWindowContentRegionMin().x;
}

GMFUNC(__imgui_get_window_content_region_min_y) {
	GMOVERRIDE(GetWindowContentRegionMinY);

	Result.kind = VALUE_REAL;
	Result.val = ImGui::GetWindowContentRegionMin().y;
}

GMFUNC(__imgui_get_window_content_region_max_x) {
	GMOVERRIDE(GetWindowContentRegionMaxX);

	Result.kind = VALUE_REAL;
	Result.val = ImGui::GetWindowContentRegionMax().x;
}

GMFUNC(__imgui_get_window_content_region_max_y) {
	GMOVERRIDE(GetWindowContentRegionMaxY);

	Result.kind = VALUE_REAL;
	Result.val = ImGui::GetWindowContentRegionMax().y;
}

GMFUNC(__imgui_push_item_width) {
	double item_width = YYGetReal(arg, 0);

	ImGui::PushItemWidth(item_width);
	Result.kind = VALUE_UNDEFINED;
}

GMFUNC(__imgui_pop_item_width) {
	ImGui::PopItemWidth();
	Result.kind = VALUE_UNDEFINED;
}

GMFUNC(__imgui_set_next_item_width) {
	double item_width = YYGetReal(arg, 0);

	ImGui::SetNextItemWidth(item_width);
	Result.kind = VALUE_UNDEFINED;
}

GMFUNC(__imgui_calc_item_width) {
	Result.kind = VALUE_REAL;
	Result.val = ImGui::CalcItemWidth();
}

GMFUNC(__imgui_push_text_wrap_pos) {
	double wrap_local_pos_x = YYGetReal(arg, 0);
	GMDEFAULT(0);

	ImGui::PushTextWrapPos(wrap_local_pos_x);
	Result.kind = VALUE_UNDEFINED;
}

GMFUNC(__imgui_pop_text_wrap_pos) {
	ImGui::PopTextWrapPos();
	Result.kind = VALUE_UNDEFINED;
}

GMFUNC(__imgui_push_clip_rect) {
	double clip_min_x = YYGetReal(arg, 0);
	double clip_min_y = YYGetReal(arg, 1);
	double clip_max_x = YYGetReal(arg, 2);
	double clip_max_y = YYGetReal(arg, 3);
	bool intersect_with_current_clip_rect = YYGetBool(arg, 4);

	ImGui::PushClipRect(ImVec2(clip_min_x, clip_min_y), ImVec2(clip_max_x, clip_max_y), intersect_with_current_clip_rect);
	Result.kind = VALUE_UNDEFINED;
}

GMFUNC(__imgui_pop_clip_rect) {
	ImGui::PopClipRect();
	Result.kind = VALUE_UNDEFINED;
}