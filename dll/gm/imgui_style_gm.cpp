#include "../imgui_gm.h"

GMFUNC(__imgui_style_colors_dark) {
	ImGui::StyleColorsDark();
	Result.kind = VALUE_UNDEFINED;
}

GMFUNC(__imgui_style_colors_light) {
	ImGui::StyleColorsLight();
	Result.kind = VALUE_UNDEFINED;
}

GMFUNC(__imgui_style_colors_classic) {
	ImGui::StyleColorsClassic();
	Result.kind = VALUE_UNDEFINED;
}

GMFUNC(__imgui_push_style_color) {
	ImGuiCol idx = YYGetReal(arg, 0);
	double col = YYGetReal(arg, 1);
	float alpha = YYGetReal(arg, 2);

	ImGui::PushStyleColor(idx, GMCOLOR_TO(col, alpha));
	Result.kind = VALUE_UNDEFINED;
}

GMFUNC(__imgui_pop_style_color) {
	double count = YYGetReal(arg, 0);
	GMDEFAULT(1);
	
	ImGui::PopStyleColor(count);
	Result.kind = VALUE_UNDEFINED;
}

GMFUNC(__imgui_push_style_var) {
	ImGuiStyleVar idx = YYGetReal(arg, 0);
	float val = YYGetReal(arg, 1);
	RValue* val2 = &arg[2];
	GMDEFAULT(undefined);

	Result.kind = VALUE_UNDEFINED;
	if (val2->kind != VALUE_UNDEFINED) {
		ImGui::PushStyleVar(idx, ImVec2(val, val2->val));
		return;
	}
	ImGui::PushStyleVar(idx, val);
}

GMFUNC(__imgui_push_style_var_x) {
	GMOVERRIDE(PushStyleVarX);

	ImGuiStyleVar idx = YYGetReal(arg, 0);
	float val_x = YYGetFloat(arg, 1);

	ImGui::PushStyleVarX(idx, val_x);

	Result.kind = VALUE_UNDEFINED;
}

GMFUNC(__imgui_push_style_var_y) {
	GMOVERRIDE(PushStyleVarY);

	ImGuiStyleVar idx = YYGetReal(arg, 0);
	float val_y = YYGetFloat(arg, 1);

	ImGui::PushStyleVarY(idx, val_y);

	Result.kind = VALUE_UNDEFINED;
}

GMFUNC(__imgui_pop_style_var) {
	double count = YYGetReal(arg, 0);
	GMDEFAULT(1);

	ImGui::PopStyleVar(count);
	Result.kind = VALUE_UNDEFINED;
}

GMFUNC(__imgui_get_style_color) {
	ImGuiCol idx = YYGetReal(arg, 0);

	Result.kind = VALUE_REAL;
	Result.val = GMCOLOR_FROM(ImGui::GetStyleColorVec4(idx));
}

GMFUNC(__imgui_get_style_color_name) {
	ImGuiCol idx = YYGetReal(arg, 0);
	GMOVERRIDE(GetStyleColorName);

	Result.kind = VALUE_STRING;
	YYCreateString(&Result, ImGui::GetStyleColorName(idx));
}

GMFUNC(__imgui_set_style_color) {
	GMOVERRIDE(SetStyleColor);
	ImGuiCol idx = YYGetReal(arg, 0);
	double col = YYGetReal(arg, 1);
	float alpha = YYGetReal(arg, 2);

	ImGuiContext* ctx = ImGui::GetCurrentContext();
	if (ctx->DebugFlashStyleColorIdx != idx)
		ctx->Style.Colors[idx] = GMCOLOR_TO(col, alpha);

	Result.kind = VALUE_UNDEFINED;
}

GMFUNC(__imgui_set_style_var) {
	GMOVERRIDE(SetStyleVar);
	ImGuiCol idx = YYGetReal(arg, 0);
	RValue* val = &arg[1];
	RValue* val2 = &arg[2];
	GMDEFAULT(undefined);

	Result.kind = VALUE_UNDEFINED;
	
	ImGuiContext* ctx = ImGui::GetCurrentContext();

	const ImGuiDataVarInfo* var_info = ImGui::GetStyleVarInfo(idx);
	if (var_info->Type != ImGuiDataType_Float || var_info->Count != 1)
	{
		IM_ASSERT_USER_ERROR(0, "Calling SetStyleVar() variant with wrong type!");
		return;
	}
	if (val2->kind != VALUE_UNDEFINED || val->kind != VALUE_REAL) {
		ImVec2* pvar = (ImVec2*)var_info->GetVarPtr(&ctx->Style);
		*pvar = ImVec2(val->val, val2->val);
	} else {
		float* pvar = (float*)var_info->GetVarPtr(&ctx->Style);
		*pvar = val->val;
	}
}