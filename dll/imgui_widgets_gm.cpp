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
	double dir = YYGetReal(arg, 1);
	
	Result.kind = VALUE_BOOL;
	Result.val = ImGui::ArrowButton(str_id, (ImGuiDir)dir);
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
	double* uv = YYGetArray<double>(arg, 6, 8);
	GMHIDDEN();
	GMPASSTHROUGH(sprite_get_uvs(#arg0, #arg1));
	GMOVERRIDE(Image);

	ImGui::ImageWithBg(GetTexture(sprite, subimg, TextureType_Sprite), ImVec2(width * uv[6], height * uv[7]), ImVec2(uv[0], uv[1]), ImVec2(uv[2], uv[3]), ImVec4(), GMCOLOR_TO(color, alpha));
	Result.kind = VALUE_UNDEFINED;
	delete[]uv;
}

GMFUNC(__imgui_image_with_bg) {
	double sprite = YYGetReal(arg, 0);
	double subimg = YYGetReal(arg, 1);
	double bg_color = YYGetReal(arg, 2);
	GMDEFAULT(c_white);
	float bg_alpha = YYGetReal(arg, 3);
	GMDEFAULT(1);
	double color = YYGetReal(arg, 4);
	GMDEFAULT(c_white);
	float alpha = YYGetReal(arg, 5);
	GMDEFAULT(1);
	double width = YYGetReal(arg, 6);
	GMDEFAULT(sprite_get_width(#arg0));
	double height = YYGetReal(arg, 7);
	GMDEFAULT(sprite_get_height(#arg0));
	double* uv = YYGetArray<double>(arg, 8, 8);
	GMHIDDEN();
	GMPASSTHROUGH(sprite_get_uvs(#arg0, #arg1));
	GMOVERRIDE(ImageWithBg);

	ImGui::ImageWithBg(GetTexture(sprite, subimg, TextureType_Sprite), ImVec2(width * uv[6], height * uv[7]), ImVec2(uv[0], uv[1]), ImVec2(uv[2], uv[3]), GMCOLOR_TO(bg_color, bg_alpha), GMCOLOR_TO(color, alpha));
	Result.kind = VALUE_UNDEFINED;
	delete[]uv;
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
	double* uv = YYGetArray<double>(arg, 9, 8);
	GMHIDDEN();
	GMPASSTHROUGH(sprite_get_uvs(#arg1, #arg2));

	Result.kind = VALUE_BOOL;
	Result.val = ImGui::ImageButton(str_id, GetTexture(sprite, subimg, TextureType_Sprite), ImVec2(width * uv[6], height * uv[7]), ImVec2(uv[0], uv[1]), ImVec2(uv[2], uv[3]), GMCOLOR_TO(bg_color, bg_alpha), GMCOLOR_TO(color, alpha));
	delete[]uv;
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
	double* uv = YYGetArray<double>(arg, 5, 8);
	GMHIDDEN();
	GMPASSTHROUGH(texture_get_uvs(_tex));
	GMPREPEND(var _tex = surface_get_texture(#arg0););
	GMOVERRIDE(Surface);

	ImGui::ImageWithBg(GetTexture(surface, 0, TextureType_Surface), ImVec2(width * uv[6], height * uv[7]), ImVec2(uv[0], uv[1]), ImVec2(uv[2], uv[3]), ImVec4(), GMCOLOR_TO(color, alpha));
	Result.kind = VALUE_UNDEFINED;
	delete[] uv;
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

GMFUNC(__imgui_begin_viewport_sidebar) {
	const char* name = YYGetString(arg, 0);
	ImGuiID viewport = YYGetReal(arg, 1);
	double dir = YYGetReal(arg, 2);
	float size = YYGetReal(arg, 3);
	ImGuiWindowFlags window_flags = YYGetInt64(arg, 4);
	GMDEFAULT(ImGuiWindowFlags.None);

	Result.kind = VALUE_BOOL;
	Result.val = ImGui::BeginViewportSideBar(name, (viewport != 0 ? ImGui::FindViewportByID(viewport) : NULL), (ImGuiDir)dir, size, window_flags);
}
