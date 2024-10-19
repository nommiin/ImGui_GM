#include "../imgui_gm.h"

GMFUNC(__imgui_text_unformatted) {
	const char* text = YYGetString(arg, 0);

	ImGui::TextUnformatted(text, NULL);
	Result.kind = VALUE_UNDEFINED;
}

GMFUNC(__imgui_text) {
	const char* val = YYGetString(arg, 0);

	ImGui::Text(val);
	Result.kind = VALUE_UNDEFINED;
}

GMFUNC(__imgui_text_colored) {
	const char* val = YYGetString(arg, 0);
	double color = YYGetReal(arg, 1);
	float alpha = YYGetReal(arg, 2);
	GMDEFAULT(1);

	ImGui::TextColored(GMCOLOR_TO(color, alpha), val);
	Result.kind = VALUE_UNDEFINED;
}

GMFUNC(__imgui_text_disabled) {
	const char* val = YYGetString(arg, 0);

	ImGui::TextDisabled(val);
	Result.kind = VALUE_UNDEFINED;
}

GMFUNC(__imgui_text_wrapped) {
	const char* val = YYGetString(arg, 0);

	ImGui::TextWrapped(val);
	Result.kind = VALUE_UNDEFINED;
}

GMFUNC(__imgui_label_text) {
	const char* label = YYGetString(arg, 0);
	const char* val = YYGetString(arg, 1);

	ImGui::LabelText(label, val);
	Result.kind = VALUE_UNDEFINED;
}

GMFUNC(__imgui_bullet_text) {
	const char* val = YYGetString(arg, 0);

	ImGui::BulletText(val);
	Result.kind = VALUE_UNDEFINED;
}

GMFUNC(__imgui_value) {
	GMOVERRIDE(Value);
	ShowError("Unimplemented ImGui Function: ImGui.Value");
}