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
#macro IMGUIGM_BUFFER_SIZE             1024 * 8    // size of draw command & font buffers (they're grow buffers, this is just the initial size)

/// @section Enums
/// These are manually imported and modified enums, for automatic enum exporting see the enums section of ImGui.gml
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