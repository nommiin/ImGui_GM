#include <charconv>
#include <string>
#include <tchar.h>
#include "imgui_gm.h"
#include "imgui_impl_gm.h"
#include "Extension_Interface.h"
#include "YYRValue.h"

static char* g_pWrite[128];
template<typename T> inline void BufferWrite(int buffer, T val, int& offset, bool grow = true) {
	*(T*)(&g_pWrite) = val;
	offset = BufferWriteContent(buffer, offset, g_pWrite, sizeof(T), grow);
}

struct ImGui_ImplGM_Data {
	bool isUserData;
	ImGui_ImplGM_Data() { memset((void*)this, 0, sizeof(*this)); isUserData = true; }
};

int g_CmdBuffer;
int g_FontBuffer;
bool g_UpdateFont;

//---------------------------------------------------------------------------------------------------------
// MAIN GAMEMAKER FUNCTIONS
//--------------------------------------------------------------------------------------------------------

static ImGui_ImplGM_Data* ImGui_ImplGM_GetData() {
	return ImGui::GetCurrentContext() ? (ImGui_ImplGM_Data*)ImGui::GetIO().UserData : nullptr;
}

void UpdateStateFromStruct(RValue* state, StateUpdateFlags flags = StateUpdateFlags_All) {
	ImGuiIO& io = ImGui::GetIO();

	RValue* display_width = nullptr;
	RValue* display_height = nullptr;
	RValue* display_scale = nullptr;
	RValue* mouse_x = nullptr;
	RValue* mouse_y = nullptr;
	RValue* framerate = nullptr;
	RValue* time = nullptr;
	RValue* command_buffer = nullptr;
	RValue* font_buffer = nullptr;
	RValue* update_font = nullptr;

	RValue* display = YYStructGetMember(state, "Display");
	RValue* input = YYStructGetMember(state, "Input");
	RValue* engine = YYStructGetMember(state, "Engine");
	RValue* renderer = YYStructGetMember(state, "Renderer");
	
	// Read RValues
	{
		if (display->kind != VALUE_UNDEFINED) {
			display_width = YYStructGetMember(display, "Width");
			display_height = YYStructGetMember(display, "Height");
			display_scale = YYStructGetMember(display, "Scale");
		}

		if (input->kind != VALUE_UNDEFINED) {
			RValue* yy_mouse = YYStructGetMember(input, "Mouse");

			if (yy_mouse->kind != VALUE_UNDEFINED) {
				mouse_x = YYStructGetMember(yy_mouse, "X");
				mouse_y = YYStructGetMember(yy_mouse, "Y");
			}
		}

		if (engine->kind != VALUE_UNDEFINED) {
			framerate = YYStructGetMember(engine, "Framerate");
			time = YYStructGetMember(engine, "Time");
		}

		if (renderer->kind != VALUE_UNDEFINED) {
			command_buffer = YYStructGetMember(renderer, "CmdBuffer");
			font_buffer = YYStructGetMember(renderer, "FontBuffer");
			update_font = YYStructGetMember(renderer, "UpdateFont");
		}
	}

	// Apply state
	if ((flags & StateUpdateFlags_DisplaySize) && (display_width != NULL && display_height != NULL)) {
		io.DisplaySize = ImVec2(display_width->asReal(), display_height->asReal());
	}
	if ((flags & StateUpdateFlags_DisplayScale) && (display_scale != NULL)) {
		io.FontGlobalScale = display_scale->asReal();
	}
	if ((flags & StateUpdateFlags_MousePos) && (mouse_x != NULL && mouse_y != NULL)) {
		io.AddMousePosEvent(mouse_x->val, mouse_y->val);
	}
	if ((flags & StateUpdateFlags_Framerate) && (framerate != NULL)) {
		io.Framerate = framerate->val;
	}
	if ((flags & StateUpdateFlags_Time) && (time != NULL)) {
		io.DeltaTime = time->val;
	}
	if ((flags & StateUpdateFlags_CmdBuffer) && (command_buffer != NULL)) {
		g_CmdBuffer = command_buffer->asReal();
	}
	if ((flags & StateUpdateFlags_FontBuffer) && (font_buffer != NULL)) {
		g_FontBuffer = font_buffer->asReal();
	}
	if ((flags & StateUpdateFlags_UpdateFont) && (update_font != NULL)) {
		g_UpdateFont = update_font->asBool();
	}
}

bool ImGui_ImplGM_Init(void* window_handle) {
	ImGuiIO& io = ImGui::GetIO();
	IM_ASSERT(io.UserData == nullptr && "Already initialized a platform backend!");

	ImGui_ImplGM_Data* ud = IM_NEW(ImGui_ImplGM_Data)();

	io.BackendPlatformName = "imgui_impl_gm";

	io.BackendFlags |= ImGuiBackendFlags_HasMouseCursors;
	io.BackendFlags |= ImGuiBackendFlags_HasSetMousePos;

    io.BackendFlags &= ~ImGuiBackendFlags_PlatformHasViewports;
    io.BackendFlags &= ~ImGuiBackendFlags_HasMouseHoveredViewport;

    ImGuiViewport* main_viewport = ImGui::GetMainViewport();
	main_viewport->PlatformHandleRaw = window_handle;

	io.UserData = &ud;
	
	return true;
}

void ImGui_ImplGM_Shutdown() {
	ImGui_ImplGM_Data* ud = ImGui_ImplGM_GetData();
	IM_ASSERT(ud != nullptr && "No platform backend to shutdown, or already shutdown?");

	ImGuiIO& io = ImGui::GetIO();

	io.BackendPlatformName = nullptr;
	io.UserData = nullptr;
	io.BackendFlags &= ~(ImGuiBackendFlags_HasMouseCursors | ImGuiBackendFlags_HasSetMousePos);
	io.BackendFlags |= (ImGuiBackendFlags_PlatformHasViewports | ImGuiBackendFlags_HasMouseHoveredViewport);
}

void ImGui_ImplGM_NewFrame() {
	ImGuiIO& io = ImGui::GetIO();

	int offset = 0;
	BufferWrite<bool>(g_FontBuffer, g_UpdateFont, offset);

	if (g_UpdateFont) {
		unsigned char* pixels;
		int width, height;
		io.Fonts->GetTexDataAsRGBA32(&pixels, &width, &height);
		io.Fonts->SetTexID((ImTextureID)TextureType_Font);

		BufferWrite<unsigned int>(g_FontBuffer, width, offset, true);
		BufferWrite<unsigned int>(g_FontBuffer, height, offset, true);
		BufferWriteContent(g_FontBuffer, offset, pixels, width * height * 4, true);
		g_UpdateFont = false;
	}

}

void ImGui_ImplGM_RenderDrawData(ImDrawData* draw_data) {
	ImGuiIO& io = ImGui::GetIO();
	ImGui_ImplGM_Data* ud = ImGui_ImplGM_GetData();
	IM_ASSERT(ud != nullptr && "Did you call ImGui_ImplGM_GetData()?");

	int cmd_offset = 0;
	if (io.DisplaySize.x <= 0 || io.DisplaySize.y <= 0) {
		BufferWrite<bool>(g_CmdBuffer, false, cmd_offset);
		return;
	}

	BufferWrite<bool>(g_CmdBuffer, draw_data->Valid, cmd_offset);
	if (draw_data->Valid) {
		BufferWrite<unsigned int>(g_CmdBuffer, draw_data->CmdListsCount, cmd_offset);
		for (int i = 0; i < draw_data->CmdListsCount; i++) {
			const ImDrawList* list = draw_data->CmdLists[i];
			BufferWrite<unsigned int>(g_CmdBuffer, list->CmdBuffer.Size, cmd_offset);
			for (int j = 0; j < list->CmdBuffer.Size; j++) {
				const ImDrawCmd* cmd = &list->CmdBuffer.Data[j];
				if (cmd->UserCallback != nullptr) {
					BufferWrite<bool>(g_CmdBuffer, true, cmd_offset);
				} else {
					BufferWrite<bool>(g_CmdBuffer, false, cmd_offset);

					uintptr_t texture = reinterpret_cast<uintptr_t>(cmd->GetTexID());
					BufferWrite<unsigned int>(g_CmdBuffer, (texture & 0xF) != TextureType_Raw ? texture : 0, cmd_offset);
					BufferWrite<float>(g_CmdBuffer, cmd->ClipRect.x, cmd_offset);
					BufferWrite<float>(g_CmdBuffer, cmd->ClipRect.y, cmd_offset);
					BufferWrite<float>(g_CmdBuffer, cmd->ClipRect.z, cmd_offset);
					BufferWrite<float>(g_CmdBuffer, cmd->ClipRect.w, cmd_offset);
					BufferWrite<unsigned int>(g_CmdBuffer, cmd->ElemCount, cmd_offset);
					for (unsigned int k = 0; k < cmd->ElemCount; k++) {
						const ImDrawVert* vert = &list->VtxBuffer[list->IdxBuffer[cmd->IdxOffset + k]];
						cmd_offset = BufferWriteContent(g_CmdBuffer, cmd_offset, vert, sizeof(ImDrawVert), true);
					}
				}
			}
		}
	}
}
