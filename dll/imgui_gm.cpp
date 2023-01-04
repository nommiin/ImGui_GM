#include "imgui_gm.h"

GMFUNC(__imgui_begin) {
	const char* name = YYGetString(arg, 0);
	bool open = YYGetBool(arg, 1);
	GMDEFAULT(undefined);
	ImGuiWindowFlags flags = YYGetInt64(arg, 2);
	GMDEFAULT(ImGuiWindowFlags.None);
	int64 ret_mask = YYGetInt64(arg, 3);
	GMDEFAULT(ImGuiReturnFlags.Open);

	bool ret = ImGui::Begin(name, &open, flags);
	Result.kind = VALUE_REAL;
	Result.val = ((open << 1) | (int)ret) & ret_mask;
}

GMFUNC(__imgui_end) {
	ImGui::End();
	Result.kind = VALUE_UNDEFINED;
}