#include "../imgui_gm.h"

GMFUNC(__imgui_begin_drag_drop_source) {
	ImGuiDragDropFlags flags = YYGetInt64(arg, 0);
	GMDEFAULT(ImGuiDragDropFlags.None);

	Result.kind = VALUE_BOOL;
	Result.val = ImGui::BeginDragDropSource(flags);
}

GMFUNC(__imgui_end_drag_drop_source) {
	ImGui::EndDragDropSource();
	Result.kind = VALUE_UNDEFINED;
}

GMFUNC(__imgui_begin_drag_drop_target) {
	Result.kind = VALUE_BOOL;
	Result.val = ImGui::BeginDragDropTarget();
}

GMFUNC(__imgui_end_drag_drop_target) {
	ImGui::EndDragDropTarget();
	Result.kind = VALUE_UNDEFINED;
}

GMFUNC(__imgui_set_drag_drop_payload) {
	const char* type = YYGetString(arg, 0);
	RValue* data = &arg[1];
	GMHINT(Any);
	ImGuiCond cond = YYGetInt64(arg, 2);
	GMDEFAULT(ImGuiCond.None);

	static RValue g_Payload;
	COPY_RValue(&g_Payload, data);
	DsMapClear(g_KeepAlive);
	DsMapAddRValue(g_KeepAlive, "Payload", &g_Payload);

	Result.kind = VALUE_BOOL;
	Result.val = ImGui::SetDragDropPayload(type, &g_Payload, sizeof(RValue), cond);
}

static inline void TranslatePayload(const ImGuiPayload* payload, RValue& Result) {
	if (payload->IsDataType(IMGUI_PAYLOAD_TYPE_COLOR_3F)) {
		float* col = (float*)payload->Data;
		Result.kind = VALUE_REAL;
		Result.val = (int)(col[0] * 0xFF) | ((int)(col[1] * 0xFF) << 8) | ((int)(col[2] * 0xFF) << 16);
	} else if (payload->IsDataType(IMGUI_PAYLOAD_TYPE_COLOR_4F)) {
		float* col = (float*)payload->Data;
		Result.kind = VALUE_REAL;
		Result.val = (int)(col[0] * 0xFF) | ((int)(col[1] * 0xFF) << 8) | ((int)(col[2] * 0xFF) << 16) | ((int)(col[3] * 0xFF) << 24);
	} else if (payload->IsDataType(IMGUI_PAYLOAD_TYPE_WINDOW)) {
		Result.kind = VALUE_PTR;
		Result.ptr = payload->Data;
	} else {
		COPY_RValue(&Result, (RValue*)payload->Data);
	}
}

GMFUNC(__imgui_accept_drag_drop_payload) {
	const char* type = YYGetString(arg, 0);
	ImGuiDragDropFlags flags = YYGetInt64(arg,1);
	GMDEFAULT(ImGuiDragDropFlags.None);
	GMOVERRIDE(AcceptDragDropPayload);

	Result.kind = VALUE_UNDEFINED;
	if (const ImGuiPayload* payload = ImGui::AcceptDragDropPayload(type, flags)) {
		TranslatePayload(payload, Result);
		DsMapClear(g_KeepAlive);
	}
	GMRETURNS(Any|Undefined);
}

GMFUNC(__imgui_get_drag_drop_payload) {
	GMOVERRIDE(GetDragDropPayload);

	Result.kind = VALUE_UNDEFINED;
	if (const ImGuiPayload* payload = ImGui::GetDragDropPayload()) {
		TranslatePayload(payload, Result);
	}
	GMRETURNS(Any|Undefined);
}

GMFUNC(__imgui_get_payload_type) {
	GMOVERRIDE(GetDragDropPayloadType);

	Result.kind = VALUE_UNDEFINED;
	if (const ImGuiPayload* payload = ImGui::GetDragDropPayload()) {
		YYCreateString(&g_Copy, payload->DataType);
		COPY_RValue(&Result, &g_Copy);
	}
	GMRETURNS(String|Undefined);
}