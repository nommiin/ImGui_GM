#include "Extension_Interface.h"
#include "YYRValue.h"
#include "imgui_gm.h"

#include "imgui.h"
#include "imgui_internal.h"
#include "imgui_impl_dx11.h"
#include "imgui_memory_editor.h"

#include <d3d11.h>
#include <vector>
#include <string>

GMFUNC(__imgui_begin) {
	const char* name = YYGetString(arg, 0);
	bool open = YYGetBool(arg, 1);
	GMDEFAULT(undefined);
	int64 flags = YYGetInt64(arg, 2);
	GMDEFAULT(ImGuiWindowFlags.None);
	int64 ret_mask = YYGetInt64(arg, 3);
	GMDEFAULT(ImGuiReturnFlags.Open);

	bool ret = ImGui::Begin(name, &open, (ImGuiWindowFlags)flags);
	Result.kind = VALUE_REAL;
	Result.val = ((open << 1) | (int)ret) & ret_mask;
	return;
}

GMFUNC(__imgui_end) {
	ImGui::End();
	Result.kind = VALUE_UNDEFINED;
	return;
}