#include "imgui_gm.h"

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
	Result.val = ((open << 1) | (bool)ret) & mask;
}

GMFUNC(__imgui_end) {
	ImGui::End();
	Result.kind = VALUE_UNDEFINED;
}