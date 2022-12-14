#include "imgui.h"
#include "imgui_impl_dx11.h"

#include "Extension_Interface.h"
#include "YYRValue.h"

#define GMFUNC(name) YYEXPORT void name(RValue& Result, CInstance* selfinst, CInstance* otherinst, int argc, RValue* arg)
#define GMDEFAULT(...) //
#define GMCOLOR(col, alpha) ImColor((int)((int)col & 0xFF), (int)(((int)col >> 8) & 0xFF), (int)(((int)col >> 16) & 0xFF), alpha * 255)
// BBGGRR

char g_pInputBuffer[256] = "";

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
	GMDEFAULT(ImGuiCond.Always);
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
	int64 cond = YYGetInt64(arg, 2);
	GMDEFAULT(ImGuiCond.Always);

	ImGui::SetNextWindowSize(ImVec2(width, height), cond);
	Result.kind = VALUE_UNDEFINED;
	return;
}

//-------------------------------------------------------------------------
// [SECTION] Widgets: Text, etc.
//-------------------------------------------------------------------------
// - TextUnformatted()
// - Text()
// - TODO: TextV()
// - TextColored()
// - TODO: TextColoredV()
// - TextDisabled()
// - TODO: TextDisabledV()
// - TextWrapped()
// - TODO: TextWrappedV()
// - LabelText()
// - TODO: LabelTextV()
// - BulletText()
// - TODO: BulletTextV()
//-------------------------------------------------------------------------
GMFUNC(__imgui_text_unformatted) {
	const char* text = YYGetString(arg, 0);
	const char* text_end = YYGetString(arg, 1);
	GMDEFAULT("");

	// TODO: text_end seems like it might be evil, since it gets borked in GM? Will need to look into this 

	ImGui::TextUnformatted(text, text_end);
	Result.kind = VALUE_UNDEFINED;
	return;
}

GMFUNC(__imgui_text) {
	const char* text = YYGetString(arg, 0);

	ImGui::Text(text);
	Result.kind = VALUE_UNDEFINED;
	return;
}

GMFUNC(__imgui_text_colored) {
	const char* text = YYGetString(arg, 0);
	int64 color = YYGetInt64(arg, 1);
	double alpha = YYGetReal(arg, 2);
	GMDEFAULT(1)
	
	ImGui::TextColored(GMCOLOR(color, alpha), text);
	Result.kind = VALUE_UNDEFINED;
	return;
}

//-------------------------------------------------------------------------
// [SECTION] Widgets: ColorEdit, ColorPicker, ColorButton, etc.
//-------------------------------------------------------------------------
// - ColorEdit3()
// - ColorEdit4()
// - ColorPicker3()
// - RenderColorRectWithAlphaCheckerboard() [Internal]
// - ColorPicker4()
// - ColorButton()
// - SetColorEditOptions()
//-------------------------------------------------------------------------


//-------------------------------------------------------------------------
// [SECTION] Widgets: InputText, InputTextMultiline, InputTextWithHint
//-------------------------------------------------------------------------
// - InputText()
// - InputTextWithHint()
// - InputTextMultiline()
//-------------------------------------------------------------------------
char INPUT_BUF[128];
GMFUNC(__imgui_input_text) {
	const char* label = YYGetString(arg, 0);
	const char* val = YYGetString(arg, 1);
	int64 flags = YYGetInt64(arg, 2);
	GMDEFAULT(ImGuiInputTextFlags.None);

	strcpy(INPUT_BUF, val);
	ImGui::InputText(label, INPUT_BUF, IM_ARRAYSIZE(INPUT_BUF), (ImGuiInputTextFlags)flags);
	RValue res = { 0 };
	YYCreateString(&res, INPUT_BUF);
	COPY_RValue(&Result, &res);
	FREE_RValue(&res);
	return;
}

GMFUNC(__imgui_input_text_with_hint) {
	const char* label = YYGetString(arg, 0);
	const char* hint = YYGetString(arg, 1);
	const char* val = YYGetString(arg, 2);
	int64 flags = YYGetInt64(arg, 3);
	GMDEFAULT(ImGuiInputTextFlags.None);

	strcpy(INPUT_BUF, val);
	ImGui::InputTextWithHint(label, hint, INPUT_BUF, IM_ARRAYSIZE(INPUT_BUF), (ImGuiInputTextFlags)flags);
	RValue res = { 0 };
	YYCreateString(&res, INPUT_BUF);
	COPY_RValue(&Result, &res);
	FREE_RValue(&res);
	return;
}

GMFUNC(__imgui_input_text_multiline) {
	const char* label = YYGetString(arg, 0);
	const char* val = YYGetString(arg, 1);
	int64 flags = YYGetInt64(arg, 2);
	GMDEFAULT(ImGuiInputTextFlags.None);
	double width = YYGetReal(arg, 3);
	GMDEFAULT(0);
	double height = YYGetReal(arg, 4);
	GMDEFAULT(0);

	strcpy(INPUT_BUF, val);
	ImGui::InputTextMultiline(label, INPUT_BUF, IM_ARRAYSIZE(INPUT_BUF), ImVec2(width, height), (ImGuiInputTextFlags)flags);
	RValue res = { 0 };
	YYCreateString(&res, INPUT_BUF);
	COPY_RValue(&Result, &res);
	FREE_RValue(&res);
	return;
}