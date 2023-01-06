#include "imgui_gm.h"

GMFUNC(__imgui_drag_float) {
	const char* label = YYGetString(arg, 0);
	float v = YYGetReal(arg, 1);
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

	ImGui::DragFloat(label, &v, v_speed, v_min, v_max, format, flags);
	Result.kind = VALUE_REAL;
	Result.val = v;
}

GMFUNC(__imgui_drag_float2) {
	const char* label = YYGetString(arg, 0);
	float* v = YYGetArray<float>(arg, 1, 2);
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

	Result.kind = VALUE_BOOL;
	Result.val = ImGui::DragFloat2(label, v, v_speed, v_min, v_max, format, flags);
}

GMFUNC(__imgui_drag_float3) {
	const char* label = YYGetString(arg, 0);
	float* v = YYGetArray<float>(arg, 1, 3);
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

	Result.kind = VALUE_BOOL;
	Result.val = ImGui::DragFloat3(label, v, v_speed, v_min, v_max, format, flags);
}

GMFUNC(__imgui_drag_float4) {
	const char* label = YYGetString(arg, 0);
	float* v = YYGetArray<float>(arg, 1, 3);
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

	Result.kind = VALUE_BOOL;
	Result.val = ImGui::DragFloat4(label, v, v_speed, v_min, v_max, format, flags);
}

GMFUNC(__imgui_drag_floatn) {
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
	GMOVERRIDE(DragFloatN);

	Result.kind = VALUE_BOOL;
	Result.val = ImGui::DragScalarN(label, ImGuiDataType_Float, v, count, v_speed, &v_min, &v_max, format, flags);
}

GMFUNC(__imgui_drag_float_range2) {
	const char* label = YYGetString(arg, 0);
	float v_current_min = YYGetReal(arg, 1);
	float v_current_max = YYGetReal(arg, 2);
	float v_speed = YYGetReal(arg, 3);
	GMDEFAULT(1);
	float v_min = YYGetReal(arg, 4);
	GMDEFAULT(0);
	float v_max = YYGetReal(arg, 5);
	GMDEFAULT(0);
	const char* format_min = YYGetString(arg, 6);
	GMDEFAULT("%.3f");
	const char* format_max = YYGetString(arg, 6);
	GMDEFAULT("%.3f");
	ImGuiSliderFlags flags = YYGetInt64(arg, 7);
	GMDEFAULT(ImGuiSliderFlags.None);


	Result.kind = VALUE_BOOL;
	Result.val = ImGui::DragFloatRange2(label, &v_current_min, &v_current_max, v_speed, v_min, v_max, format_min, format_max, flags);
}

GMFUNC(__imgui_drag_int) {
	const char* label = YYGetString(arg, 0);
	int v = YYGetReal(arg, 1);
	int v_speed = YYGetReal(arg, 2);
	GMDEFAULT(1);
	int v_min = YYGetReal(arg, 3);
	GMDEFAULT(0);
	int v_max = YYGetReal(arg, 4);
	GMDEFAULT(0);
	const char* format = YYGetString(arg, 5);
	GMDEFAULT("%d");
	ImGuiSliderFlags flags = YYGetInt64(arg, 6);
	GMDEFAULT(ImGuiSliderFlags.None);

	ImGui::DragInt(label, &v, v_speed, v_min, v_max, format, flags);
	Result.kind = VALUE_REAL;
	Result.val = v;
}

GMFUNC(__imgui_drag_int2) {
	const char* label = YYGetString(arg, 0);
	int* v = YYGetArray<int>(arg, 1, 2);
	int v_speed = YYGetReal(arg, 2);
	GMDEFAULT(1);
	int v_min = YYGetReal(arg, 3);
	GMDEFAULT(0);
	int v_max = YYGetReal(arg, 4);
	GMDEFAULT(0);
	const char* format = YYGetString(arg, 5);
	GMDEFAULT("%d");
	ImGuiSliderFlags flags = YYGetInt64(arg, 6);
	GMDEFAULT(ImGuiSliderFlags.None);

	Result.kind = VALUE_BOOL;
	Result.val = ImGui::DragInt2(label, v, v_speed, v_min, v_max, format, flags);
}

GMFUNC(__imgui_drag_int3) {
	const char* label = YYGetString(arg, 0);
	int* v = YYGetArray<int>(arg, 1, 3);
	int v_speed = YYGetReal(arg, 2);
	GMDEFAULT(1);
	int v_min = YYGetReal(arg, 3);
	GMDEFAULT(0);
	int v_max = YYGetReal(arg, 4);
	GMDEFAULT(0);
	const char* format = YYGetString(arg, 5);
	GMDEFAULT("%d");
	ImGuiSliderFlags flags = YYGetInt64(arg, 6);
	GMDEFAULT(ImGuiSliderFlags.None);

	Result.kind = VALUE_BOOL;
	Result.val = ImGui::DragInt3(label, v, v_speed, v_min, v_max, format, flags);
}

GMFUNC(__imgui_drag_int4) {
	const char* label = YYGetString(arg, 0);
	int* v = YYGetArray<int>(arg, 1, 3);
	int v_speed = YYGetReal(arg, 2);
	GMDEFAULT(1);
	int v_min = YYGetReal(arg, 3);
	GMDEFAULT(0);
	int v_max = YYGetReal(arg, 4);
	GMDEFAULT(0);
	const char* format = YYGetString(arg, 5);
	GMDEFAULT("%d");
	ImGuiSliderFlags flags = YYGetInt64(arg, 6);
	GMDEFAULT(ImGuiSliderFlags.None);

	Result.kind = VALUE_BOOL;
	Result.val = ImGui::DragInt4(label, v, v_speed, v_min, v_max, format, flags);
}

GMFUNC(__imgui_drag_intn) {
	const char* label = YYGetString(arg, 0);
	int* v = YYGetArray<int>(arg, 1, 3);
	double count = YYGetReal(arg, 2);
	GMDEFAULT(array_length(v));
	int v_speed = YYGetReal(arg, 3);
	GMDEFAULT(1);
	int v_min = YYGetReal(arg, 4);
	GMDEFAULT(0);
	int v_max = YYGetReal(arg, 5);
	GMDEFAULT(0);
	const char* format = YYGetString(arg, 6);
	GMDEFAULT("%d");
	ImGuiSliderFlags flags = YYGetInt64(arg, 7);
	GMDEFAULT(ImGuiSliderFlags.None);
	GMOVERRIDE(DragIntN);

	Result.kind = VALUE_BOOL;
	Result.val = ImGui::DragScalarN(label, ImGuiDataType_S32, v, count, v_speed, &v_min, &v_max, format, flags);
}

GMFUNC(__imgui_drag_int_range2) {
	const char* label = YYGetString(arg, 0);
	int v_current_min = YYGetReal(arg, 1);
	int v_current_max = YYGetReal(arg, 2);
	int v_speed = YYGetReal(arg, 3);
	GMDEFAULT(1);
	int v_min = YYGetReal(arg, 4);
	GMDEFAULT(0);
	int v_max = YYGetReal(arg, 5);
	GMDEFAULT(0);
	const char* format_min = YYGetString(arg, 6);
	GMDEFAULT("%d");
	const char* format_max = YYGetString(arg, 6);
	GMDEFAULT("%d");
	ImGuiSliderFlags flags = YYGetInt64(arg, 7);
	GMDEFAULT(ImGuiSliderFlags.None);

	Result.kind = VALUE_BOOL;
	Result.val = ImGui::DragIntRange2(label, &v_current_min, &v_current_max, v_speed, v_min, v_max, format_min, format_max, flags);
}