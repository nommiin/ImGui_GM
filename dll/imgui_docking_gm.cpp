#include "imgui_gm.h"

GMFUNC(__imgui_dock_space) {
    ImGuiID id = YYGetReal(arg, 0);
    double width = YYGetReal(arg, 1);
    GMDEFAULT(0);
    double height = YYGetReal(arg, 2);
    GMDEFAULT(0);
    ImGuiDockNodeFlags flags = YYGetInt64(arg, 3);
    GMDEFAULT(ImGuiDockNodeFlags.None);
    // TODO: window_class

    Result.kind = VALUE_REAL;
    Result.val = ImGui::DockSpace(id, ImVec2(width, height), flags, NULL);
}

GMFUNC(__imgui_dock_space_over_viewport) {
    // TODO: viewport
    ImGuiDockNodeFlags flags = YYGetInt64(arg, 0);
    GMDEFAULT(ImGuiDockNodeFlags.None);
    // TODO: window_class

    Result.kind = VALUE_REAL;
    Result.val = ImGui::DockSpaceOverViewport(NULL, flags, NULL);
}

GMFUNC(__imgui_set_next_window_dock_id) {
    ImGuiID dock_id = YYGetReal(arg, 0);
    ImGuiCond cond = YYGetReal(arg, 1);

    ImGui::SetNextWindowDockID(dock_id, cond);
    Result.kind = VALUE_UNDEFINED;
}

// IMGUI_API void SetNextWindowClass(const ImGuiWindowClass* window_class);           // set next window class (control docking compatibility + provide hints to platform backend via custom viewport flags and platform parent/child relationship)
GMFUNC(__imgui_set_next_window_class) {
    GMOVERRIDE(SetNextWindowClass);
    ShowError("Unimplemented ImGui Function: ImGui.SetNextWindowClass");
}

GMFUNC(__imgui_get_window_dock_id) {
    Result.kind = VALUE_REAL;
    Result.val = ImGui::GetWindowDockID();
}

GMFUNC(__imgui_is_window_docked) {
    Result.kind = VALUE_BOOL;
    Result.val = ImGui::IsWindowDocked();
}