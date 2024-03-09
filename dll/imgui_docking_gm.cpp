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
    ImGuiCond cond = YYGetInt64(arg, 1);
    GMDEFAULT(ImGuiCond.None);

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

GMFUNC(__imgui_dockbuilder_dock_window) {
    const char* window_name = YYGetString(arg, 0);
    ImGuiID node_id = YYGetReal(arg, 1);

    ImGui::DockBuilderDockWindow(window_name, node_id);
    Result.kind = VALUE_UNDEFINED;
}

GMFUNC(__imgui_dockbuilder_get_node) {
    ImGuiID node_id = YYGetReal(arg, 0);

    Result.kind = VALUE_PTR;
    Result.ptr = ImGui::DockBuilderGetNode(node_id);
}

GMFUNC(__imgui_dockbuilder_get_central_node) {
    ImGuiID node_id = YYGetReal(arg, 0);

    Result.kind = VALUE_PTR;
    Result.ptr = ImGui::DockBuilderGetCentralNode(node_id);
}

GMFUNC(__imgui_dockbuilder_add_node) {
    ImGuiID node_id = YYGetReal(arg, 0);
    GMDEFAULT(0);
    ImGuiDockNodeFlags flags = YYGetReal(arg, 1);
    GMDEFAULT(ImGuiDockNodeFlags.None);

    Result.kind = VALUE_REAL;
    Result.val = ImGui::DockBuilderAddNode(node_id, flags);
}

GMFUNC(__imgui_dockbuilder_remove_node) {
    ImGuiID node_id = YYGetReal(arg, 0);

    ImGui::DockBuilderRemoveNode(node_id);
    Result.kind = VALUE_UNDEFINED;
}

GMFUNC(__imgui_dockbuilder_remove_node_docked_windows) {
    ImGuiID node_id = YYGetReal(arg, 0);
    bool clear_settings_refs = YYGetBool(arg, 1);
    GMDEFAULT(true);

    ImGui::DockBuilderRemoveNodeDockedWindows(node_id, clear_settings_refs);
    Result.kind = VALUE_UNDEFINED;
}

GMFUNC(__imgui_dockbuilder_remove_node_child_nodes) {
    ImGuiID node_id = YYGetReal(arg, 0);

    ImGui::DockBuilderRemoveNodeChildNodes(node_id);
    Result.kind = VALUE_UNDEFINED;
}

GMFUNC(__imgui_dockbuilder_set_node_pos) {
    ImGuiID node_id = YYGetReal(arg, 0);
    double x = YYGetReal(arg, 1);
    double y = YYGetReal(arg, 2);

    ImGui::DockBuilderSetNodePos(node_id, ImVec2(x, y));
    Result.kind = VALUE_UNDEFINED;
}

GMFUNC(__imgui_dockbuilder_set_node_size) {
    ImGuiID node_id = YYGetReal(arg, 0);
    double width = YYGetReal(arg, 1);
    double height = YYGetReal(arg, 2);

    ImGui::DockBuilderSetNodeSize(node_id, ImVec2(width, height));
    Result.kind = VALUE_UNDEFINED;
}

GMFUNC(__imgui_dockbuilder_split_node) {
    ImGuiID node_id = YYGetReal(arg, 0);
    ImGuiDir split_dir = YYGetInt64(arg, 1);
    float size_ratio_for_node_at_dir = YYGetReal(arg, 2);
    GMRETURN(Array<ImGuiID>);

    ImGuiID out_id_at_dir;
    ImGuiID out_id_at_opposite_dir;
    ImGuiID parent_id = ImGui::DockBuilderSplitNode(node_id, split_dir, size_ratio_for_node_at_dir, &out_id_at_dir, &out_id_at_opposite_dir);
    ImGuiID output_ids[3]{ parent_id, out_id_at_dir, out_id_at_opposite_dir };
    YYSetArray(&Result, output_ids, 3);
}

GMFUNC(__imgui_dockbuilder_copy_dock_space) {
    GMOVERRIDE(DockBuilderCopyDockSpace);
    ShowError("Unimplemented ImGui Function: ImGui.DockBuilderCopyDockSpace");
    /*
    ImGuiID src_dockspace_id = YYGetReal(arg, 0);
    ImGuiID dst_dockspace_id = YYGetReal(arg, 1);
    // TODO: in_window_remap_pairs
    ImGui::DockBuilderCopyDockSpace(src_dockspace_id, dst_dockspace_id, ImVector<const char*>);
    */
}

GMFUNC(__imgui_dockbuilder_copy_node) {
    GMOVERRIDE(DockBuilderCopyDockNode);
    ShowError("Unimplemented ImGui Function: ImGui.DockBuilderCopyDockNode");
}

GMFUNC(__imgui_dockbuilder_copy_window_settings) {
    const char* src_name = YYGetString(arg, 0);
    const char* dst_name = YYGetString(arg, 1);

    ImGui::DockBuilderCopyWindowSettings(src_name, dst_name);
    Result.kind = VALUE_UNDEFINED;
}

GMFUNC(__imgui_dockbuilder_finish) {
    ImGuiID node_id = YYGetReal(arg, 0);

    ImGui::DockBuilderFinish(node_id);
    Result.kind = VALUE_UNDEFINED;
}