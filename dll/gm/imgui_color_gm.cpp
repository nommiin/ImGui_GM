#include "../imgui_gm.h"

// Color_3 uses BGR integer
// Color_4 uses ImColor GML struct

GMFUNC(__imgui_color_edit3) {
	const char* label = YYGetString(arg, 0);
	double col = YYGetReal(arg, 1);
	ImGuiColorEditFlags flags = YYGetInt64(arg, 2);
	GMDEFAULT(ImGuiColorEditFlags.None);
	GMOVERRIDE(ColorEdit3);

	ImVec4 color = GMCOLOR_TO(col, 1.0f);
	Result.kind = VALUE_REAL;
	Result.val = (ImGui::ColorEdit3(label, &color.x, flags) ? GMCOLOR_FROM(color) : col);
}

GMFUNC(__imgui_color_picker3) {
	const char* label = YYGetString(arg, 0);
	double col = YYGetReal(arg, 1);
	ImGuiColorEditFlags flags = YYGetInt64(arg, 2);
	GMDEFAULT(ImGuiColorEditFlags.None);
	GMOVERRIDE(ColorPicker3);

	ImVec4 color = GMCOLOR_TO(col, 1.0f);
	Result.kind = VALUE_REAL;
	Result.val = (ImGui::ColorPicker3(label, &color.x, flags) ? GMCOLOR_FROM(color) : col);
}

GMFUNC(__imgui_color_edit4) {
	const char* label = YYGetString(arg, 0);
	RValue* col = &arg[1];
	GMHINT(ImColor);
	ImGuiColorEditFlags flags = YYGetInt64(arg, 2);
	GMDEFAULT(ImGuiColorEditFlags.None);
	GMOVERRIDE(ColorEdit4);

	if (col->kind != VALUE_OBJECT) {
		ShowError("Could not call ImGui::ColorEdit4, expected struct as second argument");
		return;
	}

	RValue* r = YYStructGetMember(col, "r");
	RValue* g = YYStructGetMember(col, "g");
	RValue* b = YYStructGetMember(col, "b");
	RValue* a = YYStructGetMember(col, "a");
	ImVec4 color = ImVec4((float)(r->val / 0xFF), (float)(g->val / 0xFF), (float)(b->val / 0xFF), a->val);

	Result.kind = VALUE_BOOL;
	Result.val = false;
	if (ImGui::ColorEdit4(label, &color.x, flags)) {
		r->val = color.x * 0xFF;
		g->val = color.y * 0xFF;
		b->val = color.z * 0xFF;
		a->val = color.w;
		Result.val = true;
	}
}

GMFUNC(__imgui_color_picker4) {
	const char* label = YYGetString(arg, 0);
	RValue* col = &arg[1];
	GMHINT(ImColor);
	ImGuiColorEditFlags flags = YYGetInt64(arg, 2);
	GMDEFAULT(ImGuiColorEditFlags.None);
	GMOVERRIDE(ColorPicker4);

	if (col->kind != VALUE_OBJECT) {
		ShowError("Could not call ImGui::ColorPicker4, expected struct as second argument");
		return;
	}

	RValue* r = YYStructGetMember(col, "r");
	RValue* g = YYStructGetMember(col, "g");
	RValue* b = YYStructGetMember(col, "b");
	RValue* a = YYStructGetMember(col, "a");
	ImVec4 color = ImVec4((float)(r->val / 0xFF), (float)(g->val / 0xFF), (float)(b->val / 0xFF), a->val);

	Result.kind = VALUE_BOOL;
	Result.val = false;
	if (ImGui::ColorPicker4(label, &color.x, flags)) {
		r->val = color.x * 0xFF;
		g->val = color.y * 0xFF;
		b->val = color.z * 0xFF;
		a->val = color.w;
		Result.val = true;
	}
}

GMFUNC(__imgui_color_button) {
	const char* desc_id = YYGetString(arg, 0);
	double color = YYGetReal(arg, 1);
	float alpha = YYGetReal(arg, 2);
	GMDEFAULT(1);
	ImGuiColorEditFlags flags = YYGetInt64(arg, 3);
	GMDEFAULT(ImGuiColorEditFlags.None);
	double width = YYGetReal(arg, 4);
	GMDEFAULT(0);
	double height = YYGetReal(arg, 5);
	GMDEFAULT(0);

	Result.kind = VALUE_BOOL;
	Result.val = ImGui::ColorButton(desc_id, GMCOLOR_TO(color, alpha), flags, ImVec2(width, height));
}

GMFUNC(__imgui_set_color_edit_options) {
	ImGuiColorEditFlags flags = YYGetInt64(arg, 0);
	GMDEFAULT(ImGuiColorEditFlags.None);

	ImGui::SetColorEditOptions(flags);
	Result.kind = VALUE_UNDEFINED;
}