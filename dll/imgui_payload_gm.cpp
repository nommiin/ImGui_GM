#include "imgui_gm.h"

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

GMFUNC(__imgui_accept_drag_drop_payload) {
	const char* type = YYGetString(arg, 0);
	ImGuiDragDropFlags flags = YYGetInt64(arg,1);
	GMDEFAULT(ImGuiDragDropFlags.None);
	GMOVERRIDE(AcceptDragDropPayload);

	Result.kind = VALUE_UNDEFINED;
	if (const ImGuiPayload* payload = ImGui::AcceptDragDropPayload(type, flags)) {
		COPY_RValue(&Result, (RValue*)payload->Data);
		DsMapClear(g_KeepAlive);
	}
	GMRETURNS(Any|Undefined);
}

GMFUNC(__imgui_get_drag_drop_payload) {
	GMOVERRIDE(GetDragDropPayload);

	Result.kind = VALUE_UNDEFINED;
	if (const ImGuiPayload* payload = ImGui::GetDragDropPayload()) {
		COPY_RValue(&Result, (RValue*)payload->Data);
		DsMapClear(g_KeepAlive);
	}
	GMRETURNS(Any|Undefined);
}

GMFUNC(__imgui_get_payload_keepalive) {
	GMOVERRIDE(GetPayloadKeepAlive);

	Result.kind = VALUE_REAL;
	Result.val = g_KeepAlive;
}