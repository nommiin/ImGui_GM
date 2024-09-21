#include "../imgui_gm.h"

GMFUNC(__imgui_plot_lines) {
	const char* label = YYGetString(arg, 0);
	const float* values = YYGetArray<float>(arg, 1, YYGetReal(arg, 8));
	int values_offset = YYGetReal(arg, 2);
	GMDEFAULT(0);
	const char* overlay_text = YYGetString(arg, 3);
	GMDEFAULT("");
	float scale_min = YYGetReal(arg, 4);
	GMDEFAULT(0);
	float scale_max = YYGetReal(arg, 5);
	GMDEFAULT(0);
	double graph_width = YYGetReal(arg, 6);
	GMDEFAULT(0);
	double graph_height = YYGetReal(arg, 7);
	GMDEFAULT(0);
	double values_count = YYGetReal(arg, 8);
	GMHIDDEN();
	GMPASSTHROUGH(array_length(#arg1));

	ImGui::PlotLines(label, values, values_count, values_offset, (overlay_text == "" ? nullptr : overlay_text), scale_min == 0 ? FLT_MAX : scale_min, scale_max == 0 ? FLT_MAX : scale_max, ImVec2(graph_width, graph_height), sizeof(float));
	Result.kind = VALUE_UNDEFINED;
	delete[]values;
}

GMFUNC(__imgui_plot_histogram) {
	const char* label = YYGetString(arg, 0);
	const float* values = YYGetArray<float>(arg, 1, YYGetReal(arg, 8));
	int values_offset = YYGetReal(arg, 2);
	GMDEFAULT(0);
	const char* overlay_text = YYGetString(arg, 3);
	GMDEFAULT("");
	float scale_min = YYGetReal(arg, 4);
	GMDEFAULT(0);
	float scale_max = YYGetReal(arg, 5);
	GMDEFAULT(0);
	double graph_width = YYGetReal(arg, 6);
	GMDEFAULT(0);
	double graph_height = YYGetReal(arg, 7);
	GMDEFAULT(0);
	double values_count = YYGetReal(arg, 8);
	GMHIDDEN();
	GMPASSTHROUGH(array_length(#arg1));

	ImGui::PlotHistogram(label, values, values_count, values_offset, (overlay_text == "" ? nullptr : overlay_text), scale_min == 0 ? FLT_MAX : scale_min, scale_max == 0 ? FLT_MAX : scale_max, ImVec2(graph_width, graph_height), sizeof(float));
	Result.kind = VALUE_UNDEFINED;
	delete[]values;
}

// TODO: using ImPlot would be nice!