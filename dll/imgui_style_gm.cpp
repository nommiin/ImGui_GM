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
	
	ImGui::PopStyleColor(count);
	Result.kind = VALUE_UNDEFINED;
}