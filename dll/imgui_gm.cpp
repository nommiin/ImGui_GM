#include "imgui_gm.h"

GMFUNC(__imguigm_native) {
	GMOVERRIDE(_);

	Result.kind = VALUE_BOOL;
	Result.val = false;
}

GMFUNC(__imguigm_keepalive) {
	GMOVERRIDE(_);

	Result.kind = VALUE_REAL;
	Result.val = g_KeepAlive;
}

GMFUNC(__imgui_input) {
	GMOVERRIDE(_);
	ImGuiIO& io = ImGui::GetIO();
	if (io.WantTextInput) io.AddInputCharactersUTF8(YYGetString(arg, 0));

	Result.kind = VALUE_BOOL;
	Result.val = io.WantTextInput;
}

GMFUNC(__imgui_mouse) {
	GMOVERRIDE(_);
	
	ImGui::GetIO().AddMouseButtonEvent(YYGetReal(arg, 0), YYGetBool(arg, 1));
}

GMFUNC(__imgui_mouse_wheel) {
	GMOVERRIDE(_);

	ImGui::GetIO().AddMouseWheelEvent(YYGetReal(arg, 0), YYGetReal(arg, 1));
}

GMFUNC(__imgui_mouse_cursor) {
	GMOVERRIDE(_);

	Result.kind = VALUE_REAL;
	Result.val = ImGui::GetMouseCursor();
}

GMFUNC(__imgui_key) {
	GMOVERRIDE(_);
	
	ImGui::GetIO().AddKeyEvent((ImGuiKey)YYGetReal(arg, 0), YYGetBool(arg, 1));
}
