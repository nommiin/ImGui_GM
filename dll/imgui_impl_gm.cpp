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

	// Setup font textures if using GML renderer
	if (!IMGUIGM_NATIVE) {
		unsigned char* pixels;
		int width, height;
		io.Fonts->GetTexDataAsRGBA32(&pixels, &width, &height);
		io.Fonts->SetTexID((ImTextureID)-2);

		int offset = 0;
		BufferWrite<bool>(g_FontBuffer, g_UpdateFont, offset);
		if (g_UpdateFont) {
			BufferWrite<unsigned int>(g_FontBuffer, width, offset, true);
			BufferWrite<unsigned int>(g_FontBuffer, height, offset, true);
			BufferWriteContent(g_FontBuffer, offset, pixels, width * height * 4, true);
			g_UpdateFont = false;
		}
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

	io.DisplaySize = ImVec2(display_width->val, display_height->val);
	io.MousePos = ImVec2(mouse_x->val, mouse_y->val);
	io.Framerate = framerate->val;
	io.DeltaTime = time->val;
}

void ImGui_ImplGM_RenderDrawData(ImDrawData* data) {
	int cmd_offset = 0;
	if (data->DisplaySize.x <= 0 || data->DisplaySize.y <= 0) {
		BufferWrite<bool>(g_CommandBuffer, false, cmd_offset);
		return;
	}

	/*
		NOTE:
		This sucks! I got really annoyed when trying to figure out index buffers so,
		I just decided to copy all the verticies in order... it's really slow.
		
		Aside from that, sprites' subimages do not work. Nor do surface textures.
		But it works for now!
	*/

	BufferWrite<bool>(g_CommandBuffer, data->Valid, cmd_offset);
	if (data->Valid) {
		BufferWrite<unsigned int>(g_CommandBuffer, data->CmdListsCount, cmd_offset);
		for (int i = 0; i < data->CmdListsCount; i++) {
			const ImDrawList* list = data->CmdLists[i];
			BufferWrite<unsigned int>(g_CommandBuffer, list->CmdBuffer.Size, cmd_offset);
			for (int j = 0; j < list->CmdBuffer.Size; j++) {
				const ImDrawCmd* cmd = &list->CmdBuffer.Data[j];
				if (cmd->UserCallback != nullptr) {
					BufferWrite<bool>(g_CommandBuffer, true, cmd_offset);
				} else {
					ImTextureID tex_id = cmd->GetTexID();
					BufferWrite<bool>(g_CommandBuffer, false, cmd_offset);
					BufferWrite<int>(g_CommandBuffer, tex_id != nullptr ? (int)tex_id : -1, cmd_offset);
					BufferWrite<float>(g_CommandBuffer, cmd->ClipRect.x, cmd_offset);
					BufferWrite<float>(g_CommandBuffer, cmd->ClipRect.y, cmd_offset);
					BufferWrite<float>(g_CommandBuffer, cmd->ClipRect.z, cmd_offset);
					BufferWrite<float>(g_CommandBuffer, cmd->ClipRect.w, cmd_offset);
					BufferWrite<unsigned int>(g_CommandBuffer, cmd->ElemCount, cmd_offset);
					for (unsigned int k = 0; k < cmd->ElemCount; k++) {
						const ImDrawVert* vert = &list->VtxBuffer[list->IdxBuffer[cmd->IdxOffset + k]];
						cmd_offset = BufferWriteContent(g_CommandBuffer, cmd_offset, vert, sizeof(ImDrawVert), true);
					}
				}
			}
		}
	}
}