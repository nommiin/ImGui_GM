#include "Extension_Interface.h"
#include "YYRValue.h"

#include "imgui.h"
#include "imgui_internal.h"
#include "imgui_impl_gm.h"
#include "imgui_impl_dx11.h"

#include <d3d11.h>

// Configuration
// If true, ImGui_GM will render via native platform APIs (currently only Windows)
#define IMGUIGM_NATIVE true

// Modifiers for brief (see Wrapper.js)
#define GMDEFAULT(...) /**/
#define GMPASSTHROUGH(...) /**/
#define GMHIDDEN(...) /**/
#define GMPREPEND(...) /**/
#define GMAPPEND(...) /**/
#define GMOVERRIDE(...) /**/
#define GMRETURN(...) /**/
#define GMRETURNS(...) /**/
#define GMHINT(...) /**/
#define GMEXPORT __declspec(dllexport)
#define GMFUNC(name) GMEXPORT void name(RValue& Result, CInstance* selfinst, CInstance* otherinst, int argc, RValue* arg)

// Interface
#define ShowError(...) YYError("[ImGui_GM] An error has occured:\n- " __VA_ARGS__)
#define WriteLog(...) DebugConsoleOutput("[ImGui_GM] %s\n", __VA_ARGS__)

// Helpers
static inline ImVec4 GMCOLOR_TO(int col, float alpha) { 
	float r = (float)(col & 0xFF) / 0xFF;
	float g = (float)((col >> 8) & 0xFF) / 0xFF;
	float b = (float)((col >> 16) & 0xFF) / 0xFF;
	return ImVec4(r, g, b, alpha);
}

static inline double GMCOLOR_FROM(ImVec4 col) {
	int r = col.x * 0xFF;
	int g = col.y * 0xFF;
	int b = col.z * 0xFF;
	int alpha = col.w * 0xFF;
	return r | (g << 8) | (b << 16) | (alpha << 24);
}

// Other
#define INPUT_SIZE 4096
extern char g_InputBuf[INPUT_SIZE];

extern int g_KeepAlive;
extern int g_CommandBuffer;
extern int g_FontBuffer;
extern bool g_UpdateFont;

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
static inline ImTextureID GetTexture(int id) {
	if (IMGUIGM_NATIVE) {
		g_pd3dDeviceContext->PSGetShaderResources(0, 1, &g_pView);
		g_pd3dDeviceContext->VSSetShaderResources(0, 1, &g_pView);
		return g_pView;
	}
	return (id != -1 ? (ImTextureID)id : nullptr);
}