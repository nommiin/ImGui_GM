#include "imgui_gm.h"
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

	float alpha = YYGetReal(arg, 6);
	GMDEFAULT(1);

	double thickness = YYGetReal(arg, 7);
	GMDEFAULT(1);

	GMOVERRIDE(DrawListAddLine);

	list->AddLine(ImVec2(x1, y1), ImVec2(x2, y2), col | (int(alpha*255.0)<<24), thickness);
	Result.kind = VALUE_UNDEFINED;
}

GMFUNC(__imgui_drawlist_add_rect) {
	ImDrawList* list = (ImDrawList*)YYGetPtr(arg, 0);
	double x1 = YYGetReal(arg, 1);
	double y1 = YYGetReal(arg, 2);
	double x2 = YYGetReal(arg, 3);
	double y2 = YYGetReal(arg, 4);
	int col = YYGetReal(arg, 5);
	
	float alpha = YYGetReal(arg, 6);
	GMDEFAULT(1);

	double rounding = YYGetReal(arg, 7);
	GMDEFAULT(0);

	double thickness = YYGetReal(arg, 8);
	GMDEFAULT(1);

	ImDrawFlags flags = YYGetInt64(arg, 9);
	GMDEFAULT(ImDrawFlags.None);
	GMOVERRIDE(DrawListAddRect);

	list->AddRect(ImVec2(x1, y1), ImVec2(x2, y2), col | (int(alpha*255.0)<<24), rounding, thickness, flags);
	Result.kind = VALUE_UNDEFINED;
}

GMFUNC(__imgui_drawlist_add_rect_filled) {
	ImDrawList* list = (ImDrawList*)YYGetPtr(arg, 0);
	double x1 = YYGetReal(arg, 1);
	double y1 = YYGetReal(arg, 2);
	double x2 = YYGetReal(arg, 3);
	double y2 = YYGetReal(arg, 4);
	int col = YYGetReal(arg, 5);

	float alpha = YYGetReal(arg, 6);
	GMDEFAULT(1);

	double rounding = YYGetReal(arg, 7);
	GMDEFAULT(0);

	ImDrawFlags flags = YYGetInt64(arg, 8);
	GMDEFAULT(ImDrawFlags.None);
	GMOVERRIDE(DrawListAddRectFilled);

	list->AddRectFilled(ImVec2(x1, y1), ImVec2(x2, y2), col | (int(alpha*255.0)<<24), rounding, flags);
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

	float alpha = YYGetReal(arg, 9);
	GMDEFAULT(1);

	GMOVERRIDE(DrawListAddRectFilledMultiColor);

	list->AddRectFilledMultiColor(ImVec2(x1, y1), ImVec2(x2, y2), col1 | (int(alpha*255.0)<<24), col2 | (int(alpha*255.0)<<24), col3 | (int(alpha*255.0)<<24), col4 | (int(alpha*255.0)<<24));
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

	float alpha = YYGetReal(arg, 10);
	GMDEFAULT(1);

	double thickness = YYGetReal(arg, 11);
	GMDEFAULT(1);
	
	GMOVERRIDE(DrawListAddQuad);

	list->AddQuad(ImVec2(x1, y1), ImVec2(x2, y2), ImVec2(x3, y3), ImVec2(x4, y4), col | (int(alpha*255.0)<<24), thickness);
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

	float alpha = YYGetReal(arg, 10);
	GMDEFAULT(1);

	GMOVERRIDE(DrawListAddQuadFilled);

	list->AddQuadFilled(ImVec2(x1, y1), ImVec2(x2, y2), ImVec2(x3, y3), ImVec2(x4, y4), col | (int(alpha*255.0)<<24));
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

	float alpha = YYGetReal(arg, 8);
	GMDEFAULT(1);

	double thickness = YYGetReal(arg, 9);
	GMDEFAULT(1);
	GMOVERRIDE(DrawListAddTriangle);

	list->AddTriangle(ImVec2(x1, y1), ImVec2(x2, y2), ImVec2(x3, y3), col | (int(alpha*255.0)<<24), thickness);
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

	float alpha = YYGetReal(arg, 8);
	GMDEFAULT(1);

	GMOVERRIDE(DrawListAddTriangleFilled);

	list->AddTriangleFilled(ImVec2(x1, y1), ImVec2(x2, y2), ImVec2(x3, y3), col | (int(alpha*255.0)<<24));
	Result.kind = VALUE_UNDEFINED;
}

GMFUNC(__imgui_drawlist_add_circle) {
	ImDrawList* list = (ImDrawList*)YYGetPtr(arg, 0);
	double x = YYGetReal(arg, 1);
	double y = YYGetReal(arg, 2);
	double radius = YYGetReal(arg, 3);
	int col = YYGetReal(arg, 4);

	float alpha = YYGetReal(arg, 5);
	GMDEFAULT(1);

	int num_segments = YYGetReal(arg, 6);
	GMDEFAULT(0);

	double thickness = YYGetReal(arg, 7);
	GMDEFAULT(1);
	GMOVERRIDE(DrawListAddCircle);

	list->AddCircle(ImVec2(x, y), radius, col | (int(alpha*255.0)<<24), num_segments, thickness);
	Result.kind = VALUE_UNDEFINED;
}

GMFUNC(__imgui_drawlist_add_circle_filled) {
	ImDrawList* list = (ImDrawList*)YYGetPtr(arg, 0);
	double x = YYGetReal(arg, 1);
	double y = YYGetReal(arg, 2);
	double radius = YYGetReal(arg, 3);
	int col = YYGetReal(arg, 4);

	float alpha = YYGetReal(arg, 5);
	GMDEFAULT(1);

	int num_segments = YYGetReal(arg, 6);
	GMDEFAULT(0);
	GMOVERRIDE(DrawListAddCircleFilled);

	list->AddCircleFilled(ImVec2(x, y), radius, col | (int(alpha*255.0)<<24), num_segments);
	Result.kind = VALUE_UNDEFINED;
}

GMFUNC(__imgui_drawlist_add_ngon) {
	ImDrawList* list = (ImDrawList*)YYGetPtr(arg, 0);
	double x = YYGetReal(arg, 1);
	double y = YYGetReal(arg, 2);
	double radius = YYGetReal(arg, 3);
	int col = YYGetReal(arg, 4);

	float alpha = YYGetReal(arg, 5);
	GMDEFAULT(1);

	int num_segments = YYGetReal(arg, 6);
	GMDEFAULT(0);

	double thickness = YYGetReal(arg, 7);
	GMDEFAULT(1);
	GMOVERRIDE(DrawListAddNgon);

	list->AddNgon(ImVec2(x, y), radius, col | (int(alpha*255.0)<<24), num_segments, thickness);
	Result.kind = VALUE_UNDEFINED;
}

GMFUNC(__imgui_drawlist_add_ngon_filled) {
	ImDrawList* list = (ImDrawList*)YYGetPtr(arg, 0);
	double x = YYGetReal(arg, 1);
	double y = YYGetReal(arg, 2);
	double radius = YYGetReal(arg, 3);
	int col = YYGetReal(arg, 4);

	float alpha = YYGetReal(arg, 5);
	GMDEFAULT(1);

	int num_segments = YYGetReal(arg, 6);
	GMDEFAULT(0);
	GMOVERRIDE(DrawListAddNgonFilled);

	list->AddNgonFilled(ImVec2(x, y), radius, col | (int(alpha*255.0)<<24), num_segments);
	Result.kind = VALUE_UNDEFINED;
}

GMFUNC(__imgui_drawlist_add_text) {
	ImDrawList* list = (ImDrawList*)YYGetPtr(arg, 0);
	double x = YYGetReal(arg, 1);
	double y = YYGetReal(arg, 2);
	const char* text = YYGetString(arg, 3);
	int col = YYGetReal(arg, 4);

	float alpha = YYGetReal(arg, 5);
	GMDEFAULT(1);

	GMOVERRIDE(DrawListAddText);

	list->AddText(ImVec2(x, y), col | (int(alpha*255.0)<<24), text, NULL);
	Result.kind = VALUE_UNDEFINED;
}

GMFUNC(__imgui_drawlist_add_text_font) {
	ImDrawList* list = (ImDrawList*)YYGetPtr(arg, 0);
	double x = YYGetReal(arg, 1);
	double y = YYGetReal(arg, 2);
	const char* text = YYGetString(arg, 3);
	ImFont* font = (ImFont*)YYGetPtr(arg, 4);
	double font_size = YYGetReal(arg, 5);
	int col = YYGetReal(arg, 6);

	float alpha = YYGetReal(arg, 7);
	GMDEFAULT(1);

	double wrap_width = YYGetReal(arg, 8);
	GMDEFAULT(0);

	GMOVERRIDE(DrawListAddTextFont);

	// TODO: support cpu_fine_clip_rect?
	list->AddText(font, font_size, ImVec2(x, y), col | (int(alpha*255.0)<<24), text, NULL, wrap_width);
	Result.kind = VALUE_UNDEFINED;
}

GMFUNC(__imgui_drawlist_add_polyline) {
	ImDrawList* list = (ImDrawList*)YYGetPtr(arg, 0);
	RValue* positions = &arg[1];
	GMHINT(Array<Real>);
	int col = YYGetReal(arg, 2);

	float alpha = YYGetReal(arg, 3);
	GMDEFAULT(1);

	double thickness = YYGetReal(arg, 4);
	GMDEFAULT(1);

	ImDrawFlags flags = YYGetInt64(arg, 5);
	GMDEFAULT(ImDrawFlags.None);
	GMHINT(Enum.ImDrawFlags);

	double num_points = YYGetReal(arg, 6);
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

	list->AddPolyline(p.Data, p.Size, col | (int(alpha*255.0)<<24), thickness, flags);
	Result.kind = VALUE_UNDEFINED;
}

GMFUNC(__imgui_drawlist_add_convex_poly_filled) {
	ImDrawList* list = (ImDrawList*)YYGetPtr(arg, 0);
	RValue* positions = &arg[1];
	GMHINT(Array<Real>);
	int col = YYGetReal(arg, 2);

	float alpha = YYGetReal(arg, 3);
	GMDEFAULT(1);

	double num_points = YYGetReal(arg, 4);
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
	list->AddConvexPolyFilled(p.Data, p.Size, col | (int(alpha*255.0)<<24));
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

	float alpha = YYGetReal(arg, 10);
	GMDEFAULT(1);

	double thickness = YYGetReal(arg, 11);
	GMDEFAULT(1);

	double num_segments = YYGetReal(arg, 12);
	GMDEFAULT(0);
	GMOVERRIDE(DrawListAddBezierCubic);

	list->AddBezierCubic(ImVec2(x1, y1), ImVec2(x2, y2), ImVec2(x3, y3), ImVec2(x4, y4), col | (int(alpha*255.0)<<24), thickness, num_segments);
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

	float alpha = YYGetReal(arg, 8);
	GMDEFAULT(1);

	double thickness = YYGetReal(arg, 9);
	GMDEFAULT(1);

	double num_segments = YYGetReal(arg, 10);
	GMDEFAULT(0);
	GMOVERRIDE(DrawListAddBezierQuadratic);

	list->AddBezierQuadratic(ImVec2(x1, y1), ImVec2(x2, y2), ImVec2(x3, y3), col | (int(alpha*255.0)<<24), thickness, num_segments);
	Result.kind = VALUE_UNDEFINED;
}

GMFUNC(__imgui_drawlist_path_fill_convex) {
	ImDrawList* list = (ImDrawList*)YYGetPtr(arg, 0);
	int col = YYGetReal(arg, 1);

	float alpha = YYGetReal(arg, 2);
	GMDEFAULT(1);

	GMOVERRIDE(DrawListPathFillConvex);

	list->PathFillConvex(col | (int(alpha*255.0)<<24));
	Result.kind = VALUE_UNDEFINED;
}

GMFUNC(__imgui_drawlist_path_stroke) {
	ImDrawList* list = (ImDrawList*)YYGetPtr(arg, 0);
	int col = YYGetReal(arg, 1);

	float alpha = YYGetReal(arg, 2);
	GMDEFAULT(1);

	double thickness = YYGetReal(arg, 3);
	GMDEFAULT(1);

	ImDrawFlags flags = YYGetInt64(arg, 4);
	GMDEFAULT(ImDrawFlags.None);
	GMOVERRIDE(DrawListPathStroke);

	list->PathStroke(col | (int(alpha*255.0)<<24), thickness, flags);
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

	float alpha = YYGetReal(arg, 8);
	GMDEFAULT(1);

	double* uv = YYGetArray<double>(arg, 9, 4);
	GMHIDDEN();
	GMPASSTHROUGH(sprite_get_uvs(#arg1, #arg2));
	GMOVERRIDE(DrawListAddImage);

	list->AddImage(GetTexture(sprite, subimg, TextureType_Sprite), ImVec2(x1, y1), ImVec2(x2, y2), ImVec2(uv[0], uv[1]), ImVec2(uv[2], uv[3]), col | (int(alpha*255.0)<<24));
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
	double rounding = YYGetReal(arg, 7);

	int col = YYGetReal(arg, 8);
	GMDEFAULT(c_white);

	float alpha = YYGetReal(arg, 9);
	GMDEFAULT(1);

	ImDrawFlags flags = YYGetInt64(arg, 10);
	GMDEFAULT(ImDrawFlags.None);
	GMHINT(Enum.ImDrawFlags);

	double* uv = YYGetArray<double>(arg, 11, 4);
	GMHIDDEN();
	GMPASSTHROUGH(sprite_get_uvs(#arg1, #arg2));
	GMOVERRIDE(DrawListAddImageRounded);

	list->AddImageRounded(GetTexture(sprite, subimg, TextureType_Sprite), ImVec2(x1, y1), ImVec2(x2, y2), ImVec2(uv[0], uv[1]), ImVec2(uv[2], uv[3]), col | (int(alpha*255.0)<<24), rounding, flags);
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

GMFUNC(__imgui_drawlist_push_texture) {
	ImDrawList* list = (ImDrawList*)YYGetPtr(arg, 0);
	double sprite = YYGetReal(arg, 1);
	double subimg = YYGetReal(arg, 2);
	GMOVERRIDE(DrawListPushTexture);

	list->PushTexture(GetTexture(sprite, subimg, TextureType_Sprite));
	Result.kind = VALUE_UNDEFINED;
}

GMFUNC(__imgui_drawlist_pop_texture) {
	ImDrawList* list = (ImDrawList*)YYGetPtr(arg, 0);
	GMOVERRIDE(DrawListPopTexture);

	list->PopTexture();
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