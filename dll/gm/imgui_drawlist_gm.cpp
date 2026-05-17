#include "../imgui_gm.h"
#include <vector>

GMFUNC(__imgui_get_background_drawlist) {
	RValue* viewport = &arg[0];
	GMDEFAULT(undefined);
	GMHINT(Pointer);

	Result.kind = VALUE_PTR;
	if (viewport->kind == VALUE_UNDEFINED) {
		Result.ptr = ImGui::GetBackgroundDrawList();
		return;
	}
	Result.ptr = ImGui::GetBackgroundDrawList((ImGuiViewport*)viewport->ptr);
	return;
}

GMFUNC(__imgui_get_foreground_drawlist) {
	RValue* viewport = &arg[0];
	GMDEFAULT(undefined);
	GMHINT(Pointer);

	Result.kind = VALUE_PTR;
	if (viewport->kind == VALUE_UNDEFINED) {
		Result.ptr = ImGui::GetForegroundDrawList();
		return;
	}
	Result.ptr = ImGui::GetForegroundDrawList((ImGuiViewport*)viewport->ptr);
	return;
}

GMFUNC(__imgui_get_window_drawlist) {
	Result.kind = VALUE_PTR;
	Result.ptr = ImGui::GetWindowDrawList();
}

GMFUNC(__imgui_drawlist_add_line) {
	ImDrawList* list = (ImDrawList*)YYGetPtr(arg, 0);
	double x1 = YYGetReal(arg, 1);
	double y1 = YYGetReal(arg, 2);
	double x2 = YYGetReal(arg, 3);
	double y2 = YYGetReal(arg, 4);
	int col = YYGetReal(arg, 5);
	double thickness = YYGetReal(arg, 6);
	GMDEFAULT(1);
	GMOVERRIDE(DrawListAddLine);

	list->AddLine(ImVec2(x1, y1), ImVec2(x2, y2), col | (0xFF << 24), thickness);
	Result.kind = VALUE_UNDEFINED;
}

GMFUNC(__imgui_drawlist_add_rect) {
	ImDrawList* list = (ImDrawList*)YYGetPtr(arg, 0);
	double x1 = YYGetReal(arg, 1);
	double y1 = YYGetReal(arg, 2);
	double x2 = YYGetReal(arg, 3);
	double y2 = YYGetReal(arg, 4);
	int col = YYGetReal(arg, 5);
	double rounding = YYGetReal(arg, 6);
	GMDEFAULT(0);
	ImDrawFlags flags = YYGetInt64(arg, 7);
	GMDEFAULT(ImDrawFlags.None);
	double thickness = YYGetReal(arg, 8);
	GMDEFAULT(1);
	GMOVERRIDE(DrawListAddRect);

	list->AddRect(ImVec2(x1, y1), ImVec2(x2, y2), col | (0xFF << 24), rounding, flags, thickness);
	Result.kind = VALUE_UNDEFINED;
}

GMFUNC(__imgui_drawlist_add_rect_filled) {
	ImDrawList* list = (ImDrawList*)YYGetPtr(arg, 0);
	double x1 = YYGetReal(arg, 1);
	double y1 = YYGetReal(arg, 2);
	double x2 = YYGetReal(arg, 3);
	double y2 = YYGetReal(arg, 4);
	int col = YYGetReal(arg, 5);
	double rounding = YYGetReal(arg, 6);
	GMDEFAULT(0);
	ImDrawFlags flags = YYGetInt64(arg, 7);
	GMDEFAULT(ImDrawFlags.None);
	GMOVERRIDE(DrawListAddRectFilled);

	list->AddRectFilled(ImVec2(x1, y1), ImVec2(x2, y2), col | (0xFF << 24), rounding, flags);
	Result.kind = VALUE_UNDEFINED;
}

GMFUNC(__imgui_drawlist_add_rect_filled_multicolor) {
	ImDrawList* list = (ImDrawList*)YYGetPtr(arg, 0);
	double x1 = YYGetReal(arg, 1);
	double y1 = YYGetReal(arg, 2);
	double x2 = YYGetReal(arg, 3);
	double y2 = YYGetReal(arg, 4);
	int col1 = YYGetReal(arg, 5);
	int col2 = YYGetReal(arg, 6);
	int col3 = YYGetReal(arg, 7);
	int col4 = YYGetReal(arg, 8);
	GMOVERRIDE(DrawListAddRectFilledMultiColor);

	list->AddRectFilledMultiColor(ImVec2(x1, y1), ImVec2(x2, y2), col1 | (0xFF << 24), col2 | (0xFF << 24), col3 | (0xFF << 24), col4 | (0xFF << 24));
	Result.kind = VALUE_UNDEFINED;
}

GMFUNC(__imgui_drawlist_add_quad) {
	ImDrawList* list = (ImDrawList*)YYGetPtr(arg, 0);
	double x1 = YYGetReal(arg, 1);
	double y1 = YYGetReal(arg, 2);
	double x2 = YYGetReal(arg, 3);
	double y2 = YYGetReal(arg, 4);
	double x3 = YYGetReal(arg, 5);
	double y3 = YYGetReal(arg, 6);
	double x4 = YYGetReal(arg, 7);
	double y4 = YYGetReal(arg, 8);
	int col = YYGetReal(arg, 9);
	double thickness = YYGetReal(arg, 10);
	GMDEFAULT(1);
	GMOVERRIDE(DrawListAddQuad);

	list->AddQuad(ImVec2(x1, y1), ImVec2(x2, y2), ImVec2(x3, y3), ImVec2(x4, y4), col | (0xFF << 24), thickness);
	Result.kind = VALUE_UNDEFINED;
}

GMFUNC(__imgui_drawlist_add_quad_filled) {
	ImDrawList* list = (ImDrawList*)YYGetPtr(arg, 0);
	double x1 = YYGetReal(arg, 1);
	double y1 = YYGetReal(arg, 2);
	double x2 = YYGetReal(arg, 3);
	double y2 = YYGetReal(arg, 4);
	double x3 = YYGetReal(arg, 5);
	double y3 = YYGetReal(arg, 6);
	double x4 = YYGetReal(arg, 7);
	double y4 = YYGetReal(arg, 8);
	int col = YYGetReal(arg, 9);
	GMOVERRIDE(DrawListAddQuadFilled);

	list->AddQuadFilled(ImVec2(x1, y1), ImVec2(x2, y2), ImVec2(x3, y3), ImVec2(x4, y4), col | (0xFF << 24));
	Result.kind = VALUE_UNDEFINED;
}

GMFUNC(__imgui_drawlist_add_triangle) {
	ImDrawList* list = (ImDrawList*)YYGetPtr(arg, 0);
	double x1 = YYGetReal(arg, 1);
	double y1 = YYGetReal(arg, 2);
	double x2 = YYGetReal(arg, 3);
	double y2 = YYGetReal(arg, 4);
	double x3 = YYGetReal(arg, 5);
	double y3 = YYGetReal(arg, 6);
	int col = YYGetReal(arg, 7);
	double thickness = YYGetReal(arg, 8);
	GMDEFAULT(1);
	GMOVERRIDE(DrawListAddTriangle);

	list->AddTriangle(ImVec2(x1, y1), ImVec2(x2, y2), ImVec2(x3, y3), col | (0xFF << 24), thickness);
	Result.kind = VALUE_UNDEFINED;
}

GMFUNC(__imgui_drawlist_add_triangle_filled) {
	ImDrawList* list = (ImDrawList*)YYGetPtr(arg, 0);
	double x1 = YYGetReal(arg, 1);
	double y1 = YYGetReal(arg, 2);
	double x2 = YYGetReal(arg, 3);
	double y2 = YYGetReal(arg, 4);
	double x3 = YYGetReal(arg, 5);
	double y3 = YYGetReal(arg, 6);
	int col = YYGetReal(arg, 7);
	GMOVERRIDE(DrawListAddTriangleFilled);

	list->AddTriangleFilled(ImVec2(x1, y1), ImVec2(x2, y2), ImVec2(x3, y3), col | (0xFF << 24));
	Result.kind = VALUE_UNDEFINED;
}

GMFUNC(__imgui_drawlist_add_circle) {
	ImDrawList* list = (ImDrawList*)YYGetPtr(arg, 0);
	double x = YYGetReal(arg, 1);
	double y = YYGetReal(arg, 2);
	double radius = YYGetReal(arg, 3);
	int col = YYGetReal(arg, 4);
	int num_segments = YYGetReal(arg, 5);
	GMDEFAULT(0);
	double thickness = YYGetReal(arg, 6);
	GMDEFAULT(1);
	GMOVERRIDE(DrawListAddCircle);

	list->AddCircle(ImVec2(x, y), radius, col | (0xFF << 24), num_segments, thickness);
	Result.kind = VALUE_UNDEFINED;
}

GMFUNC(__imgui_drawlist_add_circle_filled) {
	ImDrawList* list = (ImDrawList*)YYGetPtr(arg, 0);
	double x = YYGetReal(arg, 1);
	double y = YYGetReal(arg, 2);
	double radius = YYGetReal(arg, 3);
	int col = YYGetReal(arg, 4);
	int num_segments = YYGetReal(arg, 5);
	GMDEFAULT(0);
	GMOVERRIDE(DrawListAddCircleFilled);

	list->AddCircleFilled(ImVec2(x, y), radius, col | (0xFF << 24), num_segments);
	Result.kind = VALUE_UNDEFINED;
}

GMFUNC(__imgui_drawlist_add_ngon) {
	ImDrawList* list = (ImDrawList*)YYGetPtr(arg, 0);
	double x = YYGetReal(arg, 1);
	double y = YYGetReal(arg, 2);
	double radius = YYGetReal(arg, 3);
	int col = YYGetReal(arg, 4);
	int num_segments = YYGetReal(arg, 5);
	GMDEFAULT(0);
	double thickness = YYGetReal(arg, 6);
	GMDEFAULT(1);
	GMOVERRIDE(DrawListAddNgon);

	list->AddNgon(ImVec2(x, y), radius, col | (0xFF << 24), num_segments, thickness);
	Result.kind = VALUE_UNDEFINED;
}

GMFUNC(__imgui_drawlist_add_ngon_filled) {
	ImDrawList* list = (ImDrawList*)YYGetPtr(arg, 0);
	double x = YYGetReal(arg, 1);
	double y = YYGetReal(arg, 2);
	double radius = YYGetReal(arg, 3);
	int col = YYGetReal(arg, 4);
	int num_segments = YYGetReal(arg, 5);
	GMDEFAULT(0);
	GMOVERRIDE(DrawListAddNgonFilled);

	list->AddNgonFilled(ImVec2(x, y), radius, col | (0xFF << 24), num_segments);
	Result.kind = VALUE_UNDEFINED;
}

GMFUNC(__imgui_drawlist_add_text) {
	ImDrawList* list = (ImDrawList*)YYGetPtr(arg, 0);
	double x = YYGetReal(arg, 1);
	double y = YYGetReal(arg, 2);
	const char* text = YYGetString(arg, 3);
	int col = YYGetReal(arg, 4);
	GMOVERRIDE(DrawListAddText);

	list->AddText(ImVec2(x, y), col | (0xFF << 24), text, NULL);
	Result.kind = VALUE_UNDEFINED;
}

GMFUNC(__imgui_drawlist_add_text_font) {
	ImDrawList* list = (ImDrawList*)YYGetPtr(arg, 0);
	double x = YYGetReal(arg, 1);
	double y = YYGetReal(arg, 2);
	const char* text = YYGetString(arg, 3);
	int col = YYGetReal(arg, 4);
	ImFont* font = (ImFont*)YYGetPtr(arg, 5);
	double font_size = YYGetReal(arg, 6);
	double wrap_width = YYGetReal(arg, 7);
	GMDEFAULT(0);
	GMOVERRIDE(DrawListAddTextFont);

	// TODO: support cpu_fine_clip_rect?
	list->AddText(font, font_size, ImVec2(x, y), col | (0xFF << 24), text, NULL, wrap_width);
	Result.kind = VALUE_UNDEFINED;
}

GMFUNC(__imgui_drawlist_add_polyline) {
	ImDrawList* list = (ImDrawList*)YYGetPtr(arg, 0);
	RValue* positions = &arg[1];
	GMHINT(Array<Real>);
	int col = YYGetReal(arg, 2);
	ImDrawFlags flags = YYGetInt64(arg, 3);
	GMHINT(Enum.ImDrawFlags);
	double thickness = YYGetReal(arg, 4);
	double num_points = YYGetReal(arg, 5);
	GMHIDDEN();
	GMPASSTHROUGH(array_length(#arg1));
	GMOVERRIDE(DrawListAddPolyline);

	ImVector<ImVec2> p;
	for (int i = 0; i < num_points; i += 2) {
		GET_RValue(&g_Copy, positions, NULL, i);
		double x = g_Copy.val;
		GET_RValue(&g_Copy, positions, NULL, i + 1);
		double y = g_Copy.val;
		p.push_back(ImVec2(x, y));
	}

	list->AddPolyline(p.Data, p.Size, col | (0xFF << 24), flags, thickness);
	Result.kind = VALUE_UNDEFINED;
}

GMFUNC(__imgui_drawlist_add_convex_poly_filled) {
	ImDrawList* list = (ImDrawList*)YYGetPtr(arg, 0);
	RValue* positions = &arg[1];
	GMHINT(Array<Real>);
	int col = YYGetReal(arg, 2);
	double num_points = YYGetReal(arg, 3);
	GMHIDDEN();
	GMPASSTHROUGH(array_length(#arg1));
	GMOVERRIDE(DrawListAddConvexPolyFilled);

	ImVector<ImVec2> p;
	for (int i = 0; i < num_points; i += 2) {
		GET_RValue(&g_Copy, positions, NULL, i);
		double x = g_Copy.val;
		GET_RValue(&g_Copy, positions, NULL, i + 1);
		double y = g_Copy.val;
		p.push_back(ImVec2(x, y));
	}
	list->AddConvexPolyFilled(p.Data, p.Size, col | (0xFF << 24));
	Result.kind = VALUE_UNDEFINED;
}

GMFUNC(__imgui_drawlist_add_bezier_cubic) {
	ImDrawList* list = (ImDrawList*)YYGetPtr(arg, 0);
	double x1 = YYGetReal(arg, 1);
	double y1 = YYGetReal(arg, 2);
	double x2 = YYGetReal(arg, 3);
	double y2 = YYGetReal(arg, 4);
	double x3 = YYGetReal(arg, 5);
	double y3 = YYGetReal(arg, 6);
	double x4 = YYGetReal(arg, 7);
	double y4 = YYGetReal(arg, 8);
	int col = YYGetReal(arg, 9);
	double thickness = YYGetReal(arg, 10);
	double num_segments = YYGetReal(arg, 11);
	GMDEFAULT(0);
	GMOVERRIDE(DrawListAddBezierCubic);

	list->AddBezierCubic(ImVec2(x1, y1), ImVec2(x2, y2), ImVec2(x3, y3), ImVec2(x4, y4), col | (0xFF << 24), thickness, num_segments);
	Result.kind = VALUE_UNDEFINED;
}

GMFUNC(__imgui_drawlist_add_bezier_quadratic) {
	ImDrawList* list = (ImDrawList*)YYGetPtr(arg, 0);
	double x1 = YYGetReal(arg, 1);
	double y1 = YYGetReal(arg, 2);
	double x2 = YYGetReal(arg, 3);
	double y2 = YYGetReal(arg, 4);
	double x3 = YYGetReal(arg, 5);
	double y3 = YYGetReal(arg, 6);
	int col = YYGetReal(arg, 7);
	double thickness = YYGetReal(arg, 8);
	double num_segments = YYGetReal(arg, 9);
	GMDEFAULT(0);
	GMOVERRIDE(DrawListAddBezierQuadratic);

	list->AddBezierQuadratic(ImVec2(x1, y1), ImVec2(x2, y2), ImVec2(x3, y3), col | (0xFF << 24), thickness, num_segments);
	Result.kind = VALUE_UNDEFINED;
}

GMFUNC(__imgui_drawlist_path_fill_convex) {
	ImDrawList* list = (ImDrawList*)YYGetPtr(arg, 0);
	int col = YYGetReal(arg, 1);
	GMOVERRIDE(DrawListPathFillConvex);

	list->PathFillConvex(col | (0xFF << 24));
	Result.kind = VALUE_UNDEFINED;
}

GMFUNC(__imgui_drawlist_path_stroke) {
	ImDrawList* list = (ImDrawList*)YYGetPtr(arg, 0);
	int col = YYGetReal(arg, 1);
	ImDrawFlags flags = YYGetInt64(arg, 2);
	GMDEFAULT(ImDrawFlags.None);
	double thickness = YYGetReal(arg, 3);
	GMDEFAULT(1);
	GMOVERRIDE(DrawListPathStroke);

	list->PathStroke(col | (0xFF << 24), flags, thickness);
	Result.kind = VALUE_UNDEFINED;
}

GMFUNC(__imgui_drawlist_path_clear) {
	ImDrawList* list = (ImDrawList*)YYGetPtr(arg, 0);
	GMOVERRIDE(DrawListPathClear);

	list->PathClear();
	Result.kind = VALUE_UNDEFINED;
}

GMFUNC(__imgui_drawlist_path_line_to) {
	ImDrawList* list = (ImDrawList*)YYGetPtr(arg, 0);
	double x = YYGetReal(arg, 1);
	double y = YYGetReal(arg, 2);
	GMOVERRIDE(DrawListPathLineTo);

	list->PathLineTo(ImVec2(x, y));
	Result.kind = VALUE_UNDEFINED;
}

GMFUNC(__imgui_drawlist_path_line_to_merge_duplicate) {
	ImDrawList* list = (ImDrawList*)YYGetPtr(arg, 0);
	double x = YYGetReal(arg, 1);
	double y = YYGetReal(arg, 2);
	GMOVERRIDE(DrawListPathLineToMergeDuplicate);

	list->PathLineToMergeDuplicate(ImVec2(x, y));
	Result.kind = VALUE_UNDEFINED;
}

GMFUNC(__imgui_drawlist_path_arc_to) {
	ImDrawList* list = (ImDrawList*)YYGetPtr(arg, 0);
	double x = YYGetReal(arg, 1);
	double y = YYGetReal(arg, 2);
	double radius = YYGetReal(arg, 3);
	double a_min = YYGetReal(arg, 4);
	double a_max = YYGetReal(arg, 5);
	double num_segments = YYGetReal(arg, 6);
	GMDEFAULT(0);
	GMOVERRIDE(DrawListPathArcTo);

	list->PathArcTo(ImVec2(x, y), radius, a_min, a_max, num_segments);
	Result.kind = VALUE_UNDEFINED;
}

GMFUNC(__imgui_drawlist_path_arc_to_fast) {
	ImDrawList* list = (ImDrawList*)YYGetPtr(arg, 0);
	double x = YYGetReal(arg, 1);
	double y = YYGetReal(arg, 2);
	double radius = YYGetReal(arg, 3);
	double a_min_of_12 = YYGetReal(arg, 4);
	double a_max_of_12 = YYGetReal(arg, 5);
	GMOVERRIDE(DrawListPathArcToFast);

	list->PathArcToFast(ImVec2(x, y), radius, a_min_of_12, a_max_of_12);
	Result.kind = VALUE_UNDEFINED;
}

GMFUNC(__imgui_drawlist_path_bezier_cubic_curve_to) {
	ImDrawList* list = (ImDrawList*)YYGetPtr(arg, 0);
	double x2 = YYGetReal(arg, 1);
	double y2 = YYGetReal(arg, 2);
	double x3 = YYGetReal(arg, 3);
	double y3 = YYGetReal(arg, 4);
	double x4 = YYGetReal(arg, 5);
	double y4 = YYGetReal(arg, 6);
	double num_segments = YYGetReal(arg, 7);
	GMDEFAULT(0);
	GMOVERRIDE(DrawListPathBezierCubicCurveTo);

	list->PathBezierCubicCurveTo(ImVec2(x2, y2), ImVec2(x3, y3), ImVec2(x4, y4), num_segments);
	Result.kind = VALUE_UNDEFINED;
}

GMFUNC(__imgui_drawlist_path_bezier_quadratic_curve_to) {
	ImDrawList* list = (ImDrawList*)YYGetPtr(arg, 0);
	double x2 = YYGetReal(arg, 1);
	double y2 = YYGetReal(arg, 2);
	double x3 = YYGetReal(arg, 3);
	double y3 = YYGetReal(arg, 4);
	double num_segments = YYGetReal(arg, 5);
	GMDEFAULT(0);
	GMOVERRIDE(DrawListPathBezierQuadraticCurveTo);

	list->PathBezierQuadraticCurveTo(ImVec2(x2, y2), ImVec2(x3, y3), num_segments);
	Result.kind = VALUE_UNDEFINED;
}

GMFUNC(__imgui_drawlist_path_rect) {
	ImDrawList* list = (ImDrawList*)YYGetPtr(arg, 0);
	double x1 = YYGetReal(arg, 1);
	double y1 = YYGetReal(arg, 2);
	double x2 = YYGetReal(arg, 3);
	double y2 = YYGetReal(arg, 4);
	double rounding = YYGetReal(arg, 5);
	GMDEFAULT(0);
	ImDrawFlags flags = YYGetInt64(arg, 6);
	GMDEFAULT(ImDrawFlags.None);
	GMOVERRIDE(DrawListPathRect);

	list->PathRect(ImVec2(x1, y1), ImVec2(x2, y2), rounding, flags);
	Result.kind = VALUE_UNDEFINED;
}

GMFUNC(__imgui_drawlist_add_image) {
	ImDrawList* list = (ImDrawList*)YYGetPtr(arg, 0);
	double sprite = YYGetReal(arg, 1);
	double subimg = YYGetReal(arg, 2);
	double x1 = YYGetReal(arg, 3);
	double y1 = YYGetReal(arg, 4);
	double x2 = YYGetReal(arg, 5);
	double y2 = YYGetReal(arg, 6);
	int col = YYGetReal(arg, 7);
	GMDEFAULT(c_white);
	double* uv = YYGetArray<double>(arg, 8, 4);
	GMHIDDEN();
	GMPASSTHROUGH(sprite_get_uvs(#arg1, #arg2));
	GMPREPEND("if (!(ImGui.__ExtFlags & ImGuiExtFlags.RENDERER_GM)) texture_set_stage(0, sprite_get_texture(#arg1, #arg2)); ");
	GMOVERRIDE(DrawListAddImage);

	list->AddImage(GetTexture(sprite, subimg, TextureType_Sprite), ImVec2(x1, y1), ImVec2(x2, y2), ImVec2(uv[0], uv[1]), ImVec2(uv[2], uv[3]), col | (0xFF << 24));
	Result.kind = VALUE_UNDEFINED;
	delete[]uv;
}

// TODO: AddImageQuad

GMFUNC(__imgui_drawlist_add_image_rounded) {
	ImDrawList* list = (ImDrawList*)YYGetPtr(arg, 0);
	double sprite = YYGetReal(arg, 1);
	double subimg = YYGetReal(arg, 2);
	double x1 = YYGetReal(arg, 3);
	double y1 = YYGetReal(arg, 4);
	double x2 = YYGetReal(arg, 5);
	double y2 = YYGetReal(arg, 6);
	int col = YYGetReal(arg, 7);
	double rounding = YYGetReal(arg, 8);
	ImDrawFlags flags = YYGetInt64(arg, 9);
	double* uv = YYGetArray<double>(arg, 10, 4);
	GMHIDDEN();
	GMPASSTHROUGH(sprite_get_uvs(#arg1, #arg2));
	GMPREPEND("if (!(ImGui.__ExtFlags & ImGuiExtFlags.RENDERER_GM)) texture_set_stage(0, sprite_get_texture(#arg1, #arg2)); ");
	GMOVERRIDE(DrawListAddImageRounded);

	list->AddImageRounded(GetTexture(sprite, subimg, TextureType_Sprite), ImVec2(x1, y1), ImVec2(x2, y2), ImVec2(uv[0], uv[1]), ImVec2(uv[2], uv[3]), col | (0xFF << 24), rounding, flags);
	Result.kind = VALUE_UNDEFINED;
	delete[]uv;
}

GMFUNC(__imgui_drawlist_push_clip_rect) {
	ImDrawList* list = (ImDrawList*)YYGetPtr(arg, 0);
	double clip_min_x = YYGetReal(arg, 1);
	double clip_min_y = YYGetReal(arg, 2);
	double clip_max_x = YYGetReal(arg, 3);
	double clip_max_y = YYGetReal(arg, 4);
	bool intersect_with_current_clip_rect = YYGetBool(arg, 5);
	GMOVERRIDE(DrawListPushClipRect);

	list->PushClipRect(ImVec2(clip_min_x, clip_min_y), ImVec2(clip_max_x, clip_max_y), intersect_with_current_clip_rect);
	Result.kind = VALUE_UNDEFINED;
}

GMFUNC(__imgui_drawlist_push_clip_rect_fullscreen) {
	ImDrawList* list = (ImDrawList*)YYGetPtr(arg, 0);

	list->PushClipRectFullScreen();
	Result.kind = VALUE_UNDEFINED;
}

GMFUNC(__imgui_drawlist_pop_clip_rect) {
	ImDrawList* list = (ImDrawList*)YYGetPtr(arg, 0);
	GMOVERRIDE(DrawListPopClipRect);

	list->PopClipRect();
	Result.kind = VALUE_UNDEFINED;
}

GMFUNC(__imgui_drawlist_push_textureid) {
	ImDrawList* list = (ImDrawList*)YYGetPtr(arg, 0);
	double sprite = YYGetReal(arg, 1);
	double subimg = YYGetReal(arg, 2);
	GMPREPEND("if (!(ImGui.__ExtFlags & ImGuiExtFlags.RENDERER_GM)) texture_set_stage(0, sprite_get_texture(#arg1, #arg2)); ");
	GMOVERRIDE(DrawListPushTextureID);

	list->PushTextureID(GetTexture(sprite, subimg, TextureType_Sprite));
	Result.kind = VALUE_UNDEFINED;
}

GMFUNC(__imgui_drawlist_pop_textureid) {
	ImDrawList* list = (ImDrawList*)YYGetPtr(arg, 0);
	GMOVERRIDE(DrawListPopTextureID);

	list->PopTextureID();
	Result.kind = VALUE_UNDEFINED;
}

GMFUNC(__imgui_drawlist_flags_get) {
	ImDrawList* list = (ImDrawList*)YYGetPtr(arg, 0);
	GMOVERRIDE(DrawListFlagsGet);
	
	Result.kind = VALUE_INT64;
	Result.val = list->Flags;
}

GMFUNC(__imgui_drawlist_flags_set) {
	ImDrawList* list = (ImDrawList*)YYGetPtr(arg, 0);
	ImDrawListFlags flags = YYGetInt64(arg, 1);
	GMOVERRIDE(DrawListFlagsSet);

	list->Flags = flags;
	Result.kind = VALUE_UNDEFINED;
}

GMFUNC(__imgui_drawlist_flag_toggle) {
	ImDrawList* list = (ImDrawList*)YYGetPtr(arg, 0);
	ImDrawListFlags flag = YYGetInt64(arg, 1);
	GMOVERRIDE(DrawListFlagToggle);

	list->Flags ^= flag;
	Result.kind = VALUE_BOOL;
	Result.val = list->Flags & flag;
}