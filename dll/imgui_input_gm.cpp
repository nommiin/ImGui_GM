#include "imgui_gm.h"

GMFUNC(__imgui_input_text) {
	const char* label = YYGetString(arg, 0);
	const char* val = YYGetString(arg, 1);
	GMRETURN();
	ImGuiInputTextFlags flags = YYGetReal(arg, 2);
	GMDEFAULT(ImGuiInputTextFlags.None);

	strcpy_s(g_InputBuf, val);
	ImGui::InputText(label, g_InputBuf, IM_ARRAYSIZE(g_InputBuf), flags);
	YYCreateString(&g_Copy, g_InputBuf);
	COPY_RValue(&Result, &g_Copy);
}

GMFUNC(__imgui_input_textmultiline) {
	const char* label = YYGetString(arg, 0);
	const char* val = YYGetString(arg, 1);
	GMRETURN();
	double width = YYGetReal(arg, 2);
	GMDEFAULT(0);
	double height = YYGetReal(arg, 3);
	GMDEFAULT(0);
	ImGuiInputTextFlags flags = YYGetReal(arg, 4);
	GMDEFAULT(ImGuiInputTextFlags.None);

	strcpy_s(g_InputBuf, val);
	ImGui::InputTextMultiline(label, g_InputBuf, IM_ARRAYSIZE(g_InputBuf), ImVec2(width, height), flags);
	YYCreateString(&g_Copy, g_InputBuf);
	COPY_RValue(&Result, &g_Copy);
}

GMFUNC(__imgui_input_textwithhint) {
	const char* label = YYGetString(arg, 0);
	const char* hint = YYGetString(arg, 1);
	const char* val = YYGetString(arg, 2);
	GMRETURN();
	ImGuiInputTextFlags flags = YYGetReal(arg, 3);
	GMDEFAULT(ImGuiInputTextFlags.None);

	strcpy_s(g_InputBuf, val);
	ImGui::InputTextWithHint(label, hint, g_InputBuf, IM_ARRAYSIZE(g_InputBuf), flags);
	YYCreateString(&g_Copy, g_InputBuf);
	COPY_RValue(&Result, &g_Copy);
}

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
	const int len = 2;

	const char* label = YYGetString(arg, 0);
	float* v = YYGetArray<float>(arg, 1, len);
	float step = YYGetReal(arg, 2);
	GMDEFAULT(0);
	float step_fast = YYGetReal(arg, 3);
	GMDEFAULT(0);
	const char* format = YYGetString(arg, 4);
	GMDEFAULT("%.3f");
	ImGuiInputTextFlags flags = YYGetInt64(arg, 5);
	GMDEFAULT(ImGuiInputTextFlags.None);

	Result.kind = VALUE_BOOL;
	Result.val = false;
	if (ImGui::InputFloat2(label, v, format, flags)) {
		YYSetArray(&arg[1], v, len);
		Result.val = true;
	}
}

GMFUNC(__imgui_input_float3) {
	const int len = 3;

	const char* label = YYGetString(arg, 0);
	float* v = YYGetArray<float>(arg, 1, len);
	float step = YYGetReal(arg, 2);
	GMDEFAULT(0);
	float step_fast = YYGetReal(arg, 3);
	GMDEFAULT(0);
	const char* format = YYGetString(arg, 4);
	GMDEFAULT("%.3f");
	ImGuiInputTextFlags flags = YYGetInt64(arg, 5);
	GMDEFAULT(ImGuiInputTextFlags.None);

	Result.kind = VALUE_BOOL;
	Result.val = false;
	if (ImGui::InputFloat3(label, v, format, flags)) {
		YYSetArray(&arg[1], v, len);
		Result.val = true;
	}
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

GMFUNC(__imgui_input_floatn) {
	const char* label = YYGetString(arg, 0);
	float* v = YYGetArray<float>(arg, 1, 2);
	double count = YYGetReal(arg, 2);
	GMDEFAULT(array_length(v));
	float step = YYGetReal(arg, 3);
	GMDEFAULT(0);
	float step_fast = YYGetReal(arg, 4);
	GMDEFAULT(0);
	const char* format = YYGetString(arg, 5);
	GMDEFAULT("%.3f");
	ImGuiInputTextFlags flags = YYGetInt64(arg, 6);
	GMDEFAULT(ImGuiInputTextFlags.None);

	Result.kind = VALUE_BOOL;
	Result.val = ImGui::InputScalarN(label, ImGuiDataType_Float, &v, count, &step, &step_fast, format, flags);
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
	ImGuiInputTextFlags flags = YYGetInt64(arg, 2);
	GMDEFAULT(ImGuiInputTextFlags.None);

	Result.kind = VALUE_BOOL;
	Result.val = ImGui::InputInt2(label, v, flags);
}

GMFUNC(__imgui_input_int3) {
	const char* label = YYGetString(arg, 0);
	int* v = YYGetArray<int>(arg, 1, 2);
	ImGuiInputTextFlags flags = YYGetInt64(arg, 2);
	GMDEFAULT(ImGuiInputTextFlags.None);

	Result.kind = VALUE_BOOL;
	Result.val = ImGui::InputInt2(label, v, flags);
}

GMFUNC(__imgui_input_int4) {
	const char* label = YYGetString(arg, 0);
	int* v = YYGetArray<int>(arg, 1, 2);
	ImGuiInputTextFlags flags = YYGetInt64(arg, 2);
	GMDEFAULT(ImGuiInputTextFlags.None);

	Result.kind = VALUE_BOOL;
	Result.val = ImGui::InputInt2(label, v, flags);
}

GMFUNC(__imgui_input_intn) {
	const char* label = YYGetString(arg, 0);
	int* v = YYGetArray<int>(arg, 1, 2);
	double count = YYGetReal(arg, 2);
	GMDEFAULT(array_length(v));
	ImGuiInputTextFlags flags = YYGetInt64(arg, 3);
	GMDEFAULT(ImGuiInputTextFlags.None);

	Result.kind = VALUE_BOOL;
	Result.val = ImGui::InputScalarN(label, ImGuiDataType_S32, &v, count, NULL, NULL, "%d", flags);
}

GMFUNC(__imgui_input_double) {
	const char* label = YYGetString(arg, 0);
	double v = YYGetReal(arg, 1);
	float step = YYGetReal(arg, 2);
	GMDEFAULT(0);
	float step_fast = YYGetReal(arg, 3);
	GMDEFAULT(0);
	const char* format = YYGetString(arg, 4);
	GMDEFAULT("%.6f");
	ImGuiInputTextFlags flags = YYGetInt64(arg, 5);
	GMDEFAULT(ImGuiInputTextFlags.None);

	ImGui::InputDouble(label, &v, step, step_fast, format, flags);
	Result.kind = VALUE_REAL;
	Result.val = v;
}