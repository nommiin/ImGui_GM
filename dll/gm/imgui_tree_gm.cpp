#include "../imgui_gm.h"

GMFUNC(__imgui_tree_node) {
	const char* label = YYGetString(arg, 0);

	Result.kind = VALUE_BOOL;
	Result.val = ImGui::TreeNode(label);
}

GMFUNC(__imgui_tree_node_ex) {
	const char* label = YYGetString(arg, 0);
	ImGuiTreeNodeFlags flags = YYGetInt64(arg, 1);
	GMDEFAULT(ImGuiTreeNodeFlags.None);

	Result.kind = VALUE_BOOL;
	Result.val = ImGui::TreeNodeEx(label, flags);
}

GMFUNC(__imgui_tree_push) {
	const char* str_id = YYGetString(arg, 0);

	ImGui::TreePush(str_id);
	Result.kind = VALUE_UNDEFINED;
}

GMFUNC(__imgui_tree_pop) {
	ImGui::TreePop();
	Result.kind = VALUE_UNDEFINED;
}

GMFUNC(__imgui_get_tree_node_to_label_spacing) {
	Result.kind = VALUE_REAL;
	Result.val = ImGui::GetTreeNodeToLabelSpacing();
}

GMFUNC(__imgui_set_next_item_open) {
	bool is_open = YYGetBool(arg, 0);
	ImGuiCond cond = YYGetInt64(arg, 1);
	GMDEFAULT(ImGuiCond.None);

	ImGui::SetNextItemOpen(is_open, cond);
	Result.kind = VALUE_UNDEFINED;
}

GMFUNC(__imgui_collapsing_header) {
	const char* label = YYGetString(arg, 0);
	bool visible = YYGetBool(arg, 1);
	GMDEFAULT(undefined);
	ImGuiTreeNodeFlags flags = YYGetInt64(arg, 2);
	GMDEFAULT(ImGuiTreeNodeFlags.None);
	int64 mask = YYGetInt64(arg, 3);
	GMDEFAULT(ImGuiReturnMask.Return);
	
	bool* p_visible = &visible;
	if (!visible) {
		if ((&arg[1])->kind == VALUE_UNDEFINED) {
			p_visible = nullptr;
		}
	}

	bool ret = ImGui::CollapsingHeader(label, p_visible, flags);
	Result.kind = VALUE_REAL;
	Result.val = ((visible << 1) | static_cast<int>(ret)) & mask;
}