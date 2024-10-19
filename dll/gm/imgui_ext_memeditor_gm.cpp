#include "../imgui_gm.h"
#include "imgui_memory_editor.h"

static MemoryEditor s_Editor;
GMFUNC(__imgui_memory_editor_window) {
	const char* title = YYGetString(arg, 0);
	int buffer = YYGetReal(arg, 1);
	double offset = YYGetReal(arg, 2);
	GMDEFAULT(0);
	double size = YYGetReal(arg, 3);
	GMDEFAULT(buffer_get_size(#arg1));
	GMOVERRIDE(MemoryEditorShowWindow);

	s_Editor.DrawWindow(title, BufferGet(BufferGetFromGML(buffer)), size, offset);
	Result.kind = VALUE_UNDEFINED;
}

GMFUNC(__imgui_memory_editor_contents) {
	int buffer = YYGetReal(arg, 0);
	double offset = YYGetReal(arg, 1);
	GMDEFAULT(0);
	double size = YYGetReal(arg, 2);
	GMDEFAULT(buffer_get_size(#arg0));
	GMOVERRIDE(MemoryEditorDrawContents);

	s_Editor.DrawContents(BufferGet(BufferGetFromGML(buffer)), size, offset);
	Result.kind = VALUE_UNDEFINED;
}