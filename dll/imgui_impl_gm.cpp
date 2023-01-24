#include "imgui.h"
#include "imgui_impl_gm.h"
#include "Extension_Interface.h"
#include "YYRValue.h"

struct ImGui_ImplGM_Data {
	ImGui_ImplGM_Data() { memset((void*)this, 0, sizeof(*this)); }
};

static ImGui_ImplGM_Data* ImGui_ImplGM_GetBackendData() {
	return ImGui::GetCurrentContext() ? (ImGui_ImplGM_Data*)ImGui::GetIO().BackendPlatformUserData : nullptr;
}

bool ImGui_ImplGM_Init(void* handle) {
	ImGuiIO& io = ImGui::GetIO();
	IM_ASSERT(io.BackendPlatformUserData == nullptr && "Already initialized a platform backend!");

	ImGui_ImplGM_Data* bd = IM_NEW(ImGui_ImplGM_Data)();
	io.BackendPlatformUserData = (void*)bd;
	io.BackendPlatformName = "imgui_impl_gm";
	io.BackendFlags |= ImGuiBackendFlags_HasMouseCursors;

	ImGui::GetMainViewport()->PlatformHandleRaw = handle;
	return true;
}

void ImGui_ImplGM_Shutdown() {
	ImGui_ImplGM_Data* bd = ImGui_ImplGM_GetBackendData();
	IM_ASSERT(bd != nullptr && "No platform backend to shutdown, or already shutdown?");

	ImGuiIO& io = ImGui::GetIO();
	io.BackendPlatformName = nullptr;
}

void ImGui_ImplGM_NewFrame(RValue* const state) {
	ImGuiIO& io = ImGui::GetIO();
	ImGui_ImplGM_Data* bd = ImGui_ImplGM_GetBackendData();
	IM_ASSERT(bd != nullptr && "Did you call ImGui_ImplGM_GetBackendData()?");

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

	io.DisplaySize = ImVec2(display_width->val, display_height->val);
	io.MousePos = ImVec2(mouse_x->val, mouse_y->val);
	io.Framerate = framerate->val;
	io.DeltaTime = time->val;
}