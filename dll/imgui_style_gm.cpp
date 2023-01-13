#include "imgui_gm.h"

GMFUNC(__imgui_style_colors_dark) {
	ImGui::StyleColorsDark();
	Result.kind = VALUE_UNDEFINED;
}

GMFUNC(__imgui_style_colors_light) {
	ImGui::StyleColorsDark();
	Result.kind = VALUE_UNDEFINED;
}

GMFUNC(__imgui_style_colors_classic) {
	ImGui::StyleColorsClassic();
	Result.kind = VALUE_UNDEFINED;
}

GMFUNC(__imgui_push_style_color) {
	ImGuiCol idx = YYGetInt64(arg, 0);
	double col = YYGetReal(arg, 1);
	float alpha = YYGetReal(arg, 2);

	ImGui::PushStyleColor(idx, GMCOLOR_TO(col, alpha));
	Result.kind = VALUE_UNDEFINED;
}

GMFUNC(__imgui_pop_style_color) {
	double count = YYGetReal(arg, 0);
	GMDEFAULT(1);
	
	ImGui::PopStyleColor(count);
	Result.kind = VALUE_UNDEFINED;
}

GMFUNC(__imgui_push_style_var) {
	ImGuiStyleVar idx = YYGetInt64(arg, 0);
	float val = YYGetReal(arg, 1);
	RValue* val2 = &arg[2];
	GMDEFAULT(undefined);

	Result.kind = VALUE_UNDEFINED;
	if (val2->kind != VALUE_UNDEFINED) {
		ImGui::PushStyleVar(idx, ImVec2(val, val2->val));
		return;
	}
	ImGui::PushStyleVar(idx, val);
}

GMFUNC(__imgui_pop_style_var) {
	double count = YYGetReal(arg, 0);
	GMDEFAULT(1);

	ImGui::PopStyleVar(count);
	Result.kind = VALUE_UNDEFINED;
}

GMFUNC(__imgui_get_font_size) {
	Result.kind = VALUE_REAL;
	Result.val = ImGui::GetFontSize();
}

GMFUNC(__imgui_get_style_color) {
	ImGuiCol idx = YYGetInt64(arg, 0);

	Result.kind = VALUE_REAL;
	Result.val = GMCOLOR_FROM(ImGui::GetStyleColorVec4(idx));
}

GMFUNC(__imgui_get_style_color_name) {
	ImGuiCol idx = YYGetInt64(arg, 0);
	GMOVERRIDE(GetStyleColorName);

	Result.kind = VALUE_STRING;
	YYCreateString(&Result, ImGui::GetStyleColorName(idx));
}