#include "imgui_gm.h"

/// <summary>
/// General Widgets
/// </summary>

GMFUNC(__imgui_button) {
	const char* label = YYGetString(arg, 0);
	double width = YYGetReal(arg, 1);
	GMDEFAULT(0);
	double height = YYGetReal(arg, 2);
	GMDEFAULT(0);

	Result.kind = VALUE_BOOL;
	Result.val = ImGui::Button(label, ImVec2(width, height));
}

GMFUNC(__imgui_small_button) {
	const char* label = YYGetString(arg, 0);

	Result.kind = VALUE_BOOL;
	Result.val = ImGui::SmallButton(label);
}

GMFUNC(__imgui_invisible_button) {
	const char* id = YYGetString(arg, 0);
	double width = YYGetReal(arg, 1);
	GMDEFAULT(0);
	double height = YYGetReal(arg, 2);
	GMDEFAULT(0);
	ImGuiButtonFlags flags = YYGetReal(arg, 3);
	GMDEFAULT(ImGuiButtonFlags.None);

	Result.kind = VALUE_BOOL;
	Result.val = ImGui::InvisibleButton(id, ImVec2(width, height), flags);
}

GMFUNC(__imgui_arrow_button) {
	const char* str_id = YYGetString(arg, 0);
	ImGuiDir dir = YYGetInt64(arg, 1);
	
	Result.kind = VALUE_BOOL;
	Result.val = ImGui::ArrowButton(str_id, dir);
}

GMFUNC(__imgui_image) {
	double sprite = YYGetReal(arg, 0);
	double subimg = YYGetReal(arg, 1);
	double color = YYGetReal(arg, 2);
	GMDEFAULT(c_white);
	float alpha = YYGetReal(arg, 3);
	GMDEFAULT(1);
	double width = YYGetReal(arg, 4);
	GMDEFAULT(sprite_get_width(#arg0));
	double height = YYGetReal(arg, 5);
	GMDEFAULT(sprite_get_height(#arg0));
	double* uv = YYGetArray<double>(arg, 6, 4);
	GMHIDDEN();
	GMPASSTHROUGH(sprite_get_uvs(#arg0, #arg1));
	GMPREPEND(texture_set_stage(0, sprite_get_texture(#arg0, #arg1)));

	ImGui::Image(GetTexture(sprite), ImVec2(width, height), ImVec2(uv[0], uv[1]), ImVec2(uv[2], uv[3]), GMCOLOR_TO(color, alpha));
	Result.kind = VALUE_UNDEFINED;
}

GMFUNC(__imgui_image_button) {
	const char* str_id = YYGetString(arg, 0);
	double sprite = YYGetReal(arg, 1);
	double subimg = YYGetReal(arg, 2);
	double color = YYGetReal(arg, 3);
	float alpha = YYGetReal(arg, 4);
	double bg_color = YYGetReal(arg, 5);
	float bg_alpha = YYGetReal(arg, 6);
	double width = YYGetReal(arg, 7);
	GMDEFAULT(sprite_get_width(#arg1));
	double height = YYGetReal(arg, 8);
	GMDEFAULT(sprite_get_height(#arg1));
	double* uv = YYGetArray<double>(arg, 9, 4);
	GMHIDDEN();
	GMPASSTHROUGH(sprite_get_uvs(#arg1, #arg2));
	GMPREPEND(texture_set_stage(0, sprite_get_texture(#arg1, #arg2)));

	Result.kind = VALUE_BOOL;
	Result.val = ImGui::ImageButton(str_id, GetTexture(sprite), ImVec2(width, height), ImVec2(uv[0], uv[1]), ImVec2(uv[2], uv[3]), GMCOLOR_TO(bg_color, bg_alpha), GMCOLOR_TO(color, alpha));
}

GMFUNC(__imgui_surface) {
	double surface = YYGetReal(arg, 0);
	double color = YYGetReal(arg, 1);
	GMDEFAULT(c_white);
	float alpha = YYGetReal(arg, 2);
	GMDEFAULT(1);
	double width = YYGetReal(arg, 3);
	GMDEFAULT(surface_get_width(#arg0));
	double height = YYGetReal(arg, 4);
	GMDEFAULT(surface_get_height(#arg0));
	double* uv = YYGetArray<double>(arg, 5, 4);
	GMHIDDEN();
	GMPASSTHROUGH(texture_get_uvs(_tex));
	GMPREPEND(var _tex = surface_get_texture(#arg0); texture_set_stage(0, _tex));
	GMOVERRIDE(Surface);

	ImGui::Image(GetTexture(-1), ImVec2(width, height), ImVec2(uv[0], uv[1]), ImVec2(uv[2], uv[3]), GMCOLOR_TO(color, alpha));
	Result.kind = VALUE_UNDEFINED;
}

GMFUNC(__imgui_checkbox) {
	const char* label = YYGetString(arg, 0);
	bool checked = YYGetBool(arg, 1);

	ImGui::Checkbox(label, &checked);
	Result.kind = VALUE_BOOL;
	Result.val = checked;
}

GMFUNC(__imgui_checkbox_flags) {
	const char* label = YYGetString(arg, 0);
	int64 flags = YYGetInt64(arg, 1);
	int64 flags_value = YYGetInt64(arg, 2);

	ImGui::CheckboxFlags(label, &flags, flags_value);
	Result.kind = VALUE_INT64;
	Result.val = flags;
}

GMFUNC(__imgui_radio_button) {
	const char* label = YYGetString(arg, 0);
	bool active = YYGetBool(arg, 1);

	Result.kind = VALUE_BOOL;
	Result.val = ImGui::RadioButton(label, active);
}

GMFUNC(__imgui_progressbar) {
	double frac = YYGetReal(arg, 0);
	double width = YYGetReal(arg, 1);
	GMDEFAULT(0);
	double height = YYGetReal(arg, 2);
	GMDEFAULT(0);
	const char* overlay = YYGetString(arg, 3);
	GMDEFAULT("");
	
	ImGui::ProgressBar(frac, ImVec2(width, height), (overlay == "" ? NULL : overlay));
	Result.kind = VALUE_UNDEFINED;
}

GMFUNC(__imgui_bullet) {
	ImGui::Bullet();
	Result.kind = VALUE_UNDEFINED;
}