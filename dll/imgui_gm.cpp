#include "imgui_gm.h"

GMFUNC(__imguigm_native) {
	GMOVERRIDE(_);

	Result.kind = VALUE_BOOL;
	Result.val = IMGUIGM_NATIVE;
}

GMFUNC(__imguigm_vertex_buffer) {
	GMOVERRIDE(_);

	Result.kind = VALUE_REAL;
	Result.val = g_VertexBuffer;
}

GMFUNC(__imguigm_index_buffer) {
	GMOVERRIDE(_);

	Result.kind = VALUE_REAL;
	Result.val = g_IndexBuffer;
}


GMFUNC(__imguigm_command_buffer) {
	GMOVERRIDE(_);

	Result.kind = VALUE_REAL;
	Result.val = g_CommandBuffer;
}

GMFUNC(__imguigm_keepalive) {
	GMOVERRIDE(_);

	Result.kind = VALUE_REAL;
	Result.val = g_KeepAlive;
}