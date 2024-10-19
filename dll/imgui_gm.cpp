#include "imgui_gm.h"

GMFUNC(__imguigm_native) {
	GMOVERRIDE(_);

	Result.kind = VALUE_BOOL;
	Result.val = false;
}

GMFUNC(__imguigm_keepalive) {
	GMOVERRIDE(_);

	Result.kind = VALUE_REAL;
	Result.val = g_KeepAlive;
}
