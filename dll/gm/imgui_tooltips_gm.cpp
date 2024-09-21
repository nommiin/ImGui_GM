#include "../imgui_gm.h"

GMFUNC(__imgui_begin_tooltip) {
	ImGui::BeginTooltip();
	Result.kind = VALUE_UNDEFINED;
}

GMFUNC(__imgui_end_tooltip) {
	ImGui::EndTooltip();
	Result.kind = VALUE_UNDEFINED;
}

GMFUNC(__imgui_set_tooltip) {
	const char* val = YYGetString(arg, 0);

	ImGui::SetTooltip(val);
	Result.kind = VALUE_UNDEFINED;
}