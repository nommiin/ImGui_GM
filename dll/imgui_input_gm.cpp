#include "imgui_gm.h"

GMFUNC(__imgui_input_float) {
	const char* label = YYGetString(arg, 0);
	float v = YYGetReal(arg, 1);
	float step = YYGetReal(arg, 2);
	GMDEFAULT(0);
	float step_fast = YYGetReal(arg, 3);
	GMDEFAULT(0);
	const char* format = YYGetString(arg, 4);
	GMDEFAULT("%.3f");
	ImGuiInputTextFlags flags = YYGetInt64(arg, 5);
	GMDEFAULT(ImGuiInputTextFlags.None);

	ImGui::InputFloat(label, &v, step, step_fast, format, flags);
	Result.kind = VALUE_REAL;
	Result.val = v;
}

GMFUNC(__imgui_input_float2) {
	const char* label = YYGetString(arg, 0);
	float* v = YYGetArray<float>(arg, 1, 2);
	float step = YYGetReal(arg, 2);
	GMDEFAULT(0);
	float step_fast = YYGetReal(arg, 3);
	GMDEFAULT(0);
	const char* format = YYGetString(arg, 4);
	GMDEFAULT("%.3f");
	ImGuiInputTextFlags flags = YYGetInt64(arg, 5);
	GMDEFAULT(ImGuiInputTextFlags.None);

	Result.kind = VALUE_BOOL;
	Result.val = ImGui::InputFloat2(label, v, format, flags);
}

GMFUNC(__imgui_input_float3) {
	const char* label = YYGetString(arg, 0);
	float* v = YYGetArray<float>(arg, 1, 2);
	float step = YYGetReal(arg, 2);
	GMDEFAULT(0);
	float step_fast = YYGetReal(arg, 3);
	GMDEFAULT(0);
	const char* format = YYGetString(arg, 4);
	GMDEFAULT("%.3f");
	ImGuiInputTextFlags flags = YYGetInt64(arg, 5);
	GMDEFAULT(ImGuiInputTextFlags.None);

	Result.kind = VALUE_BOOL;
	Result.val = ImGui::InputFloat2(label, v, format, flags);
}

GMFUNC(__imgui_input_float4) {
	const char* label = YYGetString(arg, 0);
	float* v = YYGetArray<float>(arg, 1, 2);
	float step = YYGetReal(arg, 2);
	GMDEFAULT(0);
	float step_fast = YYGetReal(arg, 3);
	GMDEFAULT(0);
	const char* format = YYGetString(arg, 4);
	GMDEFAULT("%.3f");
	ImGuiInputTextFlags flags = YYGetInt64(arg, 5);
	GMDEFAULT(ImGuiInputTextFlags.None);

	Result.kind = VALUE_BOOL;
	Result.val = ImGui::InputFloat2(label, v, format, flags);
}

GMFUNC(__imgui_input_int) {
	const char* label = YYGetString(arg, 0);
	int v = YYGetReal(arg, 1);
	int step = YYGetReal(arg, 2);
	GMDEFAULT(0);
	int step_fast = YYGetReal(arg, 3);
	GMDEFAULT(0);
	ImGuiInputTextFlags flags = YYGetInt64(arg, 4);
	GMDEFAULT(ImGuiInputTextFlags.None);

	ImGui::InputInt(label, &v, step, step_fast, flags);
	Result.kind = VALUE_REAL;
	Result.val = v;
}

GMFUNC(__imgui_input_int2) {
	const char* label = YYGetString(arg, 0);
	int* v = YYGetArray<int>(arg, 1, 2);
	int step = YYGetReal(arg, 2);
	GMDEFAULT(0);
	int step_fast = YYGetReal(arg, 3);
	GMDEFAULT(0);
	ImGuiInputTextFlags flags = YYGetInt64(arg, 4);
	GMDEFAULT(ImGuiInputTextFlags.None);

	Result.kind = VALUE_BOOL;
	Result.val = ImGui::InputInt2(label, v, flags);
}

GMFUNC(__imgui_input_int3) {
	const char* label = YYGetString(arg, 0);
	int* v = YYGetArray<int>(arg, 1, 2);
	int step = YYGetReal(arg, 2);
	GMDEFAULT(0);
	int step_fast = YYGetReal(arg, 3);
	GMDEFAULT(0);
	ImGuiInputTextFlags flags = YYGetInt64(arg, 4);
	GMDEFAULT(ImGuiInputTextFlags.None);

	Result.kind = VALUE_BOOL;
	Result.val = ImGui::InputInt2(label, v, flags);
}

GMFUNC(__imgui_input_int4) {
	const char* label = YYGetString(arg, 0);
	int* v = YYGetArray<int>(arg, 1, 2);
	int step = YYGetReal(arg, 2);
	GMDEFAULT(0);
	int step_fast = YYGetReal(arg, 3);
	GMDEFAULT(0);
	ImGuiInputTextFlags flags = YYGetInt64(arg, 4);
	GMDEFAULT(ImGuiInputTextFlags.None);

	Result.kind = VALUE_BOOL;
	Result.val = ImGui::InputInt2(label, v, flags);
}