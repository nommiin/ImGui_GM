#include "imgui.h"
#include "imgui_impl_dx11.h"

#include "Extension_Interface.h"
#include "YYRValue.h"

#include <d3d11.h>

extern ID3D11Device* g_pd3dDevice;
extern ID3D11DeviceContext* g_pd3dDeviceContext;

#define GMFUNC(name) YYEXPORT void name(RValue& Result, CInstance* selfinst, CInstance* otherinst, int argc, RValue* arg)
#define GMDEFAULT(...) /**/
#define GMPASSTHROUGH(...) /**/
#define GMHIDDEN(...) /**/
#define GMPREPEND(...) /**/
#define GMAPPEND(...) /**/
#define GMCOLOR(col, alpha) ImColor((int)((int)col & 0xFF), (int)(((int)col >> 8) & 0xFF), (int)(((int)col >> 16) & 0xFF), alpha * 255)

#pragma warning( push )
#pragma warning( disable : 4244 )

static ID3D11ShaderResourceView* g_pView;
static inline ID3D11ShaderResourceView* GetTexture() {
	g_pd3dDeviceContext->PSGetShaderResources(0, 1, &g_pView);
	g_pd3dDeviceContext->VSSetShaderResources(0, 1, &g_pView);
	return g_pView;
}

template<typename T>
static inline T* YYGetArray(RValue* arg, int ind, int len) {
	RValue* arr = &arg[ind];
	RValue copy;
	T* val = new T[len];
	for (int i = 0; i < len; i++) {
		GET_RValue(&copy, arr, NULL, i);
		val[i] = copy.val;
	}
	FREE_RValue(&copy);
	return val;
}

template<typename T> static inline void YYSetArray(RValue* arg, T* arr, int len) {
	RValue copy{};
	for (int i = 0; i < len; i++) {
		copy.kind = VALUE_REAL;
		copy.val = arr[i];
		SET_RValue(arg, &copy, NULL, i);
	}
	FREE_RValue(&copy);
	return;
}

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
// - TextV()
// - TextColored()
// TODO - TextColoredV()
// - TextDisabled()
// TODO - TextDisabledV()
// - TextWrapped()
// TODO - TextWrappedV()
// - LabelText()
// TODO - LabelTextV()
// - BulletText()
// TODO - BulletTextV()
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

GMFUNC(__imgui_text_disabled) {
	const char* text = YYGetString(arg, 0);

	ImGui::TextDisabled(text);
	Result.kind = VALUE_UNDEFINED;
	return;
}

GMFUNC(__imgui_text_wrapped) {
	const char* text = YYGetString(arg, 0);

	ImGui::TextWrapped(text);
	Result.kind = VALUE_UNDEFINED;
	return;
}

GMFUNC(__imgui_label_text) {
	const char* label = YYGetString(arg, 0);
	const char* text = YYGetString(arg, 1);

	ImGui::LabelText(label, text);
	Result.kind = VALUE_UNDEFINED;
	return;
}

GMFUNC(__imgui_bullet_text) {
	const char* text = YYGetString(arg, 0);

	ImGui::BulletText(text);
	Result.kind = VALUE_UNDEFINED;
	return;
}

//-------------------------------------------------------------------------
// [SECTION] Widgets: Main
//-------------------------------------------------------------------------
// - Button()
// - SmallButton()
// - InvisibleButton()
// - ArrowButton()
// - Image()
// - ImageButton()
// - Checkbox()
// UNSUPPORTED - CheckboxFlags()
// - RadioButton()
// - ProgressBar()
// - Bullet()
//-------------------------------------------------------------------------
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

GMFUNC(__imgui_small_button) {
	const char* label = YYGetString(arg, 0);

	Result.kind = VALUE_BOOL;
	Result.val = ImGui::SmallButton(label);
	return;
}

GMFUNC(__imgui_invisible_button) {
	const char* id = YYGetString(arg, 0);
	double width = YYGetReal(arg, 1);
	GMDEFAULT(0);
	double height = YYGetReal(arg, 2);
	GMDEFAULT(0);
	int64 flags = YYGetInt64(arg, 3);
	GMDEFAULT(ImGuiButtonFlags.None);

	Result.kind = VALUE_BOOL;
	Result.val = ImGui::InvisibleButton(id, ImVec2(width, height), flags);
	return;
}

GMFUNC(__imgui_arrow_button) {
	const char* id = YYGetString(arg, 0);
	int64 dir = YYGetInt64(arg, 1);

	Result.kind = VALUE_BOOL;
	Result.val = ImGui::ArrowButton(id, (ImGuiDir)dir);
	return;
}

GMFUNC(__imgui_image) {
	double spr = YYGetReal(arg, 0);
	GMPREPEND(texture_set_stage(0, sprite_get_texture(#arg0, #arg1)))
	double frame = YYGetReal(arg, 1);
	GMDEFAULT(0);
	double width = YYGetReal(arg, 2);
	GMDEFAULT(sprite_get_width(#arg0));
	double height = YYGetReal(arg, 3);
	GMDEFAULT(sprite_get_height(#arg0));
	double* uvs = YYGetArray<double>(arg, 4, 4);
	GMPASSTHROUGH(sprite_get_uvs(#arg0, #arg1));
	GMHIDDEN();

	ImGui::Image(GetTexture(), ImVec2(width, height), ImVec2(uvs[0], uvs[1]), ImVec2(uvs[2], uvs[3]));
	delete[]uvs;
	Result.kind = VALUE_UNDEFINED;
	return;
}

GMFUNC(__imgui_image_button) {
	const char* id = YYGetString(arg, 0);
	double spr = YYGetReal(arg, 1);
	GMPREPEND(texture_set_stage(0, sprite_get_texture(#arg1, #arg2)))
	double frame = YYGetReal(arg, 2);
	GMDEFAULT(0);
	double width = YYGetReal(arg, 3);
	GMDEFAULT(sprite_get_width(#arg1));
	double height = YYGetReal(arg, 4);
	GMDEFAULT(sprite_get_height(#arg1));
	double* uvs = YYGetArray<double>(arg, 5, 4);
	GMPASSTHROUGH(sprite_get_uvs(#arg1, #arg2));
	GMHIDDEN();

	bool res = ImGui::ImageButton(id, GetTexture(), ImVec2(width, height), ImVec2(uvs[0], uvs[1]), ImVec2(uvs[2], uvs[3]));
	delete[]uvs;
	Result.kind = VALUE_BOOL;
	Result.val = res;
	return;
}

GMFUNC(__imgui_checkbox) {
	const char* label = YYGetString(arg, 0);
	bool val = YYGetBool(arg, 1);

	ImGui::Checkbox(label, &val);
	Result.kind = VALUE_BOOL;
	Result.val = val;
	return;
}

GMFUNC(__imgui_radio_button) {
	const char* label = YYGetString(arg, 0);
	bool active = YYGetBool(arg, 1);

	ImGui::RadioButton(label, &active);
	Result.kind = VALUE_BOOL;
	Result.val = active;
	return;
}

GMFUNC(__imgui_progressbar) {
	double frac = YYGetReal(arg, 0);
	double size_x = YYGetReal(arg, 1);
	GMDEFAULT(0);
	double size_y = YYGetReal(arg, 2);
	GMDEFAULT(0);
	const char* overlay = YYGetString(arg, 3);
	GMDEFAULT("");

	ImGui::ProgressBar(frac, ImVec2(size_x, size_y), overlay);
	Result.kind = VALUE_UNDEFINED;
	return;
}

GMFUNC(__imgui_bullet) {
	ImGui::Bullet();
	Result.kind = VALUE_UNDEFINED;
	return;
}

//-------------------------------------------------------------------------
// [SECTION] Widgets: Low-level Layout helpers
//-------------------------------------------------------------------------
// - Spacing()
// - Dummy()
// - NewLine()
// - AlignTextToFramePadding()
// - Separator()
//-------------------------------------------------------------------------
GMFUNC(__imgui_spacing) {
	ImGui::Spacing();
	Result.kind = VALUE_UNDEFINED;
	return;
}

GMFUNC(__imgui_dummy) {
	double width = YYGetReal(arg, 0);
	double height = YYGetReal(arg, 1);
	ImGui::Dummy(ImVec2(width, height));
	Result.kind = VALUE_UNDEFINED;
	return;
}

GMFUNC(__imgui_newline) {
	ImGui::NewLine();
	Result.kind = VALUE_UNDEFINED;
	return;
}

GMFUNC(__imgui_align_text_to_frame_padding) {
	ImGui::AlignTextToFramePadding();
	Result.kind = VALUE_UNDEFINED;
	return;
}

GMFUNC(__imgui_separator) {
	ImGui::Separator();
	Result.kind = VALUE_UNDEFINED;
	return;
}

//-------------------------------------------------------------------------
// [SECTION] Widgets: ComboBox
//-------------------------------------------------------------------------
// - BeginCombo()
// - EndCombo()
// UNSUPPORTED - Combo()
//-------------------------------------------------------------------------
GMFUNC(__imgui_begin_combo) {
	const char* label = YYGetString(arg, 0);
	const char* preview_val = YYGetString(arg, 1);
	int64 flags = YYGetInt64(arg, 2);
	GMDEFAULT(ImGuiComboFlags.None);
	Result.kind = VALUE_BOOL;
	Result.val = ImGui::BeginCombo(label, preview_val, (ImGuiComboFlags)flags);
	return;
}

GMFUNC(__imgui_end_combo) {
	ImGui::EndCombo();
	Result.kind = VALUE_UNDEFINED;
	return;
}

//-------------------------------------------------------------------------
// [SECTION] Widgets: DragScalar, DragFloat, DragInt, etc.
//-------------------------------------------------------------------------
// UNSUPPORTED - DragScalar()
// UNSUPPORTED - DragScalarN()
// - DragFloat()
// - DragFloat2()
// - DragFloat3()
// - DragFloat4()
// - DragFloatRange2()
// - DragInt()
// - DragInt2()
// - DragInt3()
// - DragInt4()
// - DragIntRange2()
//-------------------------------------------------------------------------
GMFUNC(__imgui_drag_float) {
	const char* label = YYGetString(arg, 0);
	float val = YYGetFloat(arg, 1);
	double val_speed = YYGetReal(arg, 2);
	GMDEFAULT(1);
	double val_min = YYGetReal(arg, 3);
	GMDEFAULT(1);
	double val_max = YYGetReal(arg, 4);
	GMDEFAULT(1);
	const char* fmt = YYGetString(arg, 5);
	GMDEFAULT("%.3f");
	int64 flags = YYGetInt64(arg, 6);
	GMDEFAULT(ImGuiComboFlags.None);

	ImGui::DragFloat(label, &val, val_speed, val_min, val_max, fmt, flags);
	Result.kind = VALUE_REAL;
	Result.val = val;
	return;
}

GMFUNC(__imgui_drag_float2) {
	const int len = 2;

	const char* label = YYGetString(arg, 0);
	float* val = YYGetArray<float>(arg, 1, len);
	double val_speed = YYGetReal(arg, 2);
	GMDEFAULT(1);
	double val_min = YYGetReal(arg, 3);
	GMDEFAULT(1);
	double val_max = YYGetReal(arg, 4);
	GMDEFAULT(1);
	const char* fmt = YYGetString(arg, 5);
	GMDEFAULT("%.3f");
	int64 flags = YYGetInt64(arg, 6);
	GMDEFAULT(ImGuiComboFlags.None);

	if (ImGui::DragFloat3(label, val, val_speed, val_min, val_max, fmt, flags)) {
		YYSetArray(&arg[1], val, len);
	}
	Result = arg[1];
	return;
}

GMFUNC(__imgui_drag_float3) {
	const int len = 3;

	const char* label = YYGetString(arg, 0);
	float* val = YYGetArray<float>(arg, 1, len);
	double val_speed = YYGetReal(arg, 2);
	GMDEFAULT(1);
	double val_min = YYGetReal(arg, 3);
	GMDEFAULT(1);
	double val_max = YYGetReal(arg, 4);
	GMDEFAULT(1);
	const char* fmt = YYGetString(arg, 5);
	GMDEFAULT("%.3f");
	int64 flags = YYGetInt64(arg, 6);
	GMDEFAULT(ImGuiComboFlags.None);

	if (ImGui::DragFloat3(label, val, val_speed, val_min, val_max, fmt, flags)) {
		YYSetArray(&arg[1], val, len);
	}
	Result = arg[1];
	return;
}

GMFUNC(__imgui_drag_float4) {
	const int len = 4;

	const char* label = YYGetString(arg, 0);
	float* val = YYGetArray<float>(arg, 1, len);
	double val_speed = YYGetReal(arg, 2);
	GMDEFAULT(1);
	double val_min = YYGetReal(arg, 3);
	GMDEFAULT(1);
	double val_max = YYGetReal(arg, 4);
	GMDEFAULT(1);
	const char* fmt = YYGetString(arg, 5);
	GMDEFAULT("%.3f");
	int64 flags = YYGetInt64(arg, 6);
	GMDEFAULT(ImGuiComboFlags.None);

	if (ImGui::DragFloat4(label, val, val_speed, val_min, val_max, fmt, flags)) {
		YYSetArray(&arg[1], val, len);
	}
	Result = arg[1];
	return;
}

GMFUNC(__imgui_drag_float_range2) {
	const int len = 2;

	const char* label = YYGetString(arg, 0);
	float* val = YYGetArray<float>(arg, 1, len);
	double val_speed = YYGetReal(arg, 2);
	GMDEFAULT(1);
	double val_min = YYGetReal(arg, 3);
	GMDEFAULT(1);
	double val_max = YYGetReal(arg, 4);
	GMDEFAULT(1);
	const char* fmt = YYGetString(arg, 5);
	GMDEFAULT("%.3f");
	const char* fmt_max = YYGetString(arg, 6);
	GMDEFAULT("%.3f");
	int64 flags = YYGetInt64(arg, 7);
	GMDEFAULT(ImGuiComboFlags.None);

	Result.kind = VALUE_UNDEFINED;
	if (ImGui::DragFloatRange2(label, &val[0], &val[1], val_speed, val_min, val_max, fmt, fmt_max, (ImGuiComboFlags)flags)) {
		YYSetArray(&arg[1], val, len);
	}
	return;
}

GMFUNC(__imgui_drag_int) {
	const char* label = YYGetString(arg, 0);
	int val = YYGetReal(arg, 1);
	double val_speed = YYGetReal(arg, 2);
	GMDEFAULT(1);
	double val_min = YYGetReal(arg, 3);
	GMDEFAULT(1);
	double val_max = YYGetReal(arg, 4);
	GMDEFAULT(1);
	const char* fmt = YYGetString(arg, 5);
	GMDEFAULT("%d");
	int64 flags = YYGetInt64(arg, 6);
	GMDEFAULT(ImGuiComboFlags.None);

	ImGui::DragInt(label, &val, val_speed, val_min, val_max, fmt, flags);
	Result.kind = VALUE_REAL;
	Result.val = val;
	return;
}

GMFUNC(__imgui_drag_int2) {
	const int len = 2;

	const char* label = YYGetString(arg, 0);
	int* val = YYGetArray<int>(arg, 1, len);
	double val_speed = YYGetReal(arg, 2);
	GMDEFAULT(1);
	double val_min = YYGetReal(arg, 3);
	GMDEFAULT(1);
	double val_max = YYGetReal(arg, 4);
	GMDEFAULT(1);
	const char* fmt = YYGetString(arg, 5);
	GMDEFAULT("%d");
	int64 flags = YYGetInt64(arg, 6);
	GMDEFAULT(ImGuiComboFlags.None);

	if (ImGui::DragInt2(label, val, val_speed, val_min, val_max, fmt, flags)) {
		YYSetArray(&arg[1], val, len);
	}
	Result = arg[1];
	return;
}

GMFUNC(__imgui_drag_int3) {
	const int len = 3;

	const char* label = YYGetString(arg, 0);
	int* val = YYGetArray<int>(arg, 1, len);
	double val_speed = YYGetReal(arg, 2);
	GMDEFAULT(1);
	double val_min = YYGetReal(arg, 3);
	GMDEFAULT(1);
	double val_max = YYGetReal(arg, 4);
	GMDEFAULT(1);
	const char* fmt = YYGetString(arg, 5);
	GMDEFAULT("%d");
	int64 flags = YYGetInt64(arg, 6);
	GMDEFAULT(ImGuiComboFlags.None);

	if (ImGui::DragInt3(label, val, val_speed, val_min, val_max, fmt, flags)) {
		YYSetArray(&arg[1], val, len);
	}
	Result = arg[1];
	return;
}

GMFUNC(__imgui_drag_int4) {
	const int len = 4;

	const char* label = YYGetString(arg, 0);
	int* val = YYGetArray<int>(arg, 1, len);
	double val_speed = YYGetReal(arg, 2);
	GMDEFAULT(1);
	double val_min = YYGetReal(arg, 3);
	GMDEFAULT(1);
	double val_max = YYGetReal(arg, 4);
	GMDEFAULT(1);
	const char* fmt = YYGetString(arg, 5);
	GMDEFAULT("%d");
	int64 flags = YYGetInt64(arg, 6);
	GMDEFAULT(ImGuiComboFlags.None);

	if (ImGui::DragInt4(label, val, val_speed, val_min, val_max, fmt, flags)) {
		YYSetArray(&arg[1], val, len);
	}
	Result = arg[1];
	return;
}

GMFUNC(__imgui_drag_int_range2) {
	const int len = 2;

	const char* label = YYGetString(arg, 0);
	int* val = YYGetArray<int>(arg, 1, len);
	double val_speed = YYGetReal(arg, 2);
	GMDEFAULT(1);
	double val_min = YYGetReal(arg, 3);
	GMDEFAULT(1);
	double val_max = YYGetReal(arg, 4);
	GMDEFAULT(1);
	const char* fmt = YYGetString(arg, 5);
	GMDEFAULT("%.3f");
	const char* fmt_max = YYGetString(arg, 6);
	GMDEFAULT("%.3f");
	int64 flags = YYGetInt64(arg, 7);
	GMDEFAULT(ImGuiComboFlags.None);

	Result.kind = VALUE_UNDEFINED;
	if (ImGui::DragIntRange2(label, &val[0], &val[1], val_speed, val_min, val_max, fmt, fmt_max, (ImGuiComboFlags)flags)) {
		YYSetArray(&arg[1], val, len);
	}
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

#pragma warning( pop )