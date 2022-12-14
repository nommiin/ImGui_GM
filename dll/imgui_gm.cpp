#include "imgui.h"
#include "imgui_impl_dx11.h"

#include "Extension_Interface.h"
#include "YYRValue.h"

// For storing changed input values
static char INPUT_STR[256] = "";


#define GMFUNC(name) YYEXPORT void name(RValue& Result, CInstance* selfinst, CInstance* otherinst, int argc, RValue* arg)
#define GMDEFAULT(...) //

// Direct bindings for ImGui functions to GML, add to ImGui statics
GMFUNC(__imgui_begin) {
	const char* name = YYGetString(arg, 0);
	bool show = YYGetBool(arg, 1);
	GMDEFAULT(false);
	int64 flags = YYGetInt64(arg, 2);
	GMDEFAULT(ImGuiWindowFlags.None);
	 
	Result.kind = VALUE_BOOL;
	Result.val = ImGui::Begin(name, &show, (ImGuiWindowFlags)flags);
	return;
}

GMFUNC(__imgui_end) {
	ImGui::End();
	Result.kind = VALUE_UNDEFINED;
	return;
}

GMFUNC(__imgui_text) {
	const char* val = YYGetString(arg, 0);
	
	ImGui::Text(val);
	Result.kind = VALUE_UNDEFINED;
	return;
}

GMFUNC(__imgui_input_text) {
	const char* label = YYGetString(arg, 0);
	const char* val = YYGetString(arg, 1);
	int64 flags = YYGetInt64(arg, 2);
	GMDEFAULT(ImGuiInputTextFlags.None);
	memcpy(INPUT_STR, val, strlen(val));

	ImGui::InputText(label, INPUT_STR, IM_ARRAYSIZE(INPUT_STR), (ImGuiInputTextFlags)flags);
	RValue res = { 0 };
	YYCreateString(&res, INPUT_STR);
	COPY_RValue(&Result, &res);
	FREE_RValue(&res);
	return;
}

GMFUNC(__imgui_button) {
	const char* label = YYGetString(arg, 0);
	double width = YYGetReal(arg, 1);
	GMDEFAULT(0);
	double height = YYGetReal(arg, 2);
	GMDEFAULT(0);

	Result.kind = VALUE_BOOL;
	Result.val = ImGui::Button(label, ImVec2(width, height));
	return;
}

GMFUNC(__imgui_show_about) {
	bool show = YYGetBool(arg, 0);

	ImGui::ShowAboutWindow(&show);
	Result.kind = VALUE_UNDEFINED;
	return;
}

GMFUNC(__imgui_show_demo) {
	bool show = YYGetBool(arg, 0);

	ImGui::ShowDemoWindow(&show);
	Result.kind = VALUE_UNDEFINED;
	return;
}

GMFUNC(__imgui_show_style) {
	ImGui::ShowStyleEditor();
	Result.kind = VALUE_UNDEFINED;
	return;
}

GMFUNC(__imgui_set_next_window_pos) {
	double x = YYGetReal(arg, 0);
	double y = YYGetReal(arg, 1);
	int64 cond = YYGetInt64(arg, 2);
	GMDEFAULT(ImGuiCond.Default);
	double pivot_x = YYGetReal(arg, 3);
	GMDEFAULT(0);
	double pivot_y = YYGetReal(arg, 4);
	GMDEFAULT(0);

	ImGui::SetNextWindowPos(ImVec2(x, y), cond, ImVec2(pivot_x, pivot_y));
	Result.kind = VALUE_UNDEFINED;
	return;
}

GMFUNC(__imgui_set_next_window_size) {
	double width = YYGetReal(arg, 0);
	double height = YYGetReal(arg, 1);
	GMDEFAULT(ImGuiCond.Default);
	int64 cond = YYGetInt64(arg, 2);

	ImGui::SetNextWindowSize(ImVec2(width, height), cond);
	Result.kind = VALUE_UNDEFINED;
	return;
}