#include "imgui.h"
#include "imgui_impl_dx11.h"

#include "Extension_Interface.h"
#include "YYRValue.h"

#define YYEXPORT __declspec(dllexport)
#define ShowError(...) YYError("[ImGui_GM] An error has occured:\n- " __VA_ARGS__)
#define WriteLog(...) DebugConsoleOutput("[ImGui_GM] %s\n", __VA_ARGS__)

YYRunnerInterface gs_runnerInterface;
YYRunnerInterface* g_pYYRunnerInterface;

ID3D11Device* g_pd3dDevice;
ID3D11DeviceContext* g_pd3dDeviceContext;

static ImGuiContext* g_ImGuiContext;
static bool g_ImGuiInitialized = false;
static int g_pDrawData = -1;

void __initialize() {
	g_ImGuiContext = ImGui::CreateContext();
	g_ImGuiInitialized = true;
	ImGui::StyleColorsDark();

	ImGuiIO& io = ImGui::GetIO();
	io.ConfigFlags |= ImGuiConfigFlags_DockingEnable;
	io.BackendFlags |= ImGuiBackendFlags_HasMouseCursors;
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

static char* g_pWrite[128];
template<typename T> inline void BufferWrite(int buffer, T val, int& offset, bool grow=true) {
	*(T*)(&g_pWrite) = val;
	offset = BufferWriteContent(buffer, offset, g_pWrite, sizeof(T), grow);
}

YYEXPORT void __imgui_render(RValue& Result, CInstance* selfinst, CInstance* otherinst, int argc, RValue* arg) {
	ImGui::Render();
	ImDrawData* data = ImGui::GetDrawData();
	if (argc == 0) {
		ImGui_ImplDX11_RenderDrawData(data);
	} else {
		int buffer = YYGetReal(arg, 0), offset = 0;
		BufferWrite<bool>(buffer, data->Valid, offset);
		if (data->Valid) {
			BufferWrite<int>(buffer, data->CmdListsCount, offset);
			for (int i = 0; i < data->CmdListsCount; i++) {
				const ImDrawList* list = data->CmdLists[i];

				BufferWrite<int>(buffer, list->IdxBuffer.Size, offset);
				for (int j = 0; j < list->IdxBuffer.Size; j++) {
					BufferWrite<ImDrawIdx>(buffer, (ImDrawIdx)&list->IdxBuffer[j], offset);
				}

				BufferWrite<int>(buffer, list->VtxBuffer.Size, offset);
				for (int j = 0; j < list->VtxBuffer.Size; j++) {
					const ImDrawVert* vert = &list->VtxBuffer[j];
					BufferWrite<float>(buffer, vert->pos.x, offset);
					BufferWrite<float>(buffer, vert->pos.y, offset);
					BufferWrite<float>(buffer, vert->uv.x, offset);
					BufferWrite<float>(buffer, vert->uv.y, offset);
					BufferWrite<unsigned int>(buffer, vert->col, offset);
				}

				BufferWrite<int>(buffer, list->CmdBuffer.Size, offset);
				for (int j = 0; j < list->CmdBuffer.Size; j++) {
					const ImDrawCmd* cmd = &list->CmdBuffer[j];
					if (cmd->UserCallback != nullptr) {
						BufferWrite<int>(buffer, -1, offset);
					}
					else
					{
						BufferWrite<int>(buffer, 0, offset);
						BufferWrite<float>(buffer, cmd->ClipRect.x, offset);
						BufferWrite<float>(buffer, cmd->ClipRect.y, offset);
						BufferWrite<float>(buffer, cmd->ClipRect.z, offset);
						BufferWrite<float>(buffer, cmd->ClipRect.w, offset);
						BufferWrite<int>(buffer, (int)cmd->TextureId, offset);
						BufferWrite<unsigned int>(buffer, cmd->VtxOffset, offset);
						BufferWrite<unsigned int>(buffer, cmd->IdxOffset, offset);
						BufferWrite<unsigned int>(buffer, cmd->ElemCount, offset);
						BufferWrite<double>(buffer, 0, offset);
						BufferWrite<double>(buffer, 0, offset);
					}
				}
			}
		}
	}
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

YYEXPORT void __imgui_mouse_wheel(RValue& Result, CInstance* selfinst, CInstance* otherinst, int argc, RValue* arg) {
	double x = YYGetReal(arg, 0);
	double y = YYGetReal(arg, 1);

	ImGuiIO& io = ImGui::GetIO();
	io.AddMouseWheelEvent(x, y);
	return;
}

YYEXPORT void __imgui_mouse_cursor(RValue& Result, CInstance* selfinst, CInstance* otherinst, int argc, RValue* arg) {
	Result.kind = VALUE_REAL;
	Result.val = (int)ImGui::GetMouseCursor();
	return;
}