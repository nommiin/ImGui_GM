// All the silly stuff that's too messy for ImGui.gml
// Used by Color*4 functions, use .Color to get BGR value for GM functions
function ImColor(red, green, blue, alpha=1) constructor {
	a = alpha;
	if (blue != undefined) {
		r = red;
		g = green;
		b = blue;
	} else {
		r = color_get_red(red);
		g = color_get_green(red);
		b = color_get_blue(red);
		
		/*
		TODO: this dont work
		var msb = (red >> 24);
		if (msb != 0) {
			a = msb / 0xFF;
		} else */{
			if (green != undefined) {
				a = green;	
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

// Call static_get for the ImGui class to initialize statics, required once so everywhere else can access
var _ = static_get(new ImGui());
_.__Mapping = array_create(ImGuiKey.KeysData_SIZE, -1);
_.__Mapping[ImGuiKey.None] = vk_nokey;
_.__Mapping[ImGuiKey.Enter] = vk_enter;
_.__Mapping[ImGuiKey.Escape] = vk_escape;
_.__Mapping[ImGuiKey.Space] = vk_space;
_.__Mapping[ImGuiKey.Backspace] = vk_backspace;
_.__Mapping[ImGuiKey.Tab] = vk_tab;
_.__Mapping[ImGuiKey.Pause] = vk_pause;
_.__Mapping[ImGuiKey.LeftArrow] = vk_left;
_.__Mapping[ImGuiKey.RightArrow] = vk_right;
_.__Mapping[ImGuiKey.UpArrow] = vk_up;
_.__Mapping[ImGuiKey.DownArrow] = vk_down;
_.__Mapping[ImGuiKey.Home] = vk_home;
_.__Mapping[ImGuiKey.End] = vk_end;
_.__Mapping[ImGuiKey.Delete] = vk_delete;
_.__Mapping[ImGuiKey.Insert] = vk_insert;
_.__Mapping[ImGuiKey.PageUp] = vk_pageup;
_.__Mapping[ImGuiKey.PageDown] = vk_pagedown;
_.__Mapping[ImGuiKey.F1] = vk_f1;
_.__Mapping[ImGuiKey.F2] = vk_f2;
_.__Mapping[ImGuiKey.F3] = vk_f3;
_.__Mapping[ImGuiKey.F4] = vk_f4;
_.__Mapping[ImGuiKey.F5] = vk_f5;
_.__Mapping[ImGuiKey.F6] = vk_f6;
_.__Mapping[ImGuiKey.F7] = vk_f7;
_.__Mapping[ImGuiKey.F8] = vk_f8;
_.__Mapping[ImGuiKey.F9] = vk_f9;
_.__Mapping[ImGuiKey.F10] = vk_f10;
_.__Mapping[ImGuiKey.F11] = vk_f11;
_.__Mapping[ImGuiKey.F12] = vk_f12;
_.__Mapping[ImGuiKey.Keypad0] = vk_numpad0;
_.__Mapping[ImGuiKey.Keypad1] = vk_numpad1;
_.__Mapping[ImGuiKey.Keypad2] = vk_numpad2;
_.__Mapping[ImGuiKey.Keypad3] = vk_numpad3;
_.__Mapping[ImGuiKey.Keypad4] = vk_numpad4;
_.__Mapping[ImGuiKey.Keypad5] = vk_numpad5;
_.__Mapping[ImGuiKey.Keypad6] = vk_numpad6;
_.__Mapping[ImGuiKey.Keypad7] = vk_numpad7;
_.__Mapping[ImGuiKey.Keypad8] = vk_numpad8;
_.__Mapping[ImGuiKey.Keypad9] = vk_numpad9;
_.__Mapping[ImGuiKey.KeypadDivide] = vk_divide;
_.__Mapping[ImGuiKey.KeypadMultiply] = vk_multiply;
_.__Mapping[ImGuiKey.KeypadSubtract] = vk_subtract;
_.__Mapping[ImGuiKey.KeypadAdd] = vk_add;
_.__Mapping[ImGuiKey.KeypadDecimal] = vk_decimal;
_.__Mapping[ImGuiKey.LeftShift] = vk_lshift;
_.__Mapping[ImGuiKey.LeftCtrl] = vk_lcontrol;
_.__Mapping[ImGuiKey.LeftAlt] = vk_lalt;
_.__Mapping[ImGuiKey.RightShift] = vk_rshift;
_.__Mapping[ImGuiKey.RightCtrl] = vk_rcontrol;
_.__Mapping[ImGuiKey.RightAlt] = vk_ralt;
_.__Mapping[ImGuiKey.ImGuiKey_1] = ord("1");
_.__Mapping[ImGuiKey.ImGuiKey_2] = ord("2");
_.__Mapping[ImGuiKey.ImGuiKey_3] = ord("3");
_.__Mapping[ImGuiKey.ImGuiKey_4] = ord("4");
_.__Mapping[ImGuiKey.ImGuiKey_5] = ord("5");
_.__Mapping[ImGuiKey.ImGuiKey_6] = ord("6");
_.__Mapping[ImGuiKey.ImGuiKey_7] = ord("7");
_.__Mapping[ImGuiKey.ImGuiKey_8] = ord("8");
_.__Mapping[ImGuiKey.ImGuiKey_9] = ord("9");
_.__Mapping[ImGuiKey.ImGuiKey_0] = ord("0");
_.__Mapping[ImGuiKey.A] = ord("A");
_.__Mapping[ImGuiKey.B] = ord("B");
_.__Mapping[ImGuiKey.C] = ord("C");
_.__Mapping[ImGuiKey.D] = ord("D");
_.__Mapping[ImGuiKey.E] = ord("E");
_.__Mapping[ImGuiKey.F] = ord("F");
_.__Mapping[ImGuiKey.G] = ord("G");
_.__Mapping[ImGuiKey.H] = ord("H");
_.__Mapping[ImGuiKey.I] = ord("I");
_.__Mapping[ImGuiKey.J] = ord("J");
_.__Mapping[ImGuiKey.K] = ord("K");
_.__Mapping[ImGuiKey.L] = ord("L");
_.__Mapping[ImGuiKey.M] = ord("M");
_.__Mapping[ImGuiKey.N] = ord("N");
_.__Mapping[ImGuiKey.O] = ord("O");
_.__Mapping[ImGuiKey.P] = ord("P");
_.__Mapping[ImGuiKey.Q] = ord("Q");
_.__Mapping[ImGuiKey.R] = ord("R");
_.__Mapping[ImGuiKey.S] = ord("S");
_.__Mapping[ImGuiKey.T] = ord("T");
_.__Mapping[ImGuiKey.U] = ord("U");
_.__Mapping[ImGuiKey.V] = ord("V");
_.__Mapping[ImGuiKey.W] = ord("W");
_.__Mapping[ImGuiKey.X] = ord("X");
_.__Mapping[ImGuiKey.Y] = ord("Y");
_.__Mapping[ImGuiKey.Z] = ord("Z");
_.__Cursor[ImGuiMouseCursor.None + 1] = cr_none;
_.__Cursor[ImGuiMouseCursor.Arrow + 1] = cr_default;
_.__Cursor[ImGuiMouseCursor.TextInput + 1] = cr_beam;
_.__Cursor[ImGuiMouseCursor.ResizeAll + 1] = cr_size_all;
_.__Cursor[ImGuiMouseCursor.ResizeNS + 1] = cr_size_ns;
_.__Cursor[ImGuiMouseCursor.ResizeEW + 1] = cr_size_we;
_.__Cursor[ImGuiMouseCursor.ResizeNESW + 1] = cr_size_nesw;
_.__Cursor[ImGuiMouseCursor.ResizeNWSE + 1] = cr_size_nwse;
_.__Cursor[ImGuiMouseCursor.Hand + 1] = cr_handpoint;
_.__Cursor[ImGuiMouseCursor.NotAllowed + 1] = cr_default;

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