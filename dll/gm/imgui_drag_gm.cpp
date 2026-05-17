#include "../imgui_gm.h"

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
	const int len = 2;
	const char* label = YYGetString(arg, 0);
	float* v = YYGetArray<float>(arg, 1, len);
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
	Result.val = false;
	if (ImGui::DragFloat2(label, v, v_speed, v_min, v_max, format, flags)) {
		YYSetArray(&arg[1], v, len);
		Result.val = true;
	}
	delete[]v;
}

GMFUNC(__imgui_drag_float3) {
	const int len = 3;
	const char* label = YYGetString(arg, 0);
	float* v = YYGetArray<float>(arg, 1, len);
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
	Result.val = false;
	if (ImGui::DragFloat3(label, v, v_speed, v_min, v_max, format, flags)) {
		YYSetArray(&arg[1], v, len);
		Result.val = true;
	}
	delete[]v;
}

GMFUNC(__imgui_drag_float4) {
	const int len = 4;
	const char* label = YYGetString(arg, 0);
	float* v = YYGetArray<float>(arg, 1, len);
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
	Result.val = false;
	if (ImGui::DragFloat4(label, v, v_speed, v_min, v_max, format, flags)) {
		YYSetArray(&arg[1], v, len);
		Result.val = true;
	}
	delete[]v;
}

GMFUNC(__imgui_drag_floatn) {
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
	GMPASSTHROUGH(array_length(#arg1))
	GMOVERRIDE(DragFloatN);

	Result.kind = VALUE_BOOL;
	Result.val = false;
	if (ImGui::DragScalarN(label, ImGuiDataType_Float, v, count, v_speed, &v_min, &v_max, format, flags)) {
		YYSetArray(&arg[1], v, count);
		Result.val = true;
	}
	delete[]v;
}

GMFUNC(__imgui_drag_float_range2) {
	const char* label = YYGetString(arg, 0);
	float* v = YYGetArray<float>(arg, 1, 2);
	float v_speed = YYGetReal(arg, 2);
	GMDEFAULT(1);
	float v_min = YYGetReal(arg, 3);
	GMDEFAULT(0);
	float v_max = YYGetReal(arg, 4);
	GMDEFAULT(0);
	const char* format_min = YYGetString(arg, 5);
	GMDEFAULT("%.3f");
	const char* format_max = YYGetString(arg, 6);
	GMDEFAULT("%.3f");
	ImGuiSliderFlags flags = YYGetInt64(arg, 7);
	GMDEFAULT(ImGuiSliderFlags.None);

	Result.kind = VALUE_BOOL;
	Result.val = false;
	if (ImGui::DragFloatRange2(label, &v[0], &v[1], v_speed, v_min, v_max, format_min, format_max, flags)) {
		YYSetArray(&arg[1], v, 2);
		Result.val = true;
	}
	delete[]v;
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
	const int len = 2;
	const char* label = YYGetString(arg, 0);
	int* v = YYGetArray<int>(arg, 1, len);
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
	Result.val = false;
	if (ImGui::DragInt2(label, v, v_speed, v_min, v_max, format, flags)) {
		YYSetArray(&arg[1], v, len);
		Result.val = true;
	}
	delete[]v;
}

GMFUNC(__imgui_drag_int3) {
	const int len = 3;
	const char* label = YYGetString(arg, 0);
	int* v = YYGetArray<int>(arg, 1, len);
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
	Result.val = false;
	if (ImGui::DragInt3(label, v, v_speed, v_min, v_max, format, flags)) {
		YYSetArray(&arg[1], v, len);
		Result.val = true;
	}
	delete[]v;
}

GMFUNC(__imgui_drag_int4) {
	const int len = 4;
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
	Result.val = false;
	if (ImGui::DragInt4(label, v, v_speed, v_min, v_max, format, flags)) {
		YYSetArray(&arg[1], v, len);
		Result.val = true;
	}
	delete[]v;
}

GMFUNC(__imgui_drag_intn) {
	const char* label = YYGetString(arg, 0);
	int* v = YYGetArray<int>(arg, 1, YYGetReal(arg, 7));
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
	double count = YYGetReal(arg, 7);
	GMHIDDEN();
	GMPASSTHROUGH(array_length(#arg1))
	GMOVERRIDE(DragIntN);

	Result.kind = VALUE_BOOL;
	Result.val = false;
	if (ImGui::DragScalarN(label, ImGuiDataType_S32, v, count, v_speed, &v_min, &v_max, format, flags)) {
		YYSetArray(&arg[1], v, count);
		Result.val = true;
	}
	delete[]v;
}

GMFUNC(__imgui_drag_int_range2) {
	const char* label = YYGetString(arg, 0);
	int* v = YYGetArray<int>(arg, 1, 2);
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
	Result.val = false;
	if (ImGui::DragIntRange2(label, &v[0], &v[1], v_speed, v_min, v_max, format_min, format_max, flags)) {
		YYSetArray(&arg[1], v, 2);
		Result.val = true;
	}
	delete[]v;
}