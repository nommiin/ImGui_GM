#include "imgui_gm.h"

GMFUNC(__imgui_selectable) {
	const char* label = YYGetString(arg, 0);
	bool selected = YYGetBool(arg, 1);
	GMDEFAULT(false);
	ImGuiSelectableFlags flags = YYGetInt64(arg, 2);
	GMDEFAULT(ImGuiSelectableFlags.None);
	double width = YYGetReal(arg, 3);
	GMDEFAULT(0);
	double height = YYGetReal(arg, 4);
	GMDEFAULT(0);

	Result.kind = VALUE_BOOL;
	Result.val = ImGui::Selectable(label, selected, flags, ImVec2(width, height));
}