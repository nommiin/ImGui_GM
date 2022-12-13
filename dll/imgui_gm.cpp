#include "imgui.h"
#include "imgui_impl_dx11.h"

#include "Extension_Interface.h"
#include "YYRValue.h"

// For storing changed input values
static char INPUT_STR[256] = "";

// Direct bindings for ImGui functions to GML, add to ImGui statics
YYEXPORT void __imgui_begin(RValue& Result, CInstance* selfinst, CInstance* otherinst, int argc, RValue* arg) {
	const char* name = YYGetString(arg, 0);
	bool show = YYGetBool(arg, 1);
	int64 flags = YYGetInt64(arg, 2);

	Result.kind = VALUE_BOOL;
	Result.val = ImGui::Begin(name, &show, (ImGuiWindowFlags)flags);
	return;
}

YYEXPORT void __imgui_end(RValue& Result, CInstance* selfinst, CInstance* otherinst, int argc, RValue* arg) {
	ImGui::End();
	Result.kind = VALUE_UNDEFINED;
	return;
}

YYEXPORT void __imgui_text(RValue& Result, CInstance* selfinst, CInstance* otherinst, int argc, RValue* arg) {
	const char* val = YYGetString(arg, 0);

	ImGui::Text(val);
	Result.kind = VALUE_UNDEFINED;
	return;
}

YYEXPORT void __imgui_input_text(RValue& Result, CInstance* selfinst, CInstance* otherinst, int argc, RValue* arg) {
	const char* label = YYGetString(arg, 0);
	const char* txt = (char*)YYGetString(arg, 1);
	memcpy(INPUT_STR, txt, strlen(txt));

	ImGui::InputText(label, INPUT_STR, IM_ARRAYSIZE(INPUT_STR));
	RValue res = { 0 };
	YYCreateString(&res, INPUT_STR);
	COPY_RValue(&Result, &res);
	FREE_RValue(&res);
	return;
}

YYEXPORT void __imgui_button(RValue& Result, CInstance* selfinst, CInstance* otherinst, int argc, RValue* arg) {
	const char* label = YYGetString(arg, 0);

	Result.kind = VALUE_BOOL;
	Result.val = ImGui::Button(label);
	return;
}

YYEXPORT void __imgui_show_about(RValue& Result, CInstance* selfinst, CInstance* otherinst, int argc, RValue* arg) {
	ImGui::ShowAboutWindow();
	return;
}

// __imgui_input_text