#pragma once
#include "imgui/imgui.h"
#include "Extension_Interface.h"
#include "YYRValue.h"

extern int g_CmdBuffer;
extern int g_FontBuffer;
extern bool g_UpdateFont;

typedef int StateUpdateFlags;

enum StateUpdateFlags_ : int {
	StateUpdateFlags_None = 0,
	StateUpdateFlags_DisplaySize = 1 << 0,
	StateUpdateFlags_DisplayScale = 1 << 1,
	StateUpdateFlags_MousePos = 1 << 2,
	StateUpdateFlags_Framerate = 1 << 3,
	StateUpdateFlags_Time = 1 << 4,
	StateUpdateFlags_CmdBuffer = 1 << 5,
	StateUpdateFlags_FontBuffer = 1 << 6,
	StateUpdateFlags_UpdateFont = 1 << 7,

	StateUpdateFlags_Display = StateUpdateFlags_DisplaySize | StateUpdateFlags_DisplayScale,
	StateUpdateFlags_Input = StateUpdateFlags_MousePos,
	StateUpdateFlags_Engine = StateUpdateFlags_Framerate | StateUpdateFlags_Time,
	StateUpdateFlags_Renderer = StateUpdateFlags_CmdBuffer | StateUpdateFlags_FontBuffer | StateUpdateFlags_UpdateFont,

	StateUpdateFlags_All = StateUpdateFlags_Display | StateUpdateFlags_Input | StateUpdateFlags_Engine | StateUpdateFlags_Renderer,
};

IMGUI_IMPL_API bool ImGui_ImplGM_Init(void* window_handle);
IMGUI_IMPL_API void ImGui_ImplGM_Shutdown();
IMGUI_IMPL_API void ImGui_ImplGM_NewFrame();
IMGUI_IMPL_API void ImGui_ImplGM_RenderDrawData(ImDrawData* data);
IMGUI_IMPL_API void UpdateStateFromStruct(RValue* state, StateUpdateFlags flags);
