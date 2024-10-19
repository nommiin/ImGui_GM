#include "../imgui_gm.h"
#include "../imgui_gm_selectionstorage.h"

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

GMFUNC(__imgui_is_item_toggled_selection) {
	Result.kind = VALUE_BOOL;
	Result.val = ImGui::IsItemToggledSelection();
}

/// MultiSelect

GMFUNC(__imgui_create_multi_select_basic_storage) {
	GMOVERRIDE(_);

	RValue* yystruct = YYGetStruct(arg, 0);
	ImGuiSelectionBasicStorage* selection = CreateImGuiSelectionBasicStorageFromStruct(yystruct);

	Result.kind = VALUE_PTR;
	Result.ptr = selection;
}

GMFUNC(__imgui_destroy_multi_select_basic_storage) {
	GMOVERRIDE(_);

	ImGuiSelectionBasicStorage* storage_ptr = (ImGuiSelectionBasicStorage*)YYGetPtr(arg, 0);
	RemoveImGuiSelectionBasicStorage(storage_ptr);

	Result.kind = VALUE_UNDEFINED;
}

GMFUNC(__imgui_begin_multi_select) {
	ImGuiMultiSelectFlags flags = YYGetInt64(arg, 0);
	GMHINT(ImGuiMultiSelectFlags);
	int size = YYGetReal(arg, 1);
	int items_count = YYGetReal(arg, 2);

	ImGuiMultiSelectIO* ms_io = ImGui::BeginMultiSelect(flags, size, items_count);

	Result.kind = VALUE_PTR;
	Result.ptr = ms_io;
	GMRETURNS(ImGuiMultiSelectIO);
}

GMFUNC(__imgui_selection_storage_apply_requests) {
	RValue* selection = &arg[0];
	GMHINT(ImGuiSelectionBasicStorage);
	ImGuiSelectionBasicStorage* final_selection;
	if (selection->kind == VALUE_PTR) {
		final_selection = (ImGuiSelectionBasicStorage*)YYGetPtr(arg, 0);
	}
	else {
		final_selection = (ImGuiSelectionBasicStorage*)YYStructGetMember(selection, "__ptr")->ptr;
	}

	ImGuiMultiSelectIO* ms_io = (ImGuiMultiSelectIO*)YYGetPtr(arg, 1);
	GMHINT(ImGuiMultiSelectIO);

	final_selection->ApplyRequests(ms_io);

	Result.kind = VALUE_UNDEFINED;
}

GMFUNC(__imgui_end_multi_select) {
	ImGuiMultiSelectIO* ms_io = ImGui::EndMultiSelect();

	Result.kind = VALUE_PTR;
	Result.ptr = ms_io;
	GMRETURNS(ImGuiMultiSelectIO);
}

GMFUNC(__imgui_set_next_item_selection_user_data) {
	int64 idx = YYGetInt64(arg, 0);

	ImGui::SetNextItemSelectionUserData(idx);
}

GMFUNC(__imgui_selection_storage_contains) {
	GMOVERRIDE(_);
	RValue* selection = &arg[0];
	GMHINT(ImGuiSelectionBasicStorage);
	ImGuiSelectionBasicStorage* final_selection;
	if (selection->kind == VALUE_PTR) {
		final_selection = (ImGuiSelectionBasicStorage*)YYGetPtr(arg, 0);
	}
	else {
		final_selection = (ImGuiSelectionBasicStorage*)YYStructGetMember(selection, "__ptr")->ptr;
	}
	int64 idx = YYGetInt64(arg, 1);

	Result.kind = VALUE_BOOL;
	Result.val = final_selection->Contains(idx);
}

GMFUNC(__imgui_selection_storage_size) {
	GMOVERRIDE(_);

	RValue* selection = &arg[0];
	GMHINT(ImGuiSelectionBasicStorage);
	ImGuiSelectionBasicStorage* final_selection;
	if (selection->kind == VALUE_PTR) {
		final_selection = (ImGuiSelectionBasicStorage*)YYGetPtr(arg, 0);
	}
	else {
		final_selection = (ImGuiSelectionBasicStorage*)YYStructGetMember(selection, "__ptr")->ptr;
	}

	RValue* value = &arg[1];
	GMDEFAULT(undefined);

	if (value->kind != VALUE_UNDEFINED) {
		final_selection->Size = value->val;
	}

	Result.kind = VALUE_REAL;
	Result.val = final_selection->Size;
}