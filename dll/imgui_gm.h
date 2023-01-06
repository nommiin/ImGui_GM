#include "Extension_Interface.h"
#include "YYRValue.h"

#include "imgui.h"
#include "imgui_internal.h"
#include "imgui_impl_dx11.h"

#include <d3d11.h>

// Modifiers for brief (see Wrapper.js)
#define GMDEFAULT(...) /**/
#define GMPASSTHROUGH(...) /**/
#define GMHIDDEN(...) /**/
#define GMPREPEND(...) /**/
#define GMAPPEND(...) /**/
#define GMOVERRIDE(...) /**/
#define GMRETURN(...) /**/
#define GMHINT(...) /**/
#define GMEXPORT __declspec(dllexport)
#define GMFUNC(name) GMEXPORT void name(RValue& Result, CInstance* selfinst, CInstance* otherinst, int argc, RValue* arg)

// Interface
#define ShowError(...) YYError("[ImGui_GM] An error has occured:\n- " __VA_ARGS__)
#define WriteLog(...) DebugConsoleOutput("[ImGui_GM] %s\n", __VA_ARGS__)

// Helpers
#define GMCOLOR3_TO(col, alpha) ImColor((int)((int)col & 0xFF), (int)(((int)col >> 8) & 0xFF), (int)(((int)col >> 16) & 0xFF), (int)(alpha * 0xFF))
#define GMCOLOR4_TO(col) ImColor((int)((int)col & 0xFF), (int)(((int)col >> 8) & 0xFF), (int)(((int)col >> 16) & 0xFF), (int)(((int)col >> 24) & 0xFF))
#define GMCOLOR_FROM(col) (double)((int)(col[0] * 0xFF) | (int)((int)(col[1] * 0xFF) << 8) | (int)((int)(col[2] * 0xFF) << 16) | (int)((int)(col[3] * 0xFF) << 24))

// Other
#define INPUT_SIZE 4096
extern char g_InputBuf[INPUT_SIZE];

extern RValue g_Copy;
template<typename T> static inline T* YYGetArray(RValue* arg, int ind, int len) {
	RValue* arr = &arg[ind];
	T* val = new T[len];
	for (int i = 0; i < len; i++) {
		GET_RValue(&g_Copy, arr, NULL, i);
		val[i] = g_Copy.val;
	}
	return val;
}
template<typename T> static inline void YYSetArray(RValue* arg, T* arr, int len) {
	for (int i = 0; i < len; i++) {
		g_Copy.kind = VALUE_REAL;
		g_Copy.val = arr[i];
		SET_RValue(arg, &g_Copy, NULL, i);
	}
	return;
}

extern ID3D11Device* g_pd3dDevice;
extern ID3D11DeviceContext* g_pd3dDeviceContext;
extern ID3D11ShaderResourceView* g_pView;

static inline ID3D11ShaderResourceView* GetTexture() {
	g_pd3dDeviceContext->PSGetShaderResources(0, 1, &g_pView);
	g_pd3dDeviceContext->VSSetShaderResources(0, 1, &g_pView);
	return g_pView;
}