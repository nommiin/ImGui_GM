#include "imgui_gm.h"

GMFUNC(__imgui_slider_float) {
	const char* label = YYGetString(arg, 0);
	float v = YYGetReal(arg, 1);
	float v_min = YYGetReal(arg, 2);
	GMDEFAULT(0);
	float v_max = YYGetReal(arg, 3);
	GMDEFAULT(0);
	const char* format = YYGetString(arg, 4);
	GMDEFAULT("%.3f");
	ImGuiSliderFlags flags = YYGetInt64(arg, 5);
	GMDEFAULT(ImGuiSliderFlags.None);

	ImGui::SliderFloat(label, &v, v_min, v_max, format, flags);
	Result.kind = VALUE_REAL;
	Result.val = v;
}

GMFUNC(__imgui_slider_float2) {
	const char* label = YYGetString(arg, 0);
	float* v = YYGetArray<float>(arg, 1, 2);
	float v_min = YYGetReal(arg, 2);
	GMDEFAULT(0);
	float v_max = YYGetReal(arg, 3);
	GMDEFAULT(0);
	const char* format = YYGetString(arg, 4);
	GMDEFAULT("%.3f");
	ImGuiSliderFlags flags = YYGetInt64(arg, 5);
	GMDEFAULT(ImGuiSliderFlags.None);

	Result.kind = VALUE_BOOL;
	Result.val = ImGui::SliderFloat2(label, v, v_min, v_max, format, flags);
}

GMFUNC(__imgui_slider_float3) {
	const char* label = YYGetString(arg, 0);
	float* v = YYGetArray<float>(arg, 1, 3);
	float v_min = YYGetReal(arg, 2);
	GMDEFAULT(0);
	float v_max = YYGetReal(arg, 3);
	GMDEFAULT(0);
	const char* format = YYGetString(arg, 4);
	GMDEFAULT("%.3f");
	ImGuiSliderFlags flags = YYGetInt64(arg, 5);
	GMDEFAULT(ImGuiSliderFlags.None);

	Result.kind = VALUE_BOOL;
	Result.val = ImGui::SliderFloat3(label, v, v_min, v_max, format, flags);
}

GMFUNC(__imgui_slider_float4) {
	const char* label = YYGetString(arg, 0);
	float* v = YYGetArray<float>(arg, 1, 1);
	float v_min = YYGetReal(arg, 2);
	GMDEFAULT(0);
	float v_max = YYGetReal(arg, 3);
	GMDEFAULT(0);
	const char* format = YYGetString(arg, 4);
	GMDEFAULT("%.3f");
	ImGuiSliderFlags flags = YYGetInt64(arg, 5);
	GMDEFAULT(ImGuiSliderFlags.None);

	Result.kind = VALUE_BOOL;
	Result.val = ImGui::SliderFloat4(label, v, v_min, v_max, format, flags);
}

GMFUNC(__imgui_slider_floatn) {
	const char* label = YYGetString(arg, 0);
	float* v = YYGetArray<float>(arg, 1, 3);
	double count = YYGetReal(arg, 2);
	GMDEFAULT(array_length(v));
	float v_speed = YYGetReal(arg, 3);
	GMDEFAULT(1);
	float v_min = YYGetReal(arg, 4);
	GMDEFAULT(0);
	float v_max = YYGetReal(arg, 5);
	GMDEFAULT(0);
	const char* format = YYGetString(arg, 6);
	GMDEFAULT("%.3f");
	ImGuiSliderFlags flags = YYGetInt64(arg, 7);
	GMDEFAULT(ImGuiSliderFlags.None);
	GMOVERRIDE(SliderFloatN);

	Result.kind = VALUE_BOOL;
	Result.val = ImGui::SliderScalarN(label, ImGuiDataType_Float, v, count, &v_min, &v_max, format, flags);
}

GMFUNC(__imgui_slider_int) {
	const char* label = YYGetString(arg, 0);
	int v = YYGetReal(arg, 1);
	int v_min = YYGetReal(arg, 2);
	GMDEFAULT(0);
	int v_max = YYGetReal(arg, 3);
	GMDEFAULT(0);
	const char* format = YYGetString(arg, 4);
	GMDEFAULT("%d");
	ImGuiSliderFlags flags = YYGetInt64(arg, 5);
	GMDEFAULT(ImGuiSliderFlags.None);

	ImGui::SliderInt(label, &v, v_min, v_max, format, flags);
	Result.kind = VALUE_REAL;
	Result.val = v;
}

GMFUNC(__imgui_slider_int2) {
	const char* label = YYGetString(arg, 0);
	int* v = YYGetArray<int>(arg, 1, 2);
	int v_min = YYGetReal(arg, 2);
	GMDEFAULT(0);
	int v_max = YYGetReal(arg, 3);
	GMDEFAULT(0);
	const char* format = YYGetString(arg, 4);
	GMDEFAULT("%d");
	ImGuiSliderFlags flags = YYGetInt64(arg, 5);
	GMDEFAULT(ImGuiSliderFlags.None);

	Result.kind = VALUE_BOOL;
	Result.val = ImGui::SliderInt2(label, v, v_min, v_max, format, flags);
}

GMFUNC(__imgui_slider_int3) {
	const char* label = YYGetString(arg, 0);
	int* v = YYGetArray<int>(arg, 1, 3);
	int v_min = YYGetReal(arg, 2);
	GMDEFAULT(0);
	int v_max = YYGetReal(arg, 3);
	GMDEFAULT(0);
	const char* format = YYGetString(arg, 4);
	GMDEFAULT("%d");
	ImGuiSliderFlags flags = YYGetInt64(arg, 5);
	GMDEFAULT(ImGuiSliderFlags.None);

	Result.kind = VALUE_BOOL;
	Result.val = ImGui::SliderInt3(label, v, v_min, v_max, format, flags);
}

GMFUNC(__imgui_slider_int4) {
	const char* label = YYGetString(arg, 0);
	int* v = YYGetArray<int>(arg, 1, 4);
	int v_min = YYGetReal(arg, 2);
	GMDEFAULT(0);
	int v_max = YYGetReal(arg, 3);
	GMDEFAULT(0);
	const char* format = YYGetString(arg, 4);
	GMDEFAULT("%d");
	ImGuiSliderFlags flags = YYGetInt64(arg, 5);
	GMDEFAULT(ImGuiSliderFlags.None);

	Result.kind = VALUE_BOOL;
	Result.val = ImGui::SliderInt4(label, v, v_min, v_max, format, flags);
}

GMFUNC(__imgui_slider_intn) {
	const char* label = YYGetString(arg, 0);
	int* v = YYGetArray<int>(arg, 1, 3);
	double count = YYGetReal(arg, 2);
	GMDEFAULT(array_length(v));
	int v_min = YYGetReal(arg, 3);
	GMDEFAULT(0);
	int v_max = YYGetReal(arg, 4);
	GMDEFAULT(0);
	const char* format = YYGetString(arg, 5);
	GMDEFAULT("%d");
	ImGuiSliderFlags flags = YYGetInt64(arg, 6);
	GMDEFAULT(ImGuiSliderFlags.None);
	GMOVERRIDE(SliderIntN);

	Result.kind = VALUE_BOOL;
	Result.val = ImGui::SliderScalarN(label, ImGuiDataType_S32, v, count, &v_min, &v_max, format, flags);
}