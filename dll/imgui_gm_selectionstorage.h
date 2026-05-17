#pragma once
#include "imgui_gm.h"

static ImGuiSelectionBasicStorage* CreateImGuiSelectionBasicStorageFromStruct(RValue* yystruct) {
    ImGuiSelectionBasicStorage* selection = new ImGuiSelectionBasicStorage();

    if (yystruct->kind != VALUE_UNDEFINED) {
    RValue* rvalue;
        rvalue = YYStructGetMember(yystruct, "Size"); AssignIfDefined(rvalue, selection->Size, RConvertToReal);
        rvalue = YYStructGetMember(yystruct, "PreserveOrder"); AssignIfDefined(rvalue, selection->PreserveOrder, RConvertToBool);
        // rvalue = YYStructGetMember(yystruct, "AdapterIndexToStorageId"); AssignIfDefined(rvalue, selection->AdapterIndexToStorageId, RConvertToImGuiID);
        rvalue = YYStructGetMember(yystruct, "UserData");
        if (rvalue != NULL) {
            if (rvalue->kind != VALUE_UNDEFINED) {
                selection->UserData = rvalue;
            }
        }
    }
    g_vImGuiSelectionBasicStorages.push_back(selection);
    return selection;
}

static void RemoveImGuiSelectionBasicStorage(ImGuiSelectionBasicStorage* pointer) {
    auto it = std::remove(g_vImGuiSelectionBasicStorages.begin(), g_vImGuiSelectionBasicStorages.end(), pointer);
    if (it != g_vImGuiSelectionBasicStorages.end()) {
        delete* it; // Delete the instance
        g_vImGuiSelectionBasicStorages.erase(it, g_vImGuiSelectionBasicStorages.end()); // Remove the pointer from the vector
    }
}
