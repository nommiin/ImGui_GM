#include "imgui_gm.h"

/// <summary>
/// General API functions
/// </summary>
/// <param name=""></param>

GMFUNC(__imgui_create_context) {
	Result.kind = VALUE_PTR;
	Result.ptr = ImGui::CreateContext();
}

GMFUNC(__imgui_destroy_context) {
	void* ctx = YYGetPtr(arg, 0);

	ImGui::DestroyContext((ImGuiContext*)ctx);
	Result.kind = VALUE_UNDEFINED;
}

GMFUNC(__imgui_get_current_context) {
	Result.kind = VALUE_PTR;
	Result.ptr = ImGui::GetCurrentContext();
}

GMFUNC(__imgui_set_current_context) {
	void* ctx = YYGetPtr(arg, 0);

	ImGui::SetCurrentContext((ImGuiContext*)ctx);
	Result.kind = VALUE_UNDEFINED;
}

GMFUNC(__imgui_show_demo_window) {
	bool open = YYGetBool(arg, 0);
	GMDEFAULT(undefined);

	bool* p_open = &open;
	if (!open) {
		if ((&arg[0])->kind == VALUE_UNDEFINED) {
			p_open = nullptr;
		}
	}

	ImGui::ShowDemoWindow(p_open);
	Result.kind = VALUE_BOOL;
	Result.val = open;
}

GMFUNC(__imgui_show_metrics_window) {
	bool open = YYGetBool(arg, 0);
	GMDEFAULT(undefined);

	bool* p_open = &open;
	if (!open) {
		if ((&arg[0])->kind == VALUE_UNDEFINED) {
			p_open = nullptr;
		}
	}

	ImGui::ShowMetricsWindow(p_open);
	Result.kind = VALUE_BOOL;
	Result.val = open;
}

GMFUNC(__imgui_show_debug_log_window) {
	bool open = YYGetBool(arg, 0);
	GMDEFAULT(undefined);

	bool* p_open = &open;
	if (!open) {
		if ((&arg[0])->kind == VALUE_UNDEFINED) {
			p_open = nullptr;
		}
	}

	ImGui::ShowDebugLogWindow(p_open);
	Result.kind = VALUE_BOOL;
	Result.val = open;
}

GMFUNC(__imgui_show_stack_tool_window) {
	bool open = YYGetBool(arg, 0);
	GMDEFAULT(undefined);

	bool* p_open = &open;
	if (!open) {
		if ((&arg[0])->kind == VALUE_UNDEFINED) {
			p_open = nullptr;
		}
	}

	ImGui::ShowStackToolWindow(p_open);
	Result.kind = VALUE_BOOL;
	Result.val = open;
}

GMFUNC(__imgui_show_about_window) {
	bool open = YYGetBool(arg, 0);
	GMDEFAULT(undefined);

	bool* p_open = &open;
	if (!open) {
		if ((&arg[0])->kind == VALUE_UNDEFINED) {
			p_open = nullptr;
		}
	}

	ImGui::ShowAboutWindow(p_open);
	Result.kind = VALUE_BOOL;
	Result.val = open;
}

GMFUNC(__imgui_show_style_editor) {
	GMOVERRIDE(ShowStyleEditor);
	ShowError("Unimplemented ImGui Function: ImGui.ShowStyleEditor");
}

GMFUNC(__imgui_show_style_selector) {
	const char* label = YYGetString(arg, 0);

	Result.kind = VALUE_BOOL;
	Result.val = ImGui::ShowStyleSelector(label);
}

GMFUNC(__imgui_show_font_selector) {
	const char* label = YYGetString(arg, 0);

	ImGui::ShowFontSelector(label);
	Result.kind = VALUE_UNDEFINED;
}

GMFUNC(__imgui_show_user_guide) {
	ImGui::ShowUserGuide();
	Result.kind = VALUE_UNDEFINED;
}

GMFUNC(__imgui_get_version) {
	Result.kind = VALUE_STRING;
	YYCreateString(&Result, ImGui::GetVersion());
}