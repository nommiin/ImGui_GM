#pragma once
#include <stddef.h>
#include "Extension_Interface.h"
#include "YYRValue.h"

#include "imgui/imgui.h"
#include "imgui/imgui_internal.h"
#include "imgui_impl_gm.h"
#include "imgui/imgui_impl_dx11.h"
#include "imgui/imgui_impl_win32.h"
#include <d3d11.h>
#include <vector>

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
#ifdef OS_Windows
#define GMEXPORT __declspec(dllexport)
#elif OS_Linux
#define GMEXPORT __attribute__((visibility("default")))
#elif OS_Mac
#define GMEXPORT extern "C"
#endif

#define GMFUNC(name) GMEXPORT void name(RValue& Result, CInstance* selfinst, CInstance* otherinst, int argc, RValue* arg)

// Interface
#define ShowError(...) YYError("[ImGui_GM] An error has occured:\n- %s\n", __VA_ARGS__)
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

template <typename T, typename U>
static void AssignIfDefined(RValue* rvalue, T& target, U convertFunc) {
	if (rvalue != nullptr) {
		if (rvalue->kind != VALUE_UNDEFINED) {
			target = convertFunc(rvalue);
		}
    }
}
template <typename T, typename U, typename V>
static void AssignIfDefinedElse(RValue* rvalue, T& target, U convertFunc, V defaultVal) {
	if (rvalue != nullptr) {
		if (rvalue->kind != VALUE_UNDEFINED) {
			target = convertFunc(rvalue);
		}
		else {
			target = defaultVal;
		}
    }
}
static ImGuiID RConvertToImGuiID(RValue* rvalue) {
    return static_cast<ImGuiID>(rvalue->val);
}
static ImGuiViewportFlags RConvertToImGuiViewportFlags(RValue* rvalue) {
    return static_cast<ImGuiViewportFlags>(rvalue->asInt64());
}
static ImGuiTabItemFlags RConvertToImGuiTabItemFlags(RValue* rvalue) {
    return static_cast<ImGuiTabItemFlags>(rvalue->asInt64());
}
static ImGuiDockNodeFlags RConvertToImGuiDockNodeFlags(RValue* rvalue) {
    return static_cast<ImGuiDockNodeFlags>(rvalue->asInt64());
}
static ImGuiConfigFlags RConvertToImGuiConfigFlags(RValue* rvalue) {
    return static_cast<ImGuiConfigFlags>(rvalue->asInt64());
}
static bool RConvertToBool(RValue* rvalue) {
	return rvalue->asBool();
}
static int RConvertToReal(RValue* rvalue) {
	return rvalue->asReal();
}
static int RConvertToInt64(RValue* rvalue) {
	return rvalue->asInt64();
}

// Classes
static std::vector<ImGuiSelectionBasicStorage*> g_vImGuiSelectionBasicStorages;

// Other
#define INPUT_SIZE 4096
extern char g_InputBuf[INPUT_SIZE];

extern int g_KeepAlive;

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

enum TextureType : char {
	TextureType_Raw = 0,
	TextureType_Sprite = 1 << 0,
	TextureType_Surface = 1 << 1,
	TextureType_Font = 1 << 2
};

typedef int ImGuiExtFlags;

enum ImGuiExtFlags_ {
	ImGuiExtFlags_None = 0,
	ImGuiExtFlags_RENDERER_GM = 1 << 0,
	ImGuiExtFlags_IMPL_GM = 1 << 1,
	ImGuiExtFlags_IMPL_DX11 = 1 << 2,
	ImGuiExtFlags_IMPL_WIN32 = 1 << 3,
	ImGuiExtFlags_GM = ImGuiExtFlags_RENDERER_GM | ImGuiExtFlags_IMPL_GM,
};

extern ImGuiExtFlags g_ImGuiExtFlags;
extern ID3D11Device* g_pd3dDevice;
extern ID3D11DeviceContext* g_pd3dDeviceContext;
extern ID3D11ShaderResourceView* g_pView;

inline ImTextureID GetTexture(int id, int subimg, TextureType type) {
	if (g_ImGuiExtFlags & ImGuiExtFlags_RENDERER_GM) {
		return (ImTextureID)(((((uintptr_t)subimg << 8) | (uintptr_t )id) << 4) | (uintptr_t)type);
	}
	g_pd3dDeviceContext->PSGetShaderResources(0, 1, &g_pView);
	g_pd3dDeviceContext->VSSetShaderResources(0, 1, &g_pView);
	return g_pView;
}