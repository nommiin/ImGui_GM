// Version Check
try {
	var _get = static_get;
} catch(e) {
	show_error("ImGui_GM version check failiure, could not find required \"static_get\" function.\nPlease update to a newer runtime that supports this function.", true);	
}
show_debug_message("[ImGui_GM] Successfully passed version check");

// All the silly stuff that's too messy for ImGui.gml
// Used by Color*4 functions, use .Color to get BGR value for GM functions
function ImColor(red, green, blue, alpha=1) constructor {
	/*
		ImColor(c_red);
		ImColor(c_red, 0.5);
		ImColor(255, 255, 255);
		ImColor(128, 255, 255, 0.5);
		ImColor(c_red | (128 << 24)); Alpha is most-significant byte, basically RGBA int
	*/
	a = alpha;
	if (blue != undefined) {
		r = red;
		g = green;
		b = blue;
	} else {
		r = color_get_red(red);
		g = color_get_green(red);
		b = color_get_blue(red);
		
		if (green != undefined) {
			a = green;	
		} else {
			var high = (red >> 24) & 0xFF;
			if (high > 0) {
				a = high / 0xFF;	
			}
		}
	}
	
	static Color = function() {
		return r | (g << 8) | (b << 16);
	}
	
	static Alpha = function() {
		return a;	
	}
}

#macro IMGUI_PAYLOAD_TYPE_COLOR_3F     "_COL3F"    // (GML) int32: Standard type for colors, without alpha. User code may use this type.
#macro IMGUI_PAYLOAD_TYPE_COLOR_4F     "_COL4F"    // (GML) struct: Standard type for colors. User code may use this type.

// Call static_get for the ImGui class to initialize statics, required once so everywhere else can access
with (static_get(new ImGui())) {
	__Mapping = array_create(ImGuiKey.KeysData_SIZE, -1);
	__Mapping[ImGuiKey.None] = vk_nokey;
	__Mapping[ImGuiKey.Enter] = vk_enter;
	__Mapping[ImGuiKey.Escape] = vk_escape;
	__Mapping[ImGuiKey.Space] = vk_space;
	__Mapping[ImGuiKey.Backspace] = vk_backspace;
	__Mapping[ImGuiKey.Tab] = vk_tab;
	__Mapping[ImGuiKey.Pause] = vk_pause;
	__Mapping[ImGuiKey.LeftArrow] = vk_left;
	__Mapping[ImGuiKey.RightArrow] = vk_right;
	__Mapping[ImGuiKey.UpArrow] = vk_up;
	__Mapping[ImGuiKey.DownArrow] = vk_down;
	__Mapping[ImGuiKey.Home] = vk_home;
	__Mapping[ImGuiKey.End] = vk_end;
	__Mapping[ImGuiKey.Delete] = vk_delete;
	__Mapping[ImGuiKey.Insert] = vk_insert;
	__Mapping[ImGuiKey.PageUp] = vk_pageup;
	__Mapping[ImGuiKey.PageDown] = vk_pagedown;
	__Mapping[ImGuiKey.F1] = vk_f1;
	__Mapping[ImGuiKey.F2] = vk_f2;
	__Mapping[ImGuiKey.F3] = vk_f3;
	__Mapping[ImGuiKey.F4] = vk_f4;
	__Mapping[ImGuiKey.F5] = vk_f5;
	__Mapping[ImGuiKey.F6] = vk_f6;
	__Mapping[ImGuiKey.F7] = vk_f7;
	__Mapping[ImGuiKey.F8] = vk_f8;
	__Mapping[ImGuiKey.F9] = vk_f9;
	__Mapping[ImGuiKey.F10] = vk_f10;
	__Mapping[ImGuiKey.F11] = vk_f11;
	__Mapping[ImGuiKey.F12] = vk_f12;
	__Mapping[ImGuiKey.Keypad0] = vk_numpad0;
	__Mapping[ImGuiKey.Keypad1] = vk_numpad1;
	__Mapping[ImGuiKey.Keypad2] = vk_numpad2;
	__Mapping[ImGuiKey.Keypad3] = vk_numpad3;
	__Mapping[ImGuiKey.Keypad4] = vk_numpad4;
	__Mapping[ImGuiKey.Keypad5] = vk_numpad5;
	__Mapping[ImGuiKey.Keypad6] = vk_numpad6;
	__Mapping[ImGuiKey.Keypad7] = vk_numpad7;
	__Mapping[ImGuiKey.Keypad8] = vk_numpad8;
	__Mapping[ImGuiKey.Keypad9] = vk_numpad9;
	__Mapping[ImGuiKey.KeypadDivide] = vk_divide;
	__Mapping[ImGuiKey.KeypadMultiply] = vk_multiply;
	__Mapping[ImGuiKey.KeypadSubtract] = vk_subtract;
	__Mapping[ImGuiKey.KeypadAdd] = vk_add;
	__Mapping[ImGuiKey.KeypadDecimal] = vk_decimal;
	__Mapping[ImGuiKey.LeftShift] = vk_lshift;
	__Mapping[ImGuiKey.LeftCtrl] = vk_lcontrol;
	__Mapping[ImGuiKey.LeftAlt] = vk_lalt;
	__Mapping[ImGuiKey.RightShift] = vk_rshift;
	__Mapping[ImGuiKey.RightCtrl] = vk_rcontrol;
	__Mapping[ImGuiKey.RightAlt] = vk_ralt;
	__Mapping[ImGuiKey.ImGuiKey_1] = ord("1");
	__Mapping[ImGuiKey.ImGuiKey_2] = ord("2");
	__Mapping[ImGuiKey.ImGuiKey_3] = ord("3");
	__Mapping[ImGuiKey.ImGuiKey_4] = ord("4");
	__Mapping[ImGuiKey.ImGuiKey_5] = ord("5");
	__Mapping[ImGuiKey.ImGuiKey_6] = ord("6");
	__Mapping[ImGuiKey.ImGuiKey_7] = ord("7");
	__Mapping[ImGuiKey.ImGuiKey_8] = ord("8");
	__Mapping[ImGuiKey.ImGuiKey_9] = ord("9");
	__Mapping[ImGuiKey.ImGuiKey_0] = ord("0");
	__Mapping[ImGuiKey.A] = ord("A");
	__Mapping[ImGuiKey.B] = ord("B");
	__Mapping[ImGuiKey.C] = ord("C");
	__Mapping[ImGuiKey.D] = ord("D");
	__Mapping[ImGuiKey.E] = ord("E");
	__Mapping[ImGuiKey.F] = ord("F");
	__Mapping[ImGuiKey.G] = ord("G");
	__Mapping[ImGuiKey.H] = ord("H");
	__Mapping[ImGuiKey.I] = ord("I");
	__Mapping[ImGuiKey.J] = ord("J");
	__Mapping[ImGuiKey.K] = ord("K");
	__Mapping[ImGuiKey.L] = ord("L");
	__Mapping[ImGuiKey.M] = ord("M");
	__Mapping[ImGuiKey.N] = ord("N");
	__Mapping[ImGuiKey.O] = ord("O");
	__Mapping[ImGuiKey.P] = ord("P");
	__Mapping[ImGuiKey.Q] = ord("Q");
	__Mapping[ImGuiKey.R] = ord("R");
	__Mapping[ImGuiKey.S] = ord("S");
	__Mapping[ImGuiKey.T] = ord("T");
	__Mapping[ImGuiKey.U] = ord("U");
	__Mapping[ImGuiKey.V] = ord("V");
	__Mapping[ImGuiKey.W] = ord("W");
	__Mapping[ImGuiKey.X] = ord("X");
	__Mapping[ImGuiKey.Y] = ord("Y");
	__Mapping[ImGuiKey.Z] = ord("Z");
	__Cursor[ImGuiMouseCursor.None + 1] = cr_none;
	__Cursor[ImGuiMouseCursor.Arrow + 1] = cr_default;
	__Cursor[ImGuiMouseCursor.TextInput + 1] = cr_beam;
	__Cursor[ImGuiMouseCursor.ResizeAll + 1] = cr_size_all;
	__Cursor[ImGuiMouseCursor.ResizeNS + 1] = cr_size_ns;
	__Cursor[ImGuiMouseCursor.ResizeEW + 1] = cr_size_we;
	__Cursor[ImGuiMouseCursor.ResizeNESW + 1] = cr_size_nesw;
	__Cursor[ImGuiMouseCursor.ResizeNWSE + 1] = cr_size_nwse;
	__Cursor[ImGuiMouseCursor.Hand + 1] = cr_handpoint;
	__Cursor[ImGuiMouseCursor.NotAllowed + 1] = cr_default;
}

/// @section Enums
/*
	Used for encoding multiple returns from various wrappers (ImGui.Begin, ImGui.CollapsingHeader, etc)
	Default is ImGuiReturnFlags.Return for all functions to make wrappers work as close to the library as possible
	
	Return: The return value of the library function
	Pointer: Any reference passed to the library function and modified (this varies per-function; hopefully it all makes sense)
	Both: ^
*/
enum ImGuiReturnMask {
	None = 0,            // Should be unused
	Return = 1 << 0,
	Pointer = 1 << 1,
	Both = ImGuiReturnMask.Return | ImGuiReturnMask.Pointer
}

enum ImGuiTextureType {
	Raw = 0,
	Sprite = 1 << 0,
	Surface = 1 << 1,
	Font = 1 << 2
}

// slightly modified from imgui.h
enum ImGuiKey
{
    // Keyboard
    None = 0,
    Tab = 512,             // == NamedKey_BEGIN
    LeftArrow,
    RightArrow,
    UpArrow,
    DownArrow,
    PageUp,
    PageDown,
    Home,
    End,
    Insert,
    Delete,
    Backspace,
    Space,
    Enter,
    Escape,
    LeftCtrl, LeftShift, LeftAlt, LeftSuper,
    RightCtrl, RightShift, RightAlt, RightSuper,
    Menu,
    ImGuiKey_0, ImGuiKey_1, ImGuiKey_2, ImGuiKey_3, ImGuiKey_4, ImGuiKey_5, ImGuiKey_6, ImGuiKey_7, ImGuiKey_8, ImGuiKey_9,
    A, B, C, D, E, F, G, H, I, J,
    K, L, M, N, O, P, Q, R, S, T,
    U, V, W, X, Y, Z,
    F1, F2, F3, F4, F5, F6,
    F7, F8, F9, F10, F11, F12,
    Apostrophe,        // '
    Comma,             // ,
    Minus,             // -
    Period,            // .
    Slash,             // /
    Semicolon,         // ;
    Equal,             // =
    LeftBracket,       // [
    Backslash,         // \ (this text inhibit multiline comment caused by backslash)
    RightBracket,      // ]
    GraveAccent,       // `
    CapsLock,
    ScrollLock,
    NumLock,
    PrintScreen,
    Pause,
    Keypad0, Keypad1, Keypad2, Keypad3, Keypad4,
    Keypad5, Keypad6, Keypad7, Keypad8, Keypad9,
    KeypadDecimal,
    KeypadDivide,
    KeypadMultiply,
    KeypadSubtract,
    KeypadAdd,
    KeypadEnter,
    KeypadEqual,

    // Gamepad (some of those are analog values, 0.0f to 1.0f)                          // NAVIGATION ACTION
    // (download controller mapping PNG/PSD at http://dearimgui.org/controls_sheets)
    GamepadStart,          // Menu (Xbox)      + (Switch)   Start/Options (PS)
    GamepadBack,           // View (Xbox)      - (Switch)   Share (PS)
    GamepadFaceLeft,       // X (Xbox)         Y (Switch)   Square (PS)        // Tap: Toggle Menu. Hold: Windowing mode (Focus/Move/Resize windows)
    GamepadFaceRight,      // B (Xbox)         A (Switch)   Circle (PS)        // Cancel / Close / Exit
    GamepadFaceUp,         // Y (Xbox)         X (Switch)   Triangle (PS)      // Text Input / On-screen Keyboard
    GamepadFaceDown,       // A (Xbox)         B (Switch)   Cross (PS)         // Activate / Open / Toggle / Tweak
    GamepadDpadLeft,       // D-pad Left                                       // Move / Tweak / Resize Window (in Windowing mode)
    GamepadDpadRight,      // D-pad Right                                      // Move / Tweak / Resize Window (in Windowing mode)
    GamepadDpadUp,         // D-pad Up                                         // Move / Tweak / Resize Window (in Windowing mode)
    GamepadDpadDown,       // D-pad Down                                       // Move / Tweak / Resize Window (in Windowing mode)
    GamepadL1,             // L Bumper (Xbox)  L (Switch)   L1 (PS)            // Tweak Slower / Focus Previous (in Windowing mode)
    GamepadR1,             // R Bumper (Xbox)  R (Switch)   R1 (PS)            // Tweak Faster / Focus Next (in Windowing mode)
    GamepadL2,             // L Trig. (Xbox)   ZL (Switch)  L2 (PS) [Analog]
    GamepadR2,             // R Trig. (Xbox)   ZR (Switch)  R2 (PS) [Analog]
    GamepadL3,             // L Stick (Xbox)   L3 (Switch)  L3 (PS)
    GamepadR3,             // R Stick (Xbox)   R3 (Switch)  R3 (PS)
    GamepadLStickLeft,     // [Analog]                                         // Move Window (in Windowing mode)
    GamepadLStickRight,    // [Analog]                                         // Move Window (in Windowing mode)
    GamepadLStickUp,       // [Analog]                                         // Move Window (in Windowing mode)
    GamepadLStickDown,     // [Analog]                                         // Move Window (in Windowing mode)
    GamepadRStickLeft,     // [Analog]
    GamepadRStickRight,    // [Analog]
    GamepadRStickUp,       // [Analog]
    GamepadRStickDown,     // [Analog]

    // Aliases: Mouse Buttons (auto-submitted from AddMouseButtonEvent() calls)
    // - This is mirroring the data also written to io.MouseDown[], io.MouseWheel, in a format allowing them to be accessed via standard key API.
    MouseLeft, MouseRight, MouseMiddle, MouseX1, MouseX2, MouseWheelX, MouseWheelY,

    // [Internal] Reserved for mod storage
    ReservedForModCtrl, ReservedForModShift, ReservedForModAlt, ReservedForModSuper,
    COUNT,

    // Keyboard Modifiers (explicitly submitted by backend via AddKeyEvent() calls)
    // - This is mirroring the data also written to io.KeyCtrl, io.KeyShift, io.KeyAlt, io.KeySuper, in a format allowing
    //   them to be accessed via standard key API, allowing calls such as IsKeyPressed(), IsKeyReleased(), querying duration etc.
    // - Code polling every key (e.g. an interface to detect a key press for input mapping) might want to ignore those
    //   and prefer using the real keys (e.g. LeftCtrl, RightCtrl instead of ImGuiMod_Ctrl).
    // - In theory the value of keyboard modifiers should be roughly equivalent to a logical or of the equivalent left/right keys.
    //   In practice: it's complicated; mods are often provided from different sources. Keyboard layout, IME, sticky keys and
    //   backends tend to interfere and break that equivalence. The safer decision is to relay that ambiguity down to the end-user...
    ImGuiMod_None                   = 0,
    ImGuiMod_Ctrl                   = 1 << 12, // Ctrl
    ImGuiMod_Shift                  = 1 << 13, // Shift
    ImGuiMod_Alt                    = 1 << 14, // Option/Menu
    ImGuiMod_Super                  = 1 << 15, // Cmd/Super/Windows
    ImGuiMod_Shortcut               = 1 << 11, // Alias for Ctrl (non-macOS) _or_ Super (macOS).
    ImGuiMod_Mask_                  = 0xF800,  // 5-bits

    // [Internal] Prior to 1.87 we required user to fill io.KeysDown[512] using their own native index + the io.KeyMap[] array.
    // We are ditching this method but keeping a legacy path for user code doing e.g. IsKeyPressed(MY_NATIVE_KEY_CODE)
    NamedKey_BEGIN         = 512,
    NamedKey_END           = ImGuiKey.COUNT,
    NamedKey_COUNT         = ImGuiKey.NamedKey_END - ImGuiKey.NamedKey_BEGIN,
    KeysData_SIZE          = ImGuiKey.COUNT,                   // Size of KeysData[]: hold legacy 0..512 keycodes + named keys
    KeysData_OFFSET        = 0,                                // First key stored in io.KeysData[0]. Accesses to io.KeysData[] must use (key - KeysData_OFFSET).
};