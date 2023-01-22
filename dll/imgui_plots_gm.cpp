#include "imgui_gm.h"

GMFUNC(__imgui_plot_lines) {
	const char* label = YYGetString(arg, 0);
	const float* values = YYGetArray<float>(arg, 1, YYGetReal(arg, 2));
	int values_count = YYGetReal(arg, 2);
	GMDEFAULT(array_length(values));
	int values_offset = YYGetReal(arg, 3);
	GMDEFAULT(0);
	const char* overlay_text = YYGetString(arg, 4);
	GMDEFAULT("");
	float scale_min = YYGetReal(arg, 5);
	GMDEFAULT(0);
	float scale_max = YYGetReal(arg, 6);
	GMDEFAULT(0);
	double graph_width = YYGetReal(arg, 7);
	GMDEFAULT(0);
	double graph_height = YYGetReal(arg, 8);
	GMDEFAULT(0);

	ImGui::PlotLines(label, values, values_count, values_offset, (overlay_text == "" ? nullptr : overlay_text), scale_min == 0 ? FLT_MAX : scale_min, scale_max == 0 ? FLT_MAX : scale_max, ImVec2(graph_width, graph_height), sizeof(float));
	Result.kind = VALUE_UNDEFINED;
}

GMFUNC(__imgui_plot_histogram) {
	const char* label = YYGetString(arg, 0);
	const float* values = YYGetArray<float>(arg, 1, YYGetReal(arg, 2));
	int values_count = YYGetReal(arg, 2);
	GMDEFAULT(array_length(values));
	int values_offset = YYGetReal(arg, 3);
	GMDEFAULT(0);
	const char* overlay_text = YYGetString(arg, 4);
	GMDEFAULT("");
	float scale_min = YYGetReal(arg, 5);
	GMDEFAULT(0);
	float scale_max = YYGetReal(arg, 6);
	GMDEFAULT(0);
	double graph_width = YYGetReal(arg, 7);
	GMDEFAULT(0);
	double graph_height = YYGetReal(arg, 8);
	GMDEFAULT(0);

	ImGui::PlotHistogram(label, values, values_count, values_offset, (overlay_text == "" ? nullptr : overlay_text), scale_min == 0 ? FLT_MAX : scale_min, scale_max == 0 ? FLT_MAX : scale_max, ImVec2(graph_width, graph_height), sizeof(float));
	Result.kind = VALUE_UNDEFINED;
}

// TODO: using ImPlot would be nice!