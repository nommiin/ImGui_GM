#include "Extension_Interface.h"
#include "YYRValue.h"

#include "imgui.h"
#include "imgui_impl_dx11.h"
#include "imgui_gm.h"

YYRunnerInterface gs_runnerInterface;
YYRunnerInterface* g_pYYRunnerInterface;

ID3D11Device* g_pd3dDevice;
ID3D11DeviceContext* g_pd3dDeviceContext;

static ImGuiContext* g_ImGuiContext;
static bool g_ImGuiInitialized = false;

GMEXPORT void YYExtensionInitialise(const struct YYRunnerInterface* _pFunctions, size_t _functions_size) {
	memcpy(&gs_runnerInterface, _pFunctions, sizeof(YYRunnerInterface));
	g_pYYRunnerInterface = &gs_runnerInterface;
	if (_functions_size < sizeof(YYRunnerInterface)) ShowError("Runner interface size mismatch");
	WriteLog("Successfully initialized runner interface");
	return;
}

GMFUNC(__imgui_initialize) {
	RValue* info = YYGetStruct(arg, 0);
	g_pd3dDevice = (ID3D11Device*)(YYStructGetMember(info, "Device")->ptr);
	g_pd3dDeviceContext = (ID3D11DeviceContext*)(YYStructGetMember(info, "Context")->ptr);

	g_ImGuiContext = ImGui::CreateContext();
	g_ImGuiInitialized = true;
	ImGui::StyleColorsDark();

	ImGuiIO& io = ImGui::GetIO();
	io.ConfigFlags |= ImGuiConfigFlags_DockingEnable;
	io.BackendFlags |= ImGuiBackendFlags_HasMouseCursors;

	Result.kind = VALUE_BOOL;
	Result.val = ImGui_ImplDX11_Init(g_pd3dDevice, g_pd3dDeviceContext);
}

GMFUNC(__imgui_update) {
	RValue* state = YYGetStruct(arg, 0);
	if (state == nullptr) ShowError("Could not call update function when state struct is null");
	if (!g_ImGuiInitialized) ShowError("Could not call update function when ImGui_GM is not initialized");

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
	io.DeltaTime = time->val;
	ImGui::NewFrame();
}

GMFUNC(__imgui_render) {
	if (!g_ImGuiInitialized) ShowError("Could not call render function when ImGui_GM is not initialized");

	ImGui::Render();
	ImGui_ImplDX11_RenderDrawData(ImGui::GetDrawData());
}

GMFUNC(__imgui_key) {
	ImGui::GetIO().AddKeyEvent((ImGuiKey)YYGetInt64(arg, 0), YYGetBool(arg, 1));
}

GMFUNC(__imgui_input) {
	ImGuiIO& io = ImGui::GetIO();
	if (io.WantTextInput) io.AddInputCharactersUTF8(YYGetString(arg, 0));

	Result.kind = VALUE_BOOL;
	Result.val = io.WantTextInput;
}

GMFUNC(__imgui_mouse) {
	ImGui::GetIO().AddMouseButtonEvent(YYGetReal(arg, 0), YYGetBool(arg, 1));
}

GMFUNC(__imgui_mouse_wheel) {
	ImGui::GetIO().AddMouseWheelEvent(YYGetReal(arg, 0), YYGetReal(arg, 1));
}

GMFUNC(__imgui_mouse_cursor) {
	Result.kind = VALUE_REAL;
	Result.val = ImGui::GetMouseCursor();
}