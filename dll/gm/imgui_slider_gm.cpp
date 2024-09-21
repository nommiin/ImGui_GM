#include "../imgui_gm.h"

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
	const int len = 2;
	const char* label = YYGetString(arg, 0);
	float* v = YYGetArray<float>(arg, 1, len);
	float v_min = YYGetReal(arg, 2);
	GMDEFAULT(0);
	float v_max = YYGetReal(arg, 3);
	GMDEFAULT(0);
	const char* format = YYGetString(arg, 4);
	GMDEFAULT("%.3f");
	ImGuiSliderFlags flags = YYGetInt64(arg, 5);
	GMDEFAULT(ImGuiSliderFlags.None);

	Result.kind = VALUE_BOOL;
	Result.val = false;
	if (ImGui::SliderFloat2(label, v, v_min, v_max, format, flags)) {
		YYSetArray(&arg[1], v, len);
		Result.val = true;
	}
	delete[]v;
}

GMFUNC(__imgui_slider_float3) {
	const int len = 3;
	const char* label = YYGetString(arg, 0);
	float* v = YYGetArray<float>(arg, 1, len);
	float v_min = YYGetReal(arg, 2);
	GMDEFAULT(0);
	float v_max = YYGetReal(arg, 3);
	GMDEFAULT(0);
	const char* format = YYGetString(arg, 4);
	GMDEFAULT("%.3f");
	ImGuiSliderFlags flags = YYGetInt64(arg, 5);
	GMDEFAULT(ImGuiSliderFlags.None);

	Result.kind = VALUE_BOOL;
	Result.val = false;
	if (ImGui::SliderFloat3(label, v, v_min, v_max, format, flags)) {
		YYSetArray(&arg[1], v, len);
		Result.val = true;
	}
	delete[]v;
}

GMFUNC(__imgui_slider_float4) {
	const int len = 4;
	const char* label = YYGetString(arg, 0);
	float* v = YYGetArray<float>(arg, 1, len);
	float v_min = YYGetReal(arg, 2);
	GMDEFAULT(0);
	float v_max = YYGetReal(arg, 3);
	GMDEFAULT(0);
	const char* format = YYGetString(arg, 4);
	GMDEFAULT("%.3f");
	ImGuiSliderFlags flags = YYGetInt64(arg, 5);
	GMDEFAULT(ImGuiSliderFlags.None);

	Result.kind = VALUE_BOOL;
	Result.val = false;
	if (ImGui::SliderFloat4(label, v, v_min, v_max, format, flags)) {
		YYSetArray(&arg[1], v, len);
		Result.val = true;
	}
	delete[]v;
}

GMFUNC(__imgui_slider_floatn) {
	const char* label = YYGetString(arg, 0);
	float* v = YYGetArray<float>(arg, 1, YYGetReal(arg, 7));
	float v_speed = YYGetReal(arg, 2);
	GMDEFAULT(1);
	float v_min = YYGetReal(arg, 3);
	GMDEFAULT(0);
	float v_max = YYGetReal(arg, 4);
	GMDEFAULT(0);
	const char* format = YYGetString(arg, 5);
	GMDEFAULT("%.3f");
	ImGuiSliderFlags flags = YYGetInt64(arg, 6);
	GMDEFAULT(ImGuiSliderFlags.None);
	double count = YYGetReal(arg, 7);
	GMHIDDEN();
	GMPASSTHROUGH(array_length(#arg1));
	GMOVERRIDE(SliderFloatN);

	Result.kind = VALUE_BOOL;
	Result.val = false;
	if (ImGui::SliderScalarN(label, ImGuiDataType_Float, v, count, &v_min, &v_max, format, flags)) {
		YYSetArray(&arg[1], v, count);
		Result.val = true;
	}
	delete[]v;
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
	const int len = 2;
	const char* label = YYGetString(arg, 0);
	int* v = YYGetArray<int>(arg, 1, len);
	int v_min = YYGetReal(arg, 2);
	GMDEFAULT(0);
	int v_max = YYGetReal(arg, 3);
	GMDEFAULT(0);
	const char* format = YYGetString(arg, 4);
	GMDEFAULT("%d");
	ImGuiSliderFlags flags = YYGetInt64(arg, 5);
	GMDEFAULT(ImGuiSliderFlags.None);

	Result.kind = VALUE_BOOL;
	Result.val = false;
	if (ImGui::SliderInt2(label, v, v_min, v_max, format, flags)) {
		YYSetArray(&arg[1], v, len);
		Result.val = true;
	}
	delete[]v;
}

GMFUNC(__imgui_slider_int3) {
	const int len = 3;
	const char* label = YYGetString(arg, 0);
	int* v = YYGetArray<int>(arg, 1, len);
	int v_min = YYGetReal(arg, 2);
	GMDEFAULT(0);
	int v_max = YYGetReal(arg, 3);
	GMDEFAULT(0);
	const char* format = YYGetString(arg, 4);
	GMDEFAULT("%d");
	ImGuiSliderFlags flags = YYGetInt64(arg, 5);
	GMDEFAULT(ImGuiSliderFlags.None);

	Result.kind = VALUE_BOOL;
	Result.val = false;
	if (ImGui::SliderInt3(label, v, v_min, v_max, format, flags)) {
		YYSetArray(&arg[1], v, len);
		Result.val = true;
	}
	delete[]v;
}

GMFUNC(__imgui_slider_int4) {
	const int len = 4;
	const char* label = YYGetString(arg, 0);
	int* v = YYGetArray<int>(arg, 1, len);
	int v_min = YYGetReal(arg, 2);
	GMDEFAULT(0);
	int v_max = YYGetReal(arg, 3);
	GMDEFAULT(0);
	const char* format = YYGetString(arg, 4);
	GMDEFAULT("%d");
	ImGuiSliderFlags flags = YYGetInt64(arg, 5);
	GMDEFAULT(ImGuiSliderFlags.None);

	Result.kind = VALUE_BOOL;
	Result.val = false;
	if (ImGui::SliderInt4(label, v, v_min, v_max, format, flags)) {
		YYSetArray(&arg[1], v, len);
		Result.val = true;
	}
	delete[]v;
}

GMFUNC(__imgui_slider_intn) {
	const char* label = YYGetString(arg, 0);
	int* v = YYGetArray<int>(arg, 1, YYGetReal(arg, 6));
	int v_min = YYGetReal(arg, 2);
	GMDEFAULT(0);
	int v_max = YYGetReal(arg, 3);
	GMDEFAULT(0);
	const char* format = YYGetString(arg, 4);
	GMDEFAULT("%d");
	ImGuiSliderFlags flags = YYGetInt64(arg, 5);
	GMDEFAULT(ImGuiSliderFlags.None);
	double count = YYGetReal(arg, 6);
	GMHIDDEN();
	GMPASSTHROUGH(array_length(#arg1));
	GMOVERRIDE(SliderIntN);

	Result.kind = VALUE_BOOL;
	Result.val = false;
	if (ImGui::SliderScalarN(label, ImGuiDataType_S32, v, count, &v_min, &v_max, format, flags)) {
		YYSetArray(&arg[1], v, count);
		Result.val = true;
	}
	delete[]v;
}

GMFUNC(__imgui_vslider_float) {
	const char* label = YYGetString(arg, 0);
	double width = YYGetReal(arg, 1);
	double height = YYGetReal(arg, 2);
	float v = YYGetReal(arg, 3);
	float v_min = YYGetReal(arg, 4);
	GMDEFAULT(0);
	float v_max = YYGetReal(arg, 5);
	GMDEFAULT(0);
	const char* format = YYGetString(arg, 6);
	GMDEFAULT("%.3f");
	ImGuiSliderFlags flags = YYGetInt64(arg, 7);
	GMDEFAULT(ImGuiSliderFlags.None);

	ImGui::VSliderFloat(label, ImVec2(width, height), &v, v_min, v_max, format, flags);
	Result.kind = VALUE_REAL;
	Result.val = v;
}

GMFUNC(__imgui_vslider_int) {
	const char* label = YYGetString(arg, 0);
	double width = YYGetReal(arg, 1);
	double height = YYGetReal(arg, 2);
	int v = YYGetReal(arg, 3);
	int v_min = YYGetReal(arg, 4);
	GMDEFAULT(0);
	int v_max = YYGetReal(arg, 5);
	GMDEFAULT(0);
	const char* format = YYGetString(arg, 6);
	GMDEFAULT("%d");
	ImGuiSliderFlags flags = YYGetInt64(arg, 7);
	GMDEFAULT(ImGuiSliderFlags.None);

	ImGui::VSliderInt(label, ImVec2(width, height), &v, v_min, v_max, format, flags);
	Result.kind = VALUE_REAL;
	Result.val = v;
}

GMFUNC(__imgui_slider_angle) {
	const char* label = YYGetString(arg, 0);
	float v_rad = YYGetReal(arg, 1);
	float v_degrees_min = YYGetReal(arg, 2);
	GMDEFAULT(0);
	float v_degrees_max = YYGetReal(arg, 3);
	GMDEFAULT(0);
	const char* format = YYGetString(arg, 4);
	GMDEFAULT("%d");
	ImGuiSliderFlags flags = YYGetInt64(arg, 5);
	GMDEFAULT(ImGuiSliderFlags.None);

	ImGui::SliderAngle(label, &v_rad, v_degrees_min, v_degrees_max, format, flags);
	Result.kind = VALUE_REAL;
	Result.val = v_rad;
}