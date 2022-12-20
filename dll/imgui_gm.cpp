#include "imgui.h"
#include "imgui_impl_dx11.h"

#include "Extension_Interface.h"
#include "YYRValue.h"
#include "Ref.h"

#include <d3d11.h>
#include <vector>
#include <string>

extern ID3D11Device* g_pd3dDevice;
extern ID3D11DeviceContext* g_pd3dDeviceContext;

static ID3D11ShaderResourceView* g_pView;
static inline ID3D11ShaderResourceView* GetTexture() {
	g_pd3dDeviceContext->PSGetShaderResources(0, 1, &g_pView);
	g_pd3dDeviceContext->VSSetShaderResources(0, 1, &g_pView);
	return g_pView;
}

static RValue s_Copy;

#define GMFUNC(name) __declspec(dllexport) void name(RValue& Result, CInstance* selfinst, CInstance* otherinst, int argc, RValue* arg)
#define GMDEFAULT(...) /**/
#define GMPASSTHROUGH(...) /**/
#define GMHIDDEN(...) /**/
#define GMPREPEND(...) /**/
#define GMAPPEND(...) /**/
#define GMCOLOR_TO(col, alpha) ImColor((int)((int)col & 0xFF), (int)(((int)col >> 8) & 0xFF), (int)(((int)col >> 16) & 0xFF), alpha * 255)
#define GMCOLOR_FROM(col) (double)((int)(col[0] * 0xFF) | (int)((int)(col[1] * 0xFF) << 8) | (int)((int)(col[2] * 0xFF) << 16))
#define SCRATCH_BUFFER_SIZE 4096

template<typename T> static inline T* YYGetArray(RValue* arg, int ind, int len) {
	RValue* arr = &arg[ind];
	T* val = new T[len];
	for (int i = 0; i < len; i++) {
		GET_RValue(&s_Copy, arr, NULL, i);
		val[i] = s_Copy.val;
	}
	return val;
}

template<typename T> static inline void YYSetArray(RValue* arg, T* arr, int len) {
	for (int i = 0; i < len; i++) {
		s_Copy.kind = VALUE_REAL;
		s_Copy.val = arr[i];
		SET_RValue(arg, &s_Copy, NULL, i);
	}
	return;
}

#pragma warning( push )
#pragma warning( disable : 4244 )

enum ImGuiReturnFlags {
	Show = 1 << 0,
	Open = 1 << 1,
	Both = Show | Open
};

// Direct bindings for ImGui functions to GML, add to ImGui statics
GMFUNC(__imgui_begin) {
	const char* name = YYGetString(arg, 0);
	bool open = YYGetBool(arg, 1);
	GMDEFAULT(undefined);
	int64 flags = YYGetInt64(arg, 2);
	GMDEFAULT(ImGuiWindowFlags.None);
	int64 ret_mask = YYGetInt64(arg, 3);
	GMDEFAULT(ImGuiReturnFlags.Open);
	
	bool ret = ImGui::Begin(name, &open, (ImGuiWindowFlags)flags);
	Result.kind = VALUE_REAL;
	Result.val = ((open << 1) | (int)ret) & ret_mask;
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
// UNSUPPORTED - TextUnformatted()
// - Text()
// UNSUPPORTED - TextV()
// - TextColored()
// UNSUPPORTED - TextColoredV()
// - TextDisabled()
// UNSUPPORTED - TextDisabledV()
// - TextWrapped()
// UNSUPPORTED - TextWrappedV()
// - LabelText()
// UNSUPPORTED - LabelTextV()
// - BulletText()
// UNSUPPORTED - BulletTextV()
//-------------------------------------------------------------------------
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

	ImGui::TextColored(GMCOLOR_TO(color, alpha), text);
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
	double frame = YYGetReal(arg, 1);
	GMDEFAULT(0);
	double width = YYGetReal(arg, 2);
	GMDEFAULT(sprite_get_width(#arg0));
	double height = YYGetReal(arg, 3);
	GMDEFAULT(sprite_get_height(#arg0));
	double blend = YYGetReal(arg, 4);
	GMDEFAULT(c_white);
	double* uvs = YYGetArray<double>(arg, 5, 4);
	GMPASSTHROUGH(sprite_get_uvs(#arg0, #arg1));
	GMHIDDEN();
	GMPREPEND(texture_set_stage(0, sprite_get_texture(#arg0, #arg1)));

	Result.kind = VALUE_UNDEFINED;
	ImGui::Image(GetTexture(), ImVec2(width, height), ImVec2(uvs[0], uvs[1]), ImVec2(uvs[2], uvs[3]), GMCOLOR_TO(blend, 1));
	delete[]uvs;
	return;
}

GMFUNC(__imgui_image_button) {
	const char* id = YYGetString(arg, 0);
	double spr = YYGetReal(arg, 1);
	double frame = YYGetReal(arg, 2);
	GMDEFAULT(0);
	double width = YYGetReal(arg, 3);
	GMDEFAULT(sprite_get_width(#arg1));
	double height = YYGetReal(arg, 4);
	GMDEFAULT(sprite_get_height(#arg1));
	double blend = YYGetReal(arg, 5);
	GMDEFAULT(c_white);
	double* uvs = YYGetArray<double>(arg, 6, 4);
	GMPASSTHROUGH(sprite_get_uvs(#arg1, #arg2));
	GMHIDDEN();
	GMPREPEND(texture_set_stage(0, sprite_get_texture(#arg1, #arg2)));

	Result.kind = VALUE_BOOL;
	Result.val = ImGui::ImageButton(id, GetTexture(), ImVec2(width, height), ImVec2(uvs[0], uvs[1]), ImVec2(uvs[2], uvs[3]), ImColor(255, 0, 255, 255), GMCOLOR_TO(blend, 1));
	delete[]uvs;
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

	if (ImGui::DragFloat2(label, val, val_speed, val_min, val_max, fmt, flags)) {
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
// [SECTION] Widgets: SliderScalar, SliderFloat, SliderInt, etc.
//-------------------------------------------------------------------------
// UNSUPPORTED - SliderScalar()
// UNSUPPORTED - SliderScalarN()
// - SliderFloat()
// - SliderFloat2()
// - SliderFloat3()
// - SliderFloat4()
// - SliderAngle()
// - SliderInt()
// - SliderInt2()
// - SliderInt3()
// - SliderInt4()
// - VSliderScalar()
// - VSliderFloat()
// - VSliderInt()
//-------------------------------------------------------------------------
GMFUNC(__imgui_slider_float) {
	const char* label = YYGetString(arg, 0);
	float val = YYGetFloat(arg, 1);
	double val_min = YYGetReal(arg, 2);
	GMDEFAULT(1);
	double val_max = YYGetReal(arg, 3);
	GMDEFAULT(1);
	const char* fmt = YYGetString(arg, 4);
	GMDEFAULT("%.3f");
	int64 flags = YYGetInt64(arg, 5);
	GMDEFAULT(ImGuiSliderFlags.None);

	ImGui::SliderFloat(label, &val, val_min, val_max, fmt, flags);
	Result.kind = VALUE_REAL;
	Result.val = val;
	return;
}

GMFUNC(__imgui_slider_float2) {
	const int len = 2;

	const char* label = YYGetString(arg, 0);
	float* val = YYGetArray<float>(arg, 1, len);
	GMDEFAULT(1);
	double val_min = YYGetReal(arg, 2);
	GMDEFAULT(1);
	double val_max = YYGetReal(arg, 3);
	GMDEFAULT(1);
	const char* fmt = YYGetString(arg, 4);
	GMDEFAULT("%.3f");
	int64 flags = YYGetInt64(arg, 5);
	GMDEFAULT(ImGuiSliderFlags.None);

	if (ImGui::SliderFloat2(label, val, val_min, val_max, fmt, flags)) {
		YYSetArray(&arg[1], val, len);
	}
	Result = arg[1];
	return;
}

GMFUNC(__imgui_slider_float3) {
	const int len = 3;

	const char* label = YYGetString(arg, 0);
	float* val = YYGetArray<float>(arg, 1, len);
	GMDEFAULT(1);
	double val_min = YYGetReal(arg, 2);
	GMDEFAULT(1);
	double val_max = YYGetReal(arg, 3);
	GMDEFAULT(1);
	const char* fmt = YYGetString(arg, 4);
	GMDEFAULT("%.3f");
	int64 flags = YYGetInt64(arg, 5);
	GMDEFAULT(ImGuiSliderFlags.None);

	if (ImGui::SliderFloat3(label, val, val_min, val_max, fmt, flags)) {
		YYSetArray(&arg[1], val, len);
	}
	Result = arg[1];
	return;
}

GMFUNC(__imgui_slider_float4) {
	const int len = 4;

	const char* label = YYGetString(arg, 0);
	float* val = YYGetArray<float>(arg, 1, len);
	GMDEFAULT(1);
	double val_min = YYGetReal(arg, 2);
	GMDEFAULT(1);
	double val_max = YYGetReal(arg, 3);
	GMDEFAULT(1);
	const char* fmt = YYGetString(arg, 4);
	GMDEFAULT("%.3f");
	int64 flags = YYGetInt64(arg, 5);
	GMDEFAULT(ImGuiSliderFlags.None);

	if (ImGui::SliderFloat4(label, val, val_min, val_max, fmt, flags)) {
		YYSetArray(&arg[1], val, len);
	}
	Result = arg[1];
	return;
}

GMFUNC(__imgui_slider_angle) {
	const char* label = YYGetString(arg, 0);
	float v_rad = YYGetFloat(arg, 1);
	double v_deg_min = YYGetReal(arg, 2);
	GMDEFAULT(1);
	double v_deg_max = YYGetReal(arg, 3);
	GMDEFAULT(1);
	const char* fmt = YYGetString(arg, 4);
	GMDEFAULT("%.0f deg");
	int64 flags = YYGetInt64(arg, 5);
	GMDEFAULT(ImGuiSliderFlags.None);

	ImGui::SliderAngle(label, &v_rad, v_deg_min, v_deg_max, fmt, flags);
	Result.kind = VALUE_REAL;
	Result.val = v_rad;
	return;
}

GMFUNC(__imgui_slider_int) {
	const char* label = YYGetString(arg, 0);
	int val = YYGetReal(arg, 1);
	double val_min = YYGetReal(arg, 2);
	GMDEFAULT(1);
	double val_max = YYGetReal(arg, 3);
	GMDEFAULT(1);
	const char* fmt = YYGetString(arg, 4);
	GMDEFAULT("%d");
	int64 flags = YYGetInt64(arg, 5);
	GMDEFAULT(ImGuiSliderFlags.None);

	ImGui::SliderInt(label, &val, val_min, val_max, fmt, flags);
	Result.kind = VALUE_REAL;
	Result.val = val;
	return;
}

GMFUNC(__imgui_slider_int2) {
	const int len = 2;

	const char* label = YYGetString(arg, 0);
	int* val = YYGetArray<int>(arg, 1, len);
	GMDEFAULT(1);
	double val_min = YYGetReal(arg, 2);
	GMDEFAULT(1);
	double val_max = YYGetReal(arg, 3);
	GMDEFAULT(1);
	const char* fmt = YYGetString(arg, 4);
	GMDEFAULT("%d");
	int64 flags = YYGetInt64(arg, 5);
	GMDEFAULT(ImGuiSliderFlags.None);

	if (ImGui::SliderInt2(label, val, val_min, val_max, fmt, flags)) {
		YYSetArray(&arg[1], val, len);
	}
	Result = arg[1];
	return;
}

GMFUNC(__imgui_slider_int3) {
	const int len = 3;

	const char* label = YYGetString(arg, 0);
	int* val = YYGetArray<int>(arg, 1, len);
	GMDEFAULT(1);
	double val_min = YYGetReal(arg, 2);
	GMDEFAULT(1);
	double val_max = YYGetReal(arg, 3);
	GMDEFAULT(1);
	const char* fmt = YYGetString(arg, 4);
	GMDEFAULT("%d");
	int64 flags = YYGetInt64(arg, 5);
	GMDEFAULT(ImGuiSliderFlags.None);

	if (ImGui::SliderInt3(label, val, val_min, val_max, fmt, flags)) {
		YYSetArray(&arg[1], val, len);
	}
	Result = arg[1];
	return;
}

GMFUNC(__imgui_slider_int4) {
	const int len = 4;

	const char* label = YYGetString(arg, 0);
	int* val = YYGetArray<int>(arg, 1, len);
	GMDEFAULT(1);
	double val_min = YYGetReal(arg, 2);
	GMDEFAULT(1);
	double val_max = YYGetReal(arg, 3);
	GMDEFAULT(1);
	const char* fmt = YYGetString(arg, 4);
	GMDEFAULT("%d");
	int64 flags = YYGetInt64(arg, 5);
	GMDEFAULT(ImGuiSliderFlags.None);

	if (ImGui::SliderInt4(label, val, val_min, val_max, fmt, flags)) {
		YYSetArray(&arg[1], val, len);
	}
	Result = arg[1];
	return;
}

//-------------------------------------------------------------------------
// [SECTION] Widgets: InputScalar, InputFloat, InputInt, etc.
//-------------------------------------------------------------------------
// UNSUPPORTED - InputScalar()
// UNSUPPORTED - InputScalarN()
// - InputFloat()
// - InputFloat2()
// - InputFloat3()
// - InputFloat4()
// - InputInt()
// - InputInt2()
// - InputInt3()
// - InputInt4()
// - InputDouble()
//-------------------------------------------------------------------------
GMFUNC(__imgui_input_float) {
	const char* label = YYGetString(arg, 0);
	float val = YYGetReal(arg, 1);
	double step = YYGetReal(arg, 2);
	GMDEFAULT(1);
	double step_fast = YYGetReal(arg, 3);
	GMDEFAULT(1);
	const char* fmt = YYGetString(arg, 4);
	GMDEFAULT("%.3f");
	int64 flags = YYGetInt64(arg, 5);
	GMDEFAULT(ImGuiInputTextFlags.None);

	ImGui::InputFloat(label, &val, step, step_fast, fmt, flags);
	Result.kind = VALUE_REAL;
	Result.val = val;
	return;
}

GMFUNC(__imgui_input_float2) {
	const int len = 2;

	const char* label = YYGetString(arg, 0);
	float* val = YYGetArray<float>(arg, 1, len);
	GMDEFAULT(1);
	const char* fmt = YYGetString(arg, 2);
	GMDEFAULT("%.3f");
	int64 flags = YYGetInt64(arg, 3);
	GMDEFAULT(ImGuiSliderFlags.None);

	if (ImGui::InputFloat2(label, val, fmt, flags)) {
		YYSetArray(&arg[1], val, len);
	}
	Result = arg[1];
	return;
}

GMFUNC(__imgui_input_float3) {
	const int len = 3;

	const char* label = YYGetString(arg, 0);
	float* val = YYGetArray<float>(arg, 1, len);
	GMDEFAULT(1);
	const char* fmt = YYGetString(arg, 2);
	GMDEFAULT("%.3f");
	int64 flags = YYGetInt64(arg, 3);
	GMDEFAULT(ImGuiSliderFlags.None);

	if (ImGui::InputFloat3(label, val, fmt, flags)) {
		YYSetArray(&arg[1], val, len);
	}
	Result = arg[1];
	return;
}

GMFUNC(__imgui_input_float4) {
	const int len = 4;

	const char* label = YYGetString(arg, 0);
	float* val = YYGetArray<float>(arg, 1, len);
	GMDEFAULT(1);
	const char* fmt = YYGetString(arg, 2);
	GMDEFAULT("%.3f");
	int64 flags = YYGetInt64(arg, 3);
	GMDEFAULT(ImGuiSliderFlags.None);

	if (ImGui::InputFloat3(label, val, fmt, flags)) {
		YYSetArray(&arg[1], val, len);
	}
	Result = arg[1];
	return;
}

GMFUNC(__imgui_input_int) {
	const char* label = YYGetString(arg, 0);
	int val = YYGetReal(arg, 1);
	double step = YYGetReal(arg, 2);
	GMDEFAULT(1);
	double step_fast = YYGetReal(arg, 3);
	GMDEFAULT(100);
	int64 flags = YYGetInt64(arg, 4);
	GMDEFAULT(ImGuiInputTextFlags.None);

	ImGui::InputInt(label, &val, step, step_fast, flags);
	Result.kind = VALUE_REAL;
	Result.val = val;
	return;
}

GMFUNC(__imgui_input_int2) {
	const int len = 2;

	const char* label = YYGetString(arg, 0);
	int* val = YYGetArray<int>(arg, 1, len);
	GMDEFAULT(1);
	int64 flags = YYGetInt64(arg, 2);
	GMDEFAULT(ImGuiInputTextFlags.None);

	if (ImGui::InputInt2(label, val, flags)) {
		YYSetArray(&arg[1], val, len);
	}
	Result = arg[1];
	return;
}


GMFUNC(__imgui_input_int3) {
	const int len = 3;

	const char* label = YYGetString(arg, 0);
	int* val = YYGetArray<int>(arg, 1, len);
	GMDEFAULT(1);
	int64 flags = YYGetInt64(arg, 2);
	GMDEFAULT(ImGuiInputTextFlags.None);

	if (ImGui::InputInt3(label, val, flags)) {
		YYSetArray(&arg[1], val, len);
	}
	Result = arg[1];
	return;
}

GMFUNC(__imgui_input_int4) {
	const int len = 4;

	const char* label = YYGetString(arg, 0);
	int* val = YYGetArray<int>(arg, 1, len);
	GMDEFAULT(1);
	int64 flags = YYGetInt64(arg, 2);
	GMDEFAULT(ImGuiInputTextFlags.None);

	if (ImGui::InputInt4(label, val, flags)) {
		YYSetArray(&arg[1], val, len);
	}
	Result = arg[1];
	return;
}


GMFUNC(__imgui_input_double) {
	const char* label = YYGetString(arg, 0);
	double val = YYGetReal(arg, 1);
	double step = YYGetReal(arg, 2);
	GMDEFAULT(0);
	double step_fast = YYGetReal(arg, 3);
	GMDEFAULT(0);
	const char* fmt = YYGetString(arg, 4);
	GMDEFAULT("%.6f");
	int64 flags = YYGetInt64(arg, 5);
	GMDEFAULT(ImGuiInputTextFlags.None);

	ImGui::InputDouble(label, &val, step, step_fast, fmt, flags);
	Result.kind = VALUE_REAL;
	Result.val = val;
	return;
}

//-------------------------------------------------------------------------
// [SECTION] Widgets: InputText, InputTextMultiline, InputTextWithHint
//-------------------------------------------------------------------------
// - InputText()
// - InputTextWithHint()
// - InputTextMultiline()
//-------------------------------------------------------------------------
char INPUT_BUF[SCRATCH_BUFFER_SIZE];
GMFUNC(__imgui_input_text) {
	const char* label = YYGetString(arg, 0);
	const char* val = YYGetString(arg, 1);
	int64 flags = YYGetInt64(arg, 2);
	GMDEFAULT(ImGuiInputTextFlags.None);

	strcpy_s(INPUT_BUF, val);
	ImGui::InputText(label, INPUT_BUF, IM_ARRAYSIZE(INPUT_BUF), (ImGuiInputTextFlags)flags);
	YYCreateString(&s_Copy, INPUT_BUF);
	COPY_RValue(&Result, &s_Copy);
	return;
}

GMFUNC(__imgui_input_text_with_hint) {
	const char* label = YYGetString(arg, 0);
	const char* hint = YYGetString(arg, 1);
	const char* val = YYGetString(arg, 2);
	int64 flags = YYGetInt64(arg, 3);
	GMDEFAULT(ImGuiInputTextFlags.None);

	strcpy_s(INPUT_BUF, val);
	ImGui::InputTextWithHint(label, hint, INPUT_BUF, IM_ARRAYSIZE(INPUT_BUF), (ImGuiInputTextFlags)flags);
	YYCreateString(&s_Copy, INPUT_BUF);
	COPY_RValue(&Result, &s_Copy);
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

	strcpy_s(INPUT_BUF, val);
	ImGui::InputTextMultiline(label, INPUT_BUF, IM_ARRAYSIZE(INPUT_BUF), ImVec2(width, height), (ImGuiInputTextFlags)flags);
	YYCreateString(&s_Copy, INPUT_BUF);
	COPY_RValue(&Result, &s_Copy);
	return;
}


//-------------------------------------------------------------------------
// [SECTION] Widgets: ColorEdit, ColorPicker, ColorButton, etc.
//-------------------------------------------------------------------------
// - ColorEdit3()
// - ColorEdit4()
// - ColorPicker3()
// - ColorPicker4()
// - ColorButton()
// - SetColorEditOptions()
//-------------------------------------------------------------------------
GMFUNC(__imgui_color_edit3) {
	const char* label = YYGetString(arg, 0);
	double color = YYGetReal(arg, 1);
	int64 flags = YYGetInt64(arg, 2);
	GMDEFAULT(ImGuiColorEditFlags.None);

	ImColor col = GMCOLOR_TO(color, 1);

	Result.kind = VALUE_REAL;
	Result.val = color;
	if (ImGui::ColorEdit3(label, (float*)&col.Value, flags)) {
		Result.val = GMCOLOR_FROM(((float*)&col.Value));
	}
	return;
}

GMFUNC(__imgui_color_edit4) {
	const char* label = YYGetString(arg, 0);
	double color = YYGetReal(arg, 1);
	double alpha = YYGetReal(arg, 2);
	int64 flags = YYGetInt64(arg, 3);
	GMDEFAULT(ImGuiColorEditFlags.None);

	ImColor col = GMCOLOR_TO(color, alpha);

	Result.kind = VALUE_REAL;
	Result.val = color;
	if (ImGui::ColorEdit4(label, (float*)&col.Value, flags)) {
		Result.val = GMCOLOR_FROM(((float*)&col.Value));
	}
	return;
}

GMFUNC(__imgui_color_picker3) {
	const char* label = YYGetString(arg, 0);
	double color = YYGetReal(arg, 1);
	int64 flags = YYGetInt64(arg, 2);
	GMDEFAULT(ImGuiColorEditFlags.None);

	ImColor col = GMCOLOR_TO(color, 1);

	Result.kind = VALUE_REAL;
	Result.val = color;
	if (ImGui::ColorPicker3(label, (float*)&col.Value, flags)) {
		Result.val = GMCOLOR_FROM(((float*)&col.Value));
	}
	return;
}

GMFUNC(__imgui_color_picker4) {
	const char* label = YYGetString(arg, 0);
	double color = YYGetReal(arg, 1);
	double alpha = YYGetReal(arg, 2);
	int64 flags = YYGetInt64(arg, 3);
	GMDEFAULT(ImGuiColorEditFlags.None);

	ImColor col = GMCOLOR_TO(color, alpha);

	Result.kind = VALUE_REAL;
	Result.val = color;
	if (ImGui::ColorPicker4(label, (float*)&col.Value, flags)) {
		Result.val = GMCOLOR_FROM(((float*)&col.Value));
	}
	return;
}

GMFUNC(__imgui_color_button) {
	const char* id = YYGetString(arg, 0);
	double color = YYGetReal(arg, 1);
	int64 flags = YYGetInt64(arg, 2);
	GMDEFAULT(ImGuiColorEditFlags.None);
	double width = YYGetReal(arg, 3);
	GMDEFAULT(0);
	double height = YYGetReal(arg, 4);
	GMDEFAULT(0);

	ImColor col = GMCOLOR_TO(color, 1);

	Result.kind = VALUE_BOOL;
	Result.val = ImGui::ColorButton(id, col, flags, ImVec2(width, height));
	return;
}

GMFUNC(__imgui_set_color_edit_options) {
	int64 flags = YYGetInt64(arg, 0);
	ImGui::SetColorEditOptions(flags);

	Result.kind = VALUE_UNDEFINED;
	return;
}

//-------------------------------------------------------------------------
// [SECTION] Widgets: TreeNode, CollapsingHeader, etc.
//-------------------------------------------------------------------------
// - TreeNode()
// UNSUPPORTED - TreeNodeV()
// - TreeNodeEx()
// UNSUPPORTED - TreeNodeExV()
// - TreePush()
// - TreePop()
// - GetTreeNodeToLabelSpacing()
// - SetNextItemOpen()
// - CollapsingHeader()
//-------------------------------------------------------------------------
GMFUNC(__imgui_treenode) {
	const char* label = YYGetString(arg, 0);

	ImGui::TreeNode(label);
	Result.kind = VALUE_UNDEFINED;
	return;
}

GMFUNC(__imgui_treenode_ex) {
	const char* label = YYGetString(arg, 0);
	int64 flags = YYGetInt64(arg, 1);
	GMDEFAULT(ImGuiTreeNodeFlags.None)

	ImGui::TreeNodeEx(label, flags);
	Result.kind = VALUE_UNDEFINED;
	return;
}

GMFUNC(__imgui_tree_push) {
	const char* id = YYGetString(arg, 0);

	ImGui::TreePush(id);
	Result.kind = VALUE_UNDEFINED;
	return;
}

GMFUNC(__imgui_tree_pop) {
	ImGui::TreePop();
	Result.kind = VALUE_UNDEFINED;
	return;
}

GMFUNC(__imgui_get_tree_node_to_label_spacing) {
	Result.kind = VALUE_REAL;
	Result.val = ImGui::GetTreeNodeToLabelSpacing();
	return;
}

GMFUNC(__imgui_set_next_item_open) {
	bool open = YYGetBool(arg, 0);
	int64 cond = YYGetInt64(arg, 1);
	GMDEFAULT(ImGuiCond.None);

	ImGui::SetNextItemOpen(open, cond);
	Result.kind = VALUE_UNDEFINED;
	return;
}

GMFUNC(__imgui_collapsing_header) {
	const char* label = YYGetString(arg, 0);
	bool open = YYGetBool(arg, 1);
	int64 flags = YYGetInt64(arg, 2);
	GMDEFAULT(ImGuiTreeNodeFlags.None);
	int64 ret_mask = YYGetInt64(arg, 3);
	GMDEFAULT(ImGuiReturnFlags.Open);

	bool ret = ImGui::CollapsingHeader(label, &open, (ImGuiTreeNodeFlags)flags);
	Result.kind = VALUE_REAL;
	Result.val = ((open << 1) | (int)ret) & ret_mask;
	return;
}

//-------------------------------------------------------------------------
// [SECTION] Widgets: Selectable
//-------------------------------------------------------------------------
// - Selectable()
//-------------------------------------------------------------------------
GMFUNC(__imgui_selectable) {
	const char* label = YYGetString(arg, 0);
	bool selected = YYGetBool(arg, 1);
	GMDEFAULT(false);
	int64 flags = YYGetInt64(arg, 2);
	GMDEFAULT(ImGuiSelectableFlags.None);
	double width = YYGetReal(arg, 3);
	GMDEFAULT(0);
	double height = YYGetReal(arg, 4);
	GMDEFAULT(0);

	Result.kind = VALUE_BOOL;
	Result.val = ImGui::Selectable(label, selected, flags, ImVec2(width, height));
	return;
}

//-------------------------------------------------------------------------
// [SECTION] Widgets: ListBox
//-------------------------------------------------------------------------
// - BeginListBox()
// - EndListBox()
// - ListBox()
//-------------------------------------------------------------------------
GMFUNC(__imgui_begin_listbox) {
	const char* label = YYGetString(arg, 0);
	double width = YYGetReal(arg, 1);
	GMDEFAULT(0);
	double height = YYGetReal(arg, 2);
	GMDEFAULT(0);

	Result.kind = VALUE_BOOL;
	Result.val = ImGui::BeginListBox(label, ImVec2(width, height));
	return;
}

GMFUNC(__imgui_end_listbox) {
	ImGui::EndListBox();
	Result.kind = VALUE_UNDEFINED;
	return;
}

static std::vector<const char*> s_Items;
static std::vector<std::string> s_Strings;
GMFUNC(__imgui_listbox) {
	const char* label = YYGetString(arg, 0);
	int ind = YYGetReal(arg, 1);
	RValue* items = &arg[2]; // = YYGetArray<String>(arg, 2);
	double height_in_items = YYGetReal(arg, 3);
	GMDEFAULT(-1);

	s_Strings.clear();
	for (int i = 0; GET_RValue(&s_Copy, items, NULL, i); i++) {
		switch (s_Copy.kind) {
			case VALUE_STRING: {
				s_Strings.emplace_back(std::string(s_Copy.GetString()));
				break;
			}

			case VALUE_INT32:
			case VALUE_INT64:
			case VALUE_REAL: {
				s_Strings.emplace_back(std::to_string((int)s_Copy.val));
				break;
			}

			case VALUE_UNDEFINED: {
				s_Strings.push_back("undefined");
				break;
			}

			default: {
				YYError("ImGui.Listbox unsupported type \"%s\" met at items[%d]", KIND_NAME_RValue(&s_Copy), i);
			}
		}
	}

	s_Items.clear();
	for (auto&& str : s_Strings) {
		s_Items.push_back(str.c_str());
	}
	ImGui::ListBox(label, &ind, s_Items.data(), (int)s_Items.size(), height_in_items);
	
	Result.kind = VALUE_REAL;
	Result.val = ind;
	return;
}

#pragma warning( pop )