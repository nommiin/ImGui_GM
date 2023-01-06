#include "imgui_gm.h"

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