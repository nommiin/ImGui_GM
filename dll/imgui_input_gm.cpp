#include "Extension_Interface.h"
#include "YYRValue.h"
#include "imgui_gm.h"

#include "imgui.h"
#include "imgui_internal.h"
#include "imgui_impl_dx11.h"
#include "imgui_memory_editor.h"

#include <d3d11.h>
#include <vector>
#include <string>

GMFUNC(__imgui_text) {
	const char* label = YYGetString(arg, 0);
	ImGui::Text(label);

	Result.kind = VALUE_UNDEFINED;
}