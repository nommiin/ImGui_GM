#include "imgui_gm.h"

static ImGuiContext* g_ImGuiContext;
static bool g_ImGuiInitialized = false;

char g_InputBuf[INPUT_SIZE];
RValue g_Copy;

ID3D11Device* g_pd3dDevice;
ID3D11DeviceContext* g_pd3dDeviceContext;
ID3D11ShaderResourceView* g_pView;
void* g_pHandle;

int g_KeepAlive;
int g_CommandBuffer;
int g_FontBuffer;
bool g_UpdateFont;

YYRunnerInterface gs_runnerInterface;
YYRunnerInterface* g_pYYRunnerInterface;

GMEXPORT void YYExtensionInitialise(const struct YYRunnerInterface* _pFunctions, size_t _functions_size) {
	memcpy(&gs_runnerInterface, _pFunctions, sizeof(YYRunnerInterface));
	g_pYYRunnerInterface = &gs_runnerInterface;
	if (_functions_size < sizeof(YYRunnerInterface)) ShowError("Runner interface size mismatch");
	WriteLog("Successfully initialized runner interface");
	return;
}

GMFUNC(__imgui_initialize) {
	RValue* info = YYGetStruct(arg, 0);
	g_pHandle = (void*)(YYStructGetMember(info, "Handle")->ptr);
	g_KeepAlive = CreateDsMap(0);
	ImGuiContext* context = (ImGuiContext*)YYGetPtr(arg, 1);

	if (IMGUIGM_NATIVE) {
		g_pd3dDevice = (ID3D11Device*)(YYStructGetMember(info, "Device")->ptr);
		g_pd3dDeviceContext = (ID3D11DeviceContext*)(YYStructGetMember(info, "Context")->ptr);
	} else {
		static int size = 1024 * 8;
		g_CommandBuffer = CreateBuffer(size, eBuffer_Format_Grow, 1);
		g_FontBuffer = CreateBuffer(size, eBuffer_Format_Grow, 1);
		g_UpdateFont = true;
	}

	g_ImGuiContext = context;
	g_ImGuiInitialized = true;

	Result.kind = VALUE_PTR;
	if (!ImGui_ImplGM_Init(g_pHandle)) {
		Result.ptr = nullptr;
		return;
	}

	if (IMGUIGM_NATIVE) {
		if (!ImGui_ImplDX11_Init(g_pd3dDevice, g_pd3dDeviceContext)) {
			Result.ptr = nullptr;
			return;
		}
	}
	Result.ptr = g_ImGuiContext;
}

GMFUNC(__imgui_update) {
	RValue* state = YYGetStruct(arg, 0);
	if (state == nullptr) ShowError("Could not call update function when state struct is null");
	if (!g_ImGuiInitialized) ShowError("Could not call update function when ImGui_GM is not initialized");

	ImGui_ImplGM_NewFrame(state);
	if (IMGUIGM_NATIVE) {
		ImGui_ImplDX11_NewFrame();
	}
	ImGui::NewFrame();
}

GMFUNC(__imgui_render) {
	if (!g_ImGuiInitialized) ShowError("Could not call render function when ImGui_GM is not initialized");

	ImGui::Render();
	if (IMGUIGM_NATIVE) {
		ImGui_ImplDX11_RenderDrawData(ImGui::GetDrawData());
		return;
	}
	ImGui_ImplGM_RenderDrawData(ImGui::GetDrawData());
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