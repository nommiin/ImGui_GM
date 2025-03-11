#include "../imgui_gm.h"
#include "../imgui_gm_windowclass.h"

ImGuiWindowClass* g_ImGuiWindowClass = nullptr;

GMFUNC(__imgui_dock_space) {
    ImGuiID id = YYGetReal(arg, 0);
    double width = YYGetReal(arg, 1);
    GMDEFAULT(0);
    double height = YYGetReal(arg, 2);
    GMDEFAULT(0);
    ImGuiDockNodeFlags flags = YYGetInt64(arg, 3);
    GMDEFAULT(ImGuiDockNodeFlags.None);
    GMHINT(ImGuiDockNodeFlags);
    RValue* window_class = &arg[4];
    GMDEFAULT(undefined);
    GMHINT(ImGuiWindowClass);
    ImGuiWindowClass* final_window_class = NULL;
    if (window_class->kind != VALUE_UNDEFINED) {
        g_ImGuiWindowClass = ImGuiWindowClassFromStruct(window_class);
        final_window_class = g_ImGuiWindowClass;
    }
    Result.kind = VALUE_REAL;
    Result.val = ImGui::DockSpace(id, ImVec2(width, height), flags, final_window_class);
}

GMFUNC(__imgui_find_viewport_by_id) {
    ImGuiID id = YYGetReal(arg, 0);

    Result.kind = VALUE_PTR;
    Result.ptr = ImGui::FindViewportByID(id);
    GMRETURN(ImGuiViewport);
}

GMFUNC(__imgui_find_viewport_by_platform_handle) {
    void* platform_handle = YYGetPtr(arg, 0);
    GMHINT(HWND);

    Result.kind = VALUE_PTR;
    Result.ptr = ImGui::FindViewportByPlatformHandle(platform_handle);
    GMRETURN(ImGuiViewport);
}

GMFUNC(__imgui_dock_space_over_viewport) {
    RValue* dockspace_id = &arg[0];

    ImGuiID final_dockspace_id;
    if (dockspace_id->kind != VALUE_UNDEFINED) {
        final_dockspace_id = YYGetReal(arg, 0);
    }
    else {
        final_dockspace_id = 0;
    }
    GMHINT(Real | Undefined)
    GMDEFAULT(0);

    int viewport_id = YYGetReal(arg, 1);
    GMDEFAULT(0);
    ImGuiViewport* viewport = ImGui::FindViewportByID(viewport_id);
    ImGuiDockNodeFlags flags = YYGetInt64(arg, 2);
    GMDEFAULT(ImGuiDockNodeFlags.None);
    RValue* window_class = &arg[3];
    GMDEFAULT(undefined);
    GMHINT(ImGuiWindowClass);
    ImGuiWindowClass* final_window_class = NULL;
    if (window_class->kind != VALUE_UNDEFINED) {
        g_ImGuiWindowClass = ImGuiWindowClassFromStruct(window_class);
        final_window_class = g_ImGuiWindowClass;
    }
    Result.kind = VALUE_REAL;
    Result.val = ImGui::DockSpaceOverViewport(final_dockspace_id, viewport, flags, final_window_class);
}

GMFUNC(__imgui_set_next_window_dock_id) {
    ImGuiID dock_id = YYGetReal(arg, 0);
    ImGuiCond cond = YYGetReal(arg, 1);
    GMDEFAULT(ImGuiCond.None);

    ImGui::SetNextWindowDockID(dock_id, cond);

    Result.kind = VALUE_UNDEFINED;
}

GMFUNC(__imgui_set_next_window_class) {
    GMOVERRIDE(SetNextWindowClass);
    RValue* window_class = YYGetStruct(arg, 0);
    GMHINT(ImGuiWindowClass);
    ImGuiWindowClass* final_window_class = NULL;
    if (window_class->kind != VALUE_UNDEFINED) {
        g_ImGuiWindowClass = ImGuiWindowClassFromStruct(window_class);
        final_window_class = g_ImGuiWindowClass;
    }
    ImGui::SetNextWindowClass(final_window_class);

    Result.kind = VALUE_UNDEFINED;
}

GMFUNC(__imgui_get_window_dock_id) {
    Result.kind = VALUE_REAL;
    Result.val = ImGui::GetWindowDockID();
}

GMFUNC(__imgui_is_window_docked) {
    Result.kind = VALUE_BOOL;
    Result.val = ImGui::IsWindowDocked();
}

// DockBuilder


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
    ImGuiDockNodeFlags flags = YYGetInt64(arg, 1);
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
    int split_dir = YYGetReal(arg, 1);
    ImGuiDir final_split_dir = (ImGuiDir)split_dir;
    float size_ratio_for_node_at_dir = YYGetReal(arg, 2);
    GMRETURN(Array<ImGuiID>);

    ImGuiID out_id_at_dir;
    ImGuiID out_id_at_opposite_dir;
    ImGuiID parent_id = ImGui::DockBuilderSplitNode(node_id, final_split_dir, size_ratio_for_node_at_dir, &out_id_at_dir, &out_id_at_opposite_dir);
    ImGuiID output_ids[3]{ parent_id, out_id_at_dir, out_id_at_opposite_dir };
    YYSetArray(&Result, output_ids, 3);
}

GMFUNC(__imgui_dockbuilder_copy_dock_space) {
    GMOVERRIDE(DockBuilderCopyDockSpace);
    ImGuiID src_dockspace_id = YYGetReal(arg, 0);
    ImGuiID dst_dockspace_id = YYGetReal(arg, 1);
    RValue* window_remap_pairs = &arg[2];
    ImVector<const char*>* final_window_remap_pairs = NULL;

    if (window_remap_pairs->kind == VALUE_ARRAY) {
        int len = YYArrayGetLength(window_remap_pairs);
        final_window_remap_pairs = new ImVector<const char*>();
        for (int i=0; i < len; i++) {
            final_window_remap_pairs->push_back(YYGetString(window_remap_pairs, i));
        }
    }
    ImGui::DockBuilderCopyDockSpace(src_dockspace_id, dst_dockspace_id, final_window_remap_pairs);

    Result.kind = VALUE_UNDEFINED;
}

GMFUNC(__imgui_dockbuilder_copy_node) {
    GMOVERRIDE(DockBuilderCopyNode);
    ImGuiID src_node_id = YYGetReal(arg, 0);
    ImGuiID dst_node_id = YYGetReal(arg, 1);
    RValue* node_remap_pairs = &arg[2];
    ImVector<ImGuiID>* out_node_remap_pairs = NULL;

    if (node_remap_pairs->kind == VALUE_ARRAY) {
        int len = YYArrayGetLength(node_remap_pairs);
        out_node_remap_pairs = new ImVector<ImGuiID>();
        for (int i=0; i < len; i++) {
            out_node_remap_pairs->push_back(YYGetReal(node_remap_pairs, i));
        }
    }

    ImGui::DockBuilderCopyNode(src_node_id, dst_node_id, out_node_remap_pairs);
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
