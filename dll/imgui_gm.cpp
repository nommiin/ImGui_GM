#include "imgui_gm.h"

GMFUNC(__imguigm_native) {
	GMOVERRIDE(_);

	Result.kind = VALUE_BOOL;
	Result.val = false;
}

GMFUNC(__imguigm_command_buffer) {
	GMOVERRIDE(_);

	Result.kind = VALUE_REAL;
	Result.val = g_CommandBuffer;
}

GMFUNC(__imguigm_font_buffer) {
	GMOVERRIDE(_);

	Result.kind = VALUE_REAL;
	Result.val = g_FontBuffer;
}

GMFUNC(__imguigm_keepalive) {
	GMOVERRIDE(_);

	Result.kind = VALUE_REAL;
	Result.val = g_KeepAlive;
}