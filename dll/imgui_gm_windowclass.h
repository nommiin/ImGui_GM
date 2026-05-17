#pragma once
#include <memory>
#include "imgui_gm.h"

extern ImGuiWindowClass* g_ImGuiWindowClass;

static ImGuiWindowClass* ImGuiWindowClassFromStruct(RValue* yystruct) {
    // When calling (SetNextWindowClass, DockSpace... etc.) the pointer values are copied into a new window_class.
    // This means we don't have to sync this struct between GM - DLL, so this variable is just a placeholder.
    if (g_ImGuiWindowClass != nullptr) {
        IM_DELETE(g_ImGuiWindowClass);
    }
    g_ImGuiWindowClass = IM_NEW(ImGuiWindowClass);

    if (yystruct->kind != VALUE_UNDEFINED) {
        RValue* rvalue;
        rvalue = YYStructGetMember(yystruct, "ClassId"); AssignIfDefinedElse(rvalue, g_ImGuiWindowClass->ClassId, RConvertToImGuiID, NULL);
        rvalue = YYStructGetMember(yystruct, "ParentViewportId"); AssignIfDefinedElse(rvalue, g_ImGuiWindowClass->ParentViewportId, RConvertToImGuiID, NULL);
        rvalue = YYStructGetMember(yystruct, "FocusRouteParentWindowId"); AssignIfDefinedElse(rvalue, g_ImGuiWindowClass->FocusRouteParentWindowId, RConvertToImGuiID, NULL);
        rvalue = YYStructGetMember(yystruct, "ViewportFlagsOverrideSet"); AssignIfDefinedElse(rvalue, g_ImGuiWindowClass->ViewportFlagsOverrideSet, RConvertToImGuiViewportFlags, ImGuiViewportFlags_None);
        rvalue = YYStructGetMember(yystruct, "ViewportFlagsOverrideClear"); AssignIfDefinedElse(rvalue, g_ImGuiWindowClass->ViewportFlagsOverrideClear, RConvertToImGuiViewportFlags, ImGuiViewportFlags_None);
        rvalue = YYStructGetMember(yystruct, "TabItemFlagsOverrideSet"); AssignIfDefinedElse(rvalue, g_ImGuiWindowClass->TabItemFlagsOverrideSet, RConvertToImGuiTabItemFlags, ImGuiTabItemFlags_None);
        rvalue = YYStructGetMember(yystruct, "DockNodeFlagsOverrideSet"); AssignIfDefinedElse(rvalue, g_ImGuiWindowClass->DockNodeFlagsOverrideSet, RConvertToImGuiDockNodeFlags, ImGuiDockNodeFlags_None);
        rvalue = YYStructGetMember(yystruct, "DockingAlwaysTabBar"); AssignIfDefinedElse(rvalue, g_ImGuiWindowClass->DockingAlwaysTabBar, RConvertToBool, NULL);
        rvalue = YYStructGetMember(yystruct, "DockingAllowUnclassed"); AssignIfDefinedElse(rvalue, g_ImGuiWindowClass->DockingAllowUnclassed, RConvertToBool, NULL);
    }

    return g_ImGuiWindowClass;
}
