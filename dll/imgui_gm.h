// Modifiers for brief
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

static RValue s_Copy;
template<typename T> static inline T* YYGetArray(RValue* arg, int ind, int len) {
	RValue* arr = &arg[ind];
	T* val = new T[len];
	for (int i = 0; i < len; i++) {
		GET_RValue(&s_Copy, arr, NULL, i);
		val[i] = s_Copy.val;
	}
	return val;
}
template<typename T> static inline void YYSetArray(RValue* arg, T* arr, int len) {
	for (int i = 0; i < len; i++) {
		s_Copy.kind = VALUE_REAL;
		s_Copy.val = arr[i];
		SET_RValue(arg, &s_Copy, NULL, i);
	}
	return;
}