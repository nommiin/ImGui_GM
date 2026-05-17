#include "../imgui_gm.h"

GMFUNC(__imgui_begin_table) {
	const char* str_id = YYGetString(arg, 0);
	double column = YYGetReal(arg, 1);
	ImGuiTableFlags flags = YYGetInt64(arg, 2);
	GMDEFAULT(ImGuiTableFlags.None);
	double outer_width = YYGetReal(arg, 3);
	GMDEFAULT(0);
	double outer_height = YYGetReal(arg, 4);
	GMDEFAULT(0);
	double inner_width = YYGetReal(arg, 5);
	GMDEFAULT(0);

	Result.kind = VALUE_BOOL;
	Result.val = ImGui::BeginTable(str_id, column, flags, ImVec2(outer_width, outer_height), inner_width);
}

GMFUNC(__imgui_end_table) {
	ImGui::EndTable();
	Result.kind = VALUE_UNDEFINED;
}

GMFUNC(__imgui_table_next_row) {
	ImGuiTableRowFlags row_flags = YYGetInt64(arg, 0);
	GMDEFAULT(ImGuiTableRowFlags.None);
	double min_row_height = YYGetReal(arg, 1);
	GMDEFAULT(0);

	ImGui::TableNextRow(row_flags, min_row_height);
	Result.kind = VALUE_UNDEFINED;
}

GMFUNC(__imgui_table_next_column) {
	Result.kind = VALUE_BOOL;
	Result.val = ImGui::TableNextColumn();
}

GMFUNC(__imgui_table_set_column_index) {
	double column_n = YYGetReal(arg, 0);

	Result.kind = VALUE_BOOL;
	Result.val = ImGui::TableSetColumnIndex(column_n);
}

GMFUNC(__imgui_table_setup_column) {
	const char* label = YYGetString(arg, 0);
	ImGuiTableColumnFlags flags = YYGetInt64(arg, 1);
	GMDEFAULT(ImGuiTableColumnFlags.None);
	double init_width_or_weight = YYGetReal(arg, 2);
	GMDEFAULT(0);
	double user_id = YYGetReal(arg, 2);
	GMDEFAULT(0);

	ImGui::TableSetupColumn(label, flags, init_width_or_weight, user_id);
	Result.kind = VALUE_UNDEFINED;
}

GMFUNC(__imgui_table_setup_scroll_freeze) {
	double cols = YYGetReal(arg, 0);
	double rows = YYGetReal(arg, 1);

	ImGui::TableSetupScrollFreeze(cols, rows);
	Result.kind = VALUE_UNDEFINED;
}

GMFUNC(__imgui_table_headers_row) {
	ImGui::TableHeadersRow();
	Result.kind = VALUE_UNDEFINED;
}

GMFUNC(__imgui_table_angled_headers_row) {
	ImGui::TableAngledHeadersRow();
	Result.kind = VALUE_UNDEFINED;
}

GMFUNC(__imgui_table_header) {
	const char* label = YYGetString(arg, 0);

	ImGui::TableHeader(label);
	Result.kind = VALUE_UNDEFINED;
}

GMFUNC(__imgui_table_get_hovered_column) {
	Result.kind = VALUE_REAL;
	Result.val = ImGui::TableGetHoveredColumn();
}

GMFUNC(__imgui_table_get_column_count) {
	Result.kind = VALUE_REAL;
	Result.val = ImGui::TableGetColumnCount();
}

GMFUNC(__imgui_table_get_column_index) {
	Result.kind = VALUE_REAL;
	Result.val = ImGui::TableGetColumnIndex();
}

GMFUNC(__imgui_table_get_column_name) {
	double column_n = YYGetReal(arg, 0);
	GMDEFAULT(-1);
	GMOVERRIDE(TableGetColumnName);

	Result.kind = VALUE_STRING;
	YYCreateString(&Result, ImGui::TableGetColumnName(column_n));
}

GMFUNC(__imgui_table_get_column_flags) {
	double column_n = YYGetReal(arg, 0);
	GMDEFAULT(-1);

	Result.kind = VALUE_INT64;
	Result.val = ImGui::TableGetColumnFlags(column_n);
}

GMFUNC(__imgui_table_get_row_index) {
	Result.kind = VALUE_REAL;
	Result.val = ImGui::TableGetRowIndex();
}

GMFUNC(__imgui_table_set_column_enabled) {
	double column_n = YYGetReal(arg, 0);
	bool v = YYGetBool(arg, 1);

	ImGui::TableSetColumnEnabled(column_n, v);
	Result.kind = VALUE_UNDEFINED;
}

GMFUNC(__imgui_table_set_bg_color) {
	ImGuiTableBgTarget target = YYGetInt64(arg, 0);
	int col = YYGetReal(arg, 1);
	double column_n = YYGetReal(arg, 2);
	GMDEFAULT(-1);

	ImGui::TableSetBgColor(target, (ImU32)(0xFF << 24) | col, column_n);
	Result.kind = VALUE_UNDEFINED;
}

// LEGACY COLUMN API
GMFUNC(__imgui_columns) {
	double count = YYGetReal(arg, 0);
	GMDEFAULT(1);
	const char* id = YYGetString(arg, 1);
	GMDEFAULT("");
	bool border = YYGetBool(arg, 2);
	GMDEFAULT(true);

	ImGui::Columns(count, (id == "" ? nullptr : id), border);
	Result.kind = VALUE_UNDEFINED;
}

GMFUNC(__imgui_next_column) {
	ImGui::NextColumn();
	Result.kind = VALUE_UNDEFINED;
}

GMFUNC(__imgui_get_column_index) {
	Result.kind = VALUE_REAL;
	Result.val = ImGui::GetColumnIndex();
}

GMFUNC(__imgui_get_column_width) {
	double column_index = YYGetReal(arg, 0);
	GMDEFAULT(-1);

	Result.kind = VALUE_REAL;
	Result.val = ImGui::GetColumnWidth(column_index);
}

GMFUNC(__imgui_set_column_width) {
	double column_index = YYGetReal(arg, 0);
	double width = YYGetReal(arg, 1);

	ImGui::SetColumnWidth(column_index, width);
	Result.kind = VALUE_UNDEFINED;
}

GMFUNC(__imgui_get_column_offset) {
	double column_index = YYGetReal(arg, 0);
	GMDEFAULT(-1);

	Result.kind = VALUE_REAL;
	Result.val = ImGui::GetColumnOffset(column_index);
}

GMFUNC(__imgui_set_column_offset) {
	double column_index = YYGetReal(arg, 0);
	double offset_x = YYGetReal(arg, 1);

	ImGui::SetColumnOffset(column_index, offset_x);
	Result.kind = VALUE_UNDEFINED;
}

GMFUNC(__imgui_get_columns_count) {
	Result.kind = VALUE_REAL;
	Result.val = ImGui::GetColumnsCount();
}