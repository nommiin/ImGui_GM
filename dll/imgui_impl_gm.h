#pragma once
#include "imgui.h"
#include "Extension_Interface.h"
#include "YYRValue.h"

IMGUI_IMPL_API bool ImGui_ImplGM_Init(void* handle);
IMGUI_IMPL_API void ImGui_ImplGM_Shutdown();
IMGUI_IMPL_API void ImGui_ImplGM_NewFrame(RValue* state);