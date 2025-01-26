#include "../imgui_gm.h"

GMFUNC(__imgui_input_text) {
	const char* label = YYGetString(arg, 0);
	const char* val = YYGetString(arg, 1);
	GMRETURN();
	ImGuiInputTextFlags flags = YYGetInt64(arg, 2);
	GMDEFAULT(ImGuiInputTextFlags.None);

	strcpy(g_InputBuf, val);
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
	ImGuiInputTextFlags flags = YYGetInt64(arg, 4);
	GMDEFAULT(ImGuiInputTextFlags.None);

	strcpy(g_InputBuf, val);
	ImGui::InputTextMultiline(label, g_InputBuf, IM_ARRAYSIZE(g_InputBuf), ImVec2(width, height), flags);
	YYCreateString(&g_Copy, g_InputBuf);
	COPY_RValue(&Result, &g_Copy);
}

GMFUNC(__imgui_input_textwithhint) {
	const char* label = YYGetString(arg, 0);
	const char* hint = YYGetString(arg, 1);
	const char* val = YYGetString(arg, 2);
	GMRETURN();
	ImGuiInputTextFlags flags = YYGetInt64(arg, 3);
	GMDEFAULT(ImGuiInputTextFlags.None);

	strcpy(g_InputBuf, val);
	ImGui::InputTextWithHint(label, hint, g_InputBuf, IM_ARRAYSIZE(g_InputBuf), flags);
	YYCreateString(&g_Copy, g_InputBuf);
	COPY_RValue(&Result, &g_Copy);
}

GMFUNC(__imgui_input_float) {
	const char* label = YYGetString(arg, 0);
	float v = YYGetReal(arg, 1);
	float step = YYGetReal(arg, 2);
	GMDEFAULT(0.1);
	float step_fast = YYGetReal(arg, 3);
	GMDEFAULT(0.25);
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
	GMDEFAULT(0.1);
	float step_fast = YYGetReal(arg, 3);
	GMDEFAULT(0.25);
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
	delete[]v;
}

GMFUNC(__imgui_input_float3) {
	const int len = 3;
	const char* label = YYGetString(arg, 0);
	float* v = YYGetArray<float>(arg, 1, len);
	float step = YYGetReal(arg, 2);
	GMDEFAULT(0.1);
	float step_fast = YYGetReal(arg, 3);
	GMDEFAULT(0.25);
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
	delete[]v;
}

GMFUNC(__imgui_input_float4) {
	const int len = 4;
	const char* label = YYGetString(arg, 0);
	float* v = YYGetArray<float>(arg, 1, len);
	float step = YYGetReal(arg, 2);
	GMDEFAULT(0.1);
	float step_fast = YYGetReal(arg, 3);
	GMDEFAULT(0.25);
	const char* format = YYGetString(arg, 4);
	GMDEFAULT("%.3f");
	ImGuiInputTextFlags flags = YYGetInt64(arg, 5);
	GMDEFAULT(ImGuiInputTextFlags.None);

	Result.kind = VALUE_BOOL;
	Result.val = false;
	if (ImGui::InputFloat4(label, v, format, flags)) {
		YYSetArray(&arg[1], v, len);
		Result.val = true;
	}
	delete[]v;
}

GMFUNC(__imgui_input_floatn) {
	const char* label = YYGetString(arg, 0);
	double len = YYGetReal(arg, 2);
	float* v = YYGetArray<float>(arg, 1, len);
	float step = YYGetReal(arg, 3);
	GMDEFAULT(0.1);
	float step_fast = YYGetReal(arg, 4);
	GMDEFAULT(0.25);
	const char* format = YYGetString(arg, 5);
	GMDEFAULT("%.3f");
	ImGuiInputTextFlags flags = YYGetInt64(arg, 6);
	GMDEFAULT(ImGuiInputTextFlags.None);
	GMHIDDEN();
	GMPASSTHROUGH(array_length(#arg1));
	GMOVERRIDE(InputFloatN);

	Result.kind = VALUE_BOOL;
	Result.val = false;
	if (ImGui::InputScalarN(label, ImGuiDataType_Float, v, len, &step, &step_fast, format, flags)) {
		YYSetArray(&arg[1], v, len);
		Result.val = true;
	}
	delete[]v;
}

GMFUNC(__imgui_input_int) {
	const char* label = YYGetString(arg, 0);
	int v = YYGetReal(arg, 1);
	int step = YYGetReal(arg, 2);
	GMDEFAULT(1);
	int step_fast = YYGetReal(arg, 3);
	GMDEFAULT(5);
	ImGuiInputTextFlags flags = YYGetInt64(arg, 4);
	GMDEFAULT(ImGuiInputTextFlags.None);

	ImGui::InputInt(label, &v, step, step_fast, flags);
	Result.kind = VALUE_REAL;
	Result.val = v;
}

GMFUNC(__imgui_input_int2) {
	const int len = 2;
	const char* label = YYGetString(arg, 0);
	int* v = YYGetArray<int>(arg, 1, len);
	ImGuiInputTextFlags flags = YYGetInt64(arg, 2);
	GMDEFAULT(ImGuiInputTextFlags.None);

	Result.kind = VALUE_BOOL;
	Result.val = false;
	if (ImGui::InputInt2(label, v, flags)) {
		YYSetArray(&arg[1], v, len);
		Result.val = true;
	}
	delete[]v;
}

GMFUNC(__imgui_input_int3) {
	const int len = 3;
	const char* label = YYGetString(arg, 0);
	int* v = YYGetArray<int>(arg, 1, len);
	ImGuiInputTextFlags flags = YYGetInt64(arg, 2);
	GMDEFAULT(ImGuiInputTextFlags.None);

	Result.kind = VALUE_BOOL;
	Result.val = false;
	if (ImGui::InputInt3(label, v, flags)) {
		YYSetArray(&arg[1], v, len);
		Result.val = true;
	}
	delete[]v;
}

GMFUNC(__imgui_input_int4) {
	const int len = 4;
	const char* label = YYGetString(arg, 0);
	int* v = YYGetArray<int>(arg, 1, len);
	ImGuiInputTextFlags flags = YYGetInt64(arg, 2);
	GMDEFAULT(ImGuiInputTextFlags.None);

	Result.kind = VALUE_BOOL;
	Result.val = false;
	if (ImGui::InputInt4(label, v, flags)) {
		YYSetArray(&arg[1], v, len);
		Result.val = true;
	}
	delete[]v;
}

GMFUNC(__imgui_input_intn) {
	const char* label = YYGetString(arg, 0);
	int* v = YYGetArray<int>(arg, 1, YYGetReal(arg, 3));
	ImGuiInputTextFlags flags = YYGetInt64(arg, 2);
	GMDEFAULT(ImGuiInputTextFlags.None);
	double count = YYGetReal(arg, 3);
	GMHIDDEN();
	GMPASSTHROUGH(array_length(#arg1));
	GMOVERRIDE(InputIntN);

	Result.kind = VALUE_BOOL;
	Result.val = false;
	if (ImGui::InputScalarN(label, ImGuiDataType_S32, v, count, NULL, NULL, "%d", flags)) {
		YYSetArray(&arg[1], v, count);
		Result.val = true;
	}
	delete[]v;
}

GMFUNC(__imgui_input_double) {
	const char* label = YYGetString(arg, 0);
	double v = YYGetReal(arg, 1);
	float step = YYGetReal(arg, 2);
	GMDEFAULT(1);
	float step_fast = YYGetReal(arg, 3);
	GMDEFAULT(5);
	const char* format = YYGetString(arg, 4);
	GMDEFAULT("%.6f");
	ImGuiInputTextFlags flags = YYGetInt64(arg, 5);
	GMDEFAULT(ImGuiInputTextFlags.None);

	ImGui::InputDouble(label, &v, step, step_fast, format, flags);
	Result.kind = VALUE_REAL;
	Result.val = v;
}