#include "imgui.h"
#include "imgui_impl_dx11.h"

#include "Extension_Interface.h"
#include "YYRValue.h"

#define ShowError(...) YYError("[ImGui_GM] An error has occured:\n- " __VA_ARGS__)
#define WriteLog(...) DebugConsoleOutput("[ImGui_GM] " FIRST(__VA_ARGS__) /*"\n"*/ REST(__VA_ARGS__) "\n")

YYRunnerInterface gs_runnerInterface;
YYRunnerInterface* g_pYYRunnerInterface;
TYYBuiltin F_ScriptExecute{ nullptr };

ID3D11Device* g_pd3dDevice;
ID3D11DeviceContext* g_pd3dDeviceContext;

static ImGuiContext* g_ImGuiContext;
static bool g_ImGuiInitialized = false;

void __initialize() {
	g_ImGuiContext = ImGui::CreateContext();
	g_ImGuiInitialized = true;
	return;
}

YYEXPORT void YYExtensionInitialise(const struct YYRunnerInterface* _pFunctions, size_t _functions_size) {
	memcpy(&gs_runnerInterface, _pFunctions, sizeof(YYRunnerInterface));
	g_pYYRunnerInterface = &gs_runnerInterface;
	if (_functions_size < sizeof(YYRunnerInterface)) {
		ShowError("Runner interface mismatch");
	}
	__initialize();
	WriteLog("Successfully initialized extension");
	return;
}

YYEXPORT void __imgui_initialize(RValue& Result, CInstance* selfinst, CInstance* otherinst, int argc, RValue* arg) {
	RValue* state = YYGetStruct(arg, 0);
	g_pd3dDevice = (ID3D11Device*)(YYStructGetMember(state, "Device")->ptr);
	g_pd3dDeviceContext = (ID3D11DeviceContext*)(YYStructGetMember(state, "Context")->ptr);

	ImGui::StyleColorsDark();
	Result.kind = VALUE_BOOL;
	Result.val = ImGui_ImplDX11_Init(g_pd3dDevice, g_pd3dDeviceContext);
	return;

}

YYEXPORT void __imgui_update(RValue& Result, CInstance* selfinst, CInstance* otherinst, int argc, RValue* arg) {
	RValue* state = YYGetStruct(arg, 0);
	if (state == nullptr) {
		YYError("Could not call update function, state struct argument is null");
		return;
	}

	Result.kind = VALUE_BOOL;
	if (!g_ImGuiInitialized) {
		Result.val = 0;
		return;
	}

	RValue* display = YYStructGetMember(state, "Display");
	RValue* input = YYStructGetMember(state, "Input");
	RValue* engine = YYStructGetMember(state, "Engine");
	RValue* mouse = YYStructGetMember(input, "Mouse");
	RValue* display_width = YYStructGetMember(display, "Width");
	RValue* display_height = YYStructGetMember(display, "Height");
	RValue* mouse_x = YYStructGetMember(mouse, "X");
	RValue* mouse_y = YYStructGetMember(mouse, "Y");
	RValue* framerate = YYStructGetMember(engine, "Framerate");
	RValue* time = YYStructGetMember(engine, "Time");

	ImGui_ImplDX11_NewFrame();
	ImGuiIO& io = ImGui::GetIO();
	io.DisplaySize = ImVec2(display_width->val, display_height->val);
	io.MousePos = ImVec2(mouse_x->val, mouse_y->val);
	io.Framerate = framerate->val;

	ImGui::NewFrame();
	Result.kind = VALUE_BOOL;
	Result.val = 1;
	return;
}

YYEXPORT void __imgui_render(RValue& Result, CInstance* selfinst, CInstance* otherinst, int argc, RValue* arg) {
	ImGui::Render();
	ImGui_ImplDX11_RenderDrawData(ImGui::GetDrawData());

	Result.kind = VALUE_BOOL;
	Result.val = 1;
	return;
}

YYEXPORT void __imgui_key(RValue& Result, CInstance* selfinst, CInstance* otherinst, int argc, RValue* arg) {
	int64 key = YYGetInt64(arg, 0);
	bool down = YYGetBool(arg, 1);

	ImGuiIO& io = ImGui::GetIO();
	io.AddKeyEvent((ImGuiKey)key, down);
	return;
}

YYEXPORT void __imgui_input(RValue& Result, CInstance* selfinst, CInstance* otherinst, int argc, RValue* arg) {
	const char* input = YYGetString(arg, 0);

	ImGuiIO& io = ImGui::GetIO();
	if (io.WantTextInput) {
		io.AddInputCharactersUTF8(input);
	}

	Result.kind = VALUE_BOOL;
	Result.val = io.WantTextInput;
	return;
}

YYEXPORT void __imgui_mouse(RValue& Result, CInstance* selfinst, CInstance* otherinst, int argc, RValue* arg) {
	double button = YYGetReal(arg, 0);
	bool down = YYGetBool(arg, 1);

	ImGuiIO& io = ImGui::GetIO();
	io.AddMouseButtonEvent(button, down);
	return;
}