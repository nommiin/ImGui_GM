#include "imgui_gm.h"
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

	// Setup font textures if using GML renderer
	if (!IMGUIGM_NATIVE) {
		unsigned char* pixels;
		int width, height;
		io.Fonts->GetTexDataAsRGBA32(&pixels, &width, &height);
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

static char* g_pWrite[128];
template<typename T> inline void BufferWrite(int buffer, T val, int& offset, bool grow=true) {
	*(T*)(&g_pWrite) = val;
	offset = BufferWriteContent(buffer, offset, g_pWrite, sizeof(T), grow);
}

void ImGui_ImplGM_RenderDrawData(ImDrawData* data) {
	int cmd_offset = 0;
	if (data->DisplaySize.x <= 0 || data->DisplaySize.y <= 0) {
		BufferWrite<bool>(g_CommandBuffer, false, cmd_offset);
		return;
	}

	BufferWrite<bool>(g_CommandBuffer, data->Valid, cmd_offset);
	if (data->Valid) {
		int vtx_offset = 0, idx_offset = 0;
		BufferWrite<unsigned int>(g_CommandBuffer, data->CmdListsCount, cmd_offset);

		for (int i = 0; i < data->CmdListsCount; i++) {
			const ImDrawList* list = data->CmdLists[i];
			BufferWrite<unsigned int>(g_CommandBuffer, list->CmdBuffer.Size, cmd_offset);
			for (int j = 0; j < list->CmdBuffer.Size; j++) {
				const ImDrawCmd* cmd = &list->CmdBuffer.Data[j];
				if (cmd->UserCallback != nullptr) {
					BufferWrite<bool>(g_CommandBuffer, true, cmd_offset);
				} else {
					BufferWrite<bool>(g_CommandBuffer, false, cmd_offset);
					BufferWrite<unsigned int>(g_CommandBuffer, cmd->ElemCount, cmd_offset);
					BufferWrite<unsigned int>(g_CommandBuffer, cmd->IdxOffset, cmd_offset);
					BufferWrite<float>(g_CommandBuffer, cmd->ClipRect.x, cmd_offset);
					BufferWrite<float>(g_CommandBuffer, cmd->ClipRect.y, cmd_offset);
					BufferWrite<float>(g_CommandBuffer, cmd->ClipRect.z, cmd_offset);
					BufferWrite<float>(g_CommandBuffer, cmd->ClipRect.w, cmd_offset);
				}
			}

			// write vtx
			for (int j = 0; j < list->VtxBuffer.Size; j++) {
				const ImDrawVert* vtx = &list->VtxBuffer.Data[j];
				BufferWrite<float>(g_VertexBuffer, vtx->pos.x, vtx_offset);
				BufferWrite<float>(g_VertexBuffer, vtx->pos.y, vtx_offset);
				BufferWrite<float>(g_VertexBuffer, vtx->uv.x, vtx_offset);
				BufferWrite<float>(g_VertexBuffer, vtx->uv.y, vtx_offset);
				BufferWrite<unsigned int>(g_VertexBuffer, vtx->col, vtx_offset);
				BufferWrite<float>(g_VertexBuffer, (float)(vtx->col >> 24) / 0xFF, vtx_offset);
			}

			// write itx
			idx_offset = BufferWriteContent(g_IndexBuffer, idx_offset, list->IdxBuffer.Data, sizeof(ImDrawIdx) * list->IdxBuffer.Size, true);
		}
	}

	/*
	int offset = 0;
	if (data->DisplaySize.x <= 0 || data->DisplaySize.y <= 0) {
		BufferWrite<bool>(g_RenderBuffer, false, offset);
		return;
	}

	/*
		g_RenderBuffer Layout:
		bool Valid @ 0x00;

	*/

	/*
		
	

	BufferWrite<bool>(g_RenderBuffer, data->Valid, offset);
	if (data->Valid) {
		BufferWrite<unsigned int>(g_RenderBuffer, data->TotalVtxCount, offset);
		BufferWrite<unsigned int>(g_RenderBuffer, data->TotalIdxCount, offset);
		BufferWrite<unsigned int>(g_RenderBuffer, data->CmdListsCount, offset);
		for (int i = 0; i < data->CmdListsCount; i++) {
			const ImDrawList* cmd = data->CmdLists[i];
			BufferWrite<unsigned int>(g_RenderBuffer, cmd->VtxBuffer.Size, offset);
		}
	}*/
	/*int offset = 0;
	if (draw_data->DisplaySize.x <= 0 || draw_data->DisplaySize.y <= 0) {
		BufferWrite<bool>(g_Buffer, false, offset);
		return;
	}


	unsigned char* buffer = BufferGet(BufferGetFromGML(g_Buffer));
	BufferWrite<bool>(g_Buffer, draw_data->Valid, offset);
	if (draw_data->Valid) {

		/*
		BufferWrite<unsigned int>(g_Buffer, draw_data->TotalVtxCount, offset);
		BufferWrite<unsigned int>(g_Buffer, draw_data->TotalIdxCount, offset);
		BufferWrite<unsigned int>(g_Buffer, draw_data->CmdListsCount, offset);
		for (int i = 0; i < draw_data->CmdListsCount; i++) {
			const ImDrawList* cmd_list = draw_data->CmdLists[i];
			BufferWrite<unsigned int>(g_Buffer, cmd_list->VtxBuffer.Size, offset);
			offset = BufferWriteContent(g_Buffer, offset, cmd_list->VtxBuffer.Data, cmd_list->VtxBuffer.Size * sizeof(ImDrawVert), true);
			BufferWrite<unsigned int>(g_Buffer, cmd_list->IdxBuffer.Size, offset);
			offset = BufferWriteContent(g_Buffer, offset, cmd_list->IdxBuffer.Data, cmd_list->IdxBuffer.Size * sizeof(ImDrawIdx), true);
			BufferWrite<unsigned int>(g_Buffer, cmd_list->CmdBuffer.Size, offset);
			for (int j = 0; j < cmd_list->CmdBuffer.Size; j++) {
				const ImDrawCmd* cmd = &cmd_list->CmdBuffer[j];
				offset = BufferWriteContent(g_Buffer, offset, cmd, sizeof(ImDrawCmd), true);
			}
		}*/
	//}
}