// All the silly stuff that's too messy for ImGui.gml
// Call static_get for the ImGui class to initialize statics, required once so everywhere else can access
var _ = static_get(new ImGui());
_.__Mapping = array_create(ImGuiKey.ImGuiKey_KeysData_SIZE, -1);
_.__Mapping[ImGuiKey.ImGuiKey_None] = vk_nokey;
_.__Mapping[ImGuiKey.ImGuiKey_Enter] = vk_enter;
_.__Mapping[ImGuiKey.ImGuiKey_Escape] = vk_escape;
_.__Mapping[ImGuiKey.ImGuiKey_Space] = vk_space;
_.__Mapping[ImGuiKey.ImGuiKey_Backspace] = vk_backspace;
_.__Mapping[ImGuiKey.ImGuiKey_Tab] = vk_tab;
_.__Mapping[ImGuiKey.ImGuiKey_Pause] = vk_pause;
_.__Mapping[ImGuiKey.ImGuiKey_LeftArrow] = vk_left;
_.__Mapping[ImGuiKey.ImGuiKey_RightArrow] = vk_right;
_.__Mapping[ImGuiKey.ImGuiKey_UpArrow] = vk_up;
_.__Mapping[ImGuiKey.ImGuiKey_DownArrow] = vk_down;
_.__Mapping[ImGuiKey.ImGuiKey_Home] = vk_home;
_.__Mapping[ImGuiKey.ImGuiKey_End] = vk_end;
_.__Mapping[ImGuiKey.ImGuiKey_Delete] = vk_delete;
_.__Mapping[ImGuiKey.ImGuiKey_Insert] = vk_insert;
_.__Mapping[ImGuiKey.ImGuiKey_PageUp] = vk_pageup;
_.__Mapping[ImGuiKey.ImGuiKey_PageDown] = vk_pagedown;
_.__Mapping[ImGuiKey.ImGuiKey_F1] = vk_f1;
_.__Mapping[ImGuiKey.ImGuiKey_F2] = vk_f2;
_.__Mapping[ImGuiKey.ImGuiKey_F3] = vk_f3;
_.__Mapping[ImGuiKey.ImGuiKey_F4] = vk_f4;
_.__Mapping[ImGuiKey.ImGuiKey_F5] = vk_f5;
_.__Mapping[ImGuiKey.ImGuiKey_F6] = vk_f6;
_.__Mapping[ImGuiKey.ImGuiKey_F7] = vk_f7;
_.__Mapping[ImGuiKey.ImGuiKey_F8] = vk_f8;
_.__Mapping[ImGuiKey.ImGuiKey_F9] = vk_f9;
_.__Mapping[ImGuiKey.ImGuiKey_F10] = vk_f10;
_.__Mapping[ImGuiKey.ImGuiKey_F11] = vk_f11;
_.__Mapping[ImGuiKey.ImGuiKey_F12] = vk_f12;
_.__Mapping[ImGuiKey.ImGuiKey_Keypad0] = vk_numpad0;
_.__Mapping[ImGuiKey.ImGuiKey_Keypad1] = vk_numpad1;
_.__Mapping[ImGuiKey.ImGuiKey_Keypad2] = vk_numpad2;
_.__Mapping[ImGuiKey.ImGuiKey_Keypad3] = vk_numpad3;
_.__Mapping[ImGuiKey.ImGuiKey_Keypad4] = vk_numpad4;
_.__Mapping[ImGuiKey.ImGuiKey_Keypad5] = vk_numpad5;
_.__Mapping[ImGuiKey.ImGuiKey_Keypad6] = vk_numpad6;
_.__Mapping[ImGuiKey.ImGuiKey_Keypad7] = vk_numpad7;
_.__Mapping[ImGuiKey.ImGuiKey_Keypad8] = vk_numpad8;
_.__Mapping[ImGuiKey.ImGuiKey_Keypad9] = vk_numpad9;
_.__Mapping[ImGuiKey.ImGuiKey_KeypadDivide] = vk_divide;
_.__Mapping[ImGuiKey.ImGuiKey_KeypadMultiply] = vk_multiply;
_.__Mapping[ImGuiKey.ImGuiKey_KeypadSubtract] = vk_subtract;
_.__Mapping[ImGuiKey.ImGuiKey_KeypadAdd] = vk_add;
_.__Mapping[ImGuiKey.ImGuiKey_KeypadDecimal] = vk_decimal;
_.__Mapping[ImGuiKey.ImGuiKey_LeftShift] = vk_lshift;
_.__Mapping[ImGuiKey.ImGuiKey_LeftCtrl] = vk_lcontrol;
_.__Mapping[ImGuiKey.ImGuiKey_LeftAlt] = vk_lalt;
_.__Mapping[ImGuiKey.ImGuiKey_RightShift] = vk_rshift;
_.__Mapping[ImGuiKey.ImGuiKey_RightCtrl] = vk_rcontrol;
_.__Mapping[ImGuiKey.ImGuiKey_RightAlt] = vk_ralt;
_.__Mapping[ImGuiKey.ImGuiKey_1] = ord("1");
_.__Mapping[ImGuiKey.ImGuiKey_2] = ord("2");
_.__Mapping[ImGuiKey.ImGuiKey_3] = ord("3");
_.__Mapping[ImGuiKey.ImGuiKey_4] = ord("4");
_.__Mapping[ImGuiKey.ImGuiKey_5] = ord("5");
_.__Mapping[ImGuiKey.ImGuiKey_6] = ord("6");
_.__Mapping[ImGuiKey.ImGuiKey_7] = ord("7");
_.__Mapping[ImGuiKey.ImGuiKey_8] = ord("8");
_.__Mapping[ImGuiKey.ImGuiKey_9] = ord("9");
_.__Mapping[ImGuiKey.ImGuiKey_A] = ord("A");
_.__Mapping[ImGuiKey.ImGuiKey_B] = ord("B");
_.__Mapping[ImGuiKey.ImGuiKey_C] = ord("C");
_.__Mapping[ImGuiKey.ImGuiKey_D] = ord("D");
_.__Mapping[ImGuiKey.ImGuiKey_E] = ord("E");
_.__Mapping[ImGuiKey.ImGuiKey_F] = ord("F");
_.__Mapping[ImGuiKey.ImGuiKey_G] = ord("G");
_.__Mapping[ImGuiKey.ImGuiKey_H] = ord("H");
_.__Mapping[ImGuiKey.ImGuiKey_I] = ord("I");
_.__Mapping[ImGuiKey.ImGuiKey_J] = ord("J");
_.__Mapping[ImGuiKey.ImGuiKey_K] = ord("K");
_.__Mapping[ImGuiKey.ImGuiKey_L] = ord("L");
_.__Mapping[ImGuiKey.ImGuiKey_M] = ord("M");
_.__Mapping[ImGuiKey.ImGuiKey_N] = ord("N");
_.__Mapping[ImGuiKey.ImGuiKey_O] = ord("O");
_.__Mapping[ImGuiKey.ImGuiKey_P] = ord("P");
_.__Mapping[ImGuiKey.ImGuiKey_Q] = ord("Q");
_.__Mapping[ImGuiKey.ImGuiKey_R] = ord("R");
_.__Mapping[ImGuiKey.ImGuiKey_S] = ord("S");
_.__Mapping[ImGuiKey.ImGuiKey_T] = ord("T");
_.__Mapping[ImGuiKey.ImGuiKey_U] = ord("U");
_.__Mapping[ImGuiKey.ImGuiKey_V] = ord("V");
_.__Mapping[ImGuiKey.ImGuiKey_W] = ord("W");
_.__Mapping[ImGuiKey.ImGuiKey_X] = ord("X");
_.__Mapping[ImGuiKey.ImGuiKey_Y] = ord("Y");
_.__Mapping[ImGuiKey.ImGuiKey_Z] = ord("Z");

// slightly modified from imgui.h
enum ImGuiKey
{
    // Keyboard
    ImGuiKey_None = 0,
    ImGuiKey_Tab = 512,             // == ImGuiKey_NamedKey_BEGIN
    ImGuiKey_LeftArrow,
    ImGuiKey_RightArrow,
    ImGuiKey_UpArrow,
    ImGuiKey_DownArrow,
    ImGuiKey_PageUp,
    ImGuiKey_PageDown,
    ImGuiKey_Home,
    ImGuiKey_End,
    ImGuiKey_Insert,
    ImGuiKey_Delete,
    ImGuiKey_Backspace,
    ImGuiKey_Space,
    ImGuiKey_Enter,
    ImGuiKey_Escape,
    ImGuiKey_LeftCtrl, ImGuiKey_LeftShift, ImGuiKey_LeftAlt, ImGuiKey_LeftSuper,
    ImGuiKey_RightCtrl, ImGuiKey_RightShift, ImGuiKey_RightAlt, ImGuiKey_RightSuper,
    ImGuiKey_Menu,
    ImGuiKey_0, ImGuiKey_1, ImGuiKey_2, ImGuiKey_3, ImGuiKey_4, ImGuiKey_5, ImGuiKey_6, ImGuiKey_7, ImGuiKey_8, ImGuiKey_9,
    ImGuiKey_A, ImGuiKey_B, ImGuiKey_C, ImGuiKey_D, ImGuiKey_E, ImGuiKey_F, ImGuiKey_G, ImGuiKey_H, ImGuiKey_I, ImGuiKey_J,
    ImGuiKey_K, ImGuiKey_L, ImGuiKey_M, ImGuiKey_N, ImGuiKey_O, ImGuiKey_P, ImGuiKey_Q, ImGuiKey_R, ImGuiKey_S, ImGuiKey_T,
    ImGuiKey_U, ImGuiKey_V, ImGuiKey_W, ImGuiKey_X, ImGuiKey_Y, ImGuiKey_Z,
    ImGuiKey_F1, ImGuiKey_F2, ImGuiKey_F3, ImGuiKey_F4, ImGuiKey_F5, ImGuiKey_F6,
    ImGuiKey_F7, ImGuiKey_F8, ImGuiKey_F9, ImGuiKey_F10, ImGuiKey_F11, ImGuiKey_F12,
    ImGuiKey_Apostrophe,        // '
    ImGuiKey_Comma,             // ,
    ImGuiKey_Minus,             // -
    ImGuiKey_Period,            // .
    ImGuiKey_Slash,             // /
    ImGuiKey_Semicolon,         // ;
    ImGuiKey_Equal,             // =
    ImGuiKey_LeftBracket,       // [
    ImGuiKey_Backslash,         // \ (this text inhibit multiline comment caused by backslash)
    ImGuiKey_RightBracket,      // ]
    ImGuiKey_GraveAccent,       // `
    ImGuiKey_CapsLock,
    ImGuiKey_ScrollLock,
    ImGuiKey_NumLock,
    ImGuiKey_PrintScreen,
    ImGuiKey_Pause,
    ImGuiKey_Keypad0, ImGuiKey_Keypad1, ImGuiKey_Keypad2, ImGuiKey_Keypad3, ImGuiKey_Keypad4,
    ImGuiKey_Keypad5, ImGuiKey_Keypad6, ImGuiKey_Keypad7, ImGuiKey_Keypad8, ImGuiKey_Keypad9,
    ImGuiKey_KeypadDecimal,
    ImGuiKey_KeypadDivide,
    ImGuiKey_KeypadMultiply,
    ImGuiKey_KeypadSubtract,
    ImGuiKey_KeypadAdd,
    ImGuiKey_KeypadEnter,
    ImGuiKey_KeypadEqual,

    // Gamepad (some of those are analog values, 0.0f to 1.0f)                          // NAVIGATION ACTION
    // (download controller mapping PNG/PSD at http://dearimgui.org/controls_sheets)
    ImGuiKey_GamepadStart,          // Menu (Xbox)      + (Switch)   Start/Options (PS)
    ImGuiKey_GamepadBack,           // View (Xbox)      - (Switch)   Share (PS)
    ImGuiKey_GamepadFaceLeft,       // X (Xbox)         Y (Switch)   Square (PS)        // Tap: Toggle Menu. Hold: Windowing mode (Focus/Move/Resize windows)
    ImGuiKey_GamepadFaceRight,      // B (Xbox)         A (Switch)   Circle (PS)        // Cancel / Close / Exit
    ImGuiKey_GamepadFaceUp,         // Y (Xbox)         X (Switch)   Triangle (PS)      // Text Input / On-screen Keyboard
    ImGuiKey_GamepadFaceDown,       // A (Xbox)         B (Switch)   Cross (PS)         // Activate / Open / Toggle / Tweak
    ImGuiKey_GamepadDpadLeft,       // D-pad Left                                       // Move / Tweak / Resize Window (in Windowing mode)
    ImGuiKey_GamepadDpadRight,      // D-pad Right                                      // Move / Tweak / Resize Window (in Windowing mode)
    ImGuiKey_GamepadDpadUp,         // D-pad Up                                         // Move / Tweak / Resize Window (in Windowing mode)
    ImGuiKey_GamepadDpadDown,       // D-pad Down                                       // Move / Tweak / Resize Window (in Windowing mode)
    ImGuiKey_GamepadL1,             // L Bumper (Xbox)  L (Switch)   L1 (PS)            // Tweak Slower / Focus Previous (in Windowing mode)
    ImGuiKey_GamepadR1,             // R Bumper (Xbox)  R (Switch)   R1 (PS)            // Tweak Faster / Focus Next (in Windowing mode)
    ImGuiKey_GamepadL2,             // L Trig. (Xbox)   ZL (Switch)  L2 (PS) [Analog]
    ImGuiKey_GamepadR2,             // R Trig. (Xbox)   ZR (Switch)  R2 (PS) [Analog]
    ImGuiKey_GamepadL3,             // L Stick (Xbox)   L3 (Switch)  L3 (PS)
    ImGuiKey_GamepadR3,             // R Stick (Xbox)   R3 (Switch)  R3 (PS)
    ImGuiKey_GamepadLStickLeft,     // [Analog]                                         // Move Window (in Windowing mode)
    ImGuiKey_GamepadLStickRight,    // [Analog]                                         // Move Window (in Windowing mode)
    ImGuiKey_GamepadLStickUp,       // [Analog]                                         // Move Window (in Windowing mode)
    ImGuiKey_GamepadLStickDown,     // [Analog]                                         // Move Window (in Windowing mode)
    ImGuiKey_GamepadRStickLeft,     // [Analog]
    ImGuiKey_GamepadRStickRight,    // [Analog]
    ImGuiKey_GamepadRStickUp,       // [Analog]
    ImGuiKey_GamepadRStickDown,     // [Analog]

    // Aliases: Mouse Buttons (auto-submitted from AddMouseButtonEvent() calls)
    // - This is mirroring the data also written to io.MouseDown[], io.MouseWheel, in a format allowing them to be accessed via standard key API.
    ImGuiKey_MouseLeft, ImGuiKey_MouseRight, ImGuiKey_MouseMiddle, ImGuiKey_MouseX1, ImGuiKey_MouseX2, ImGuiKey_MouseWheelX, ImGuiKey_MouseWheelY,

    // [Internal] Reserved for mod storage
    ImGuiKey_ReservedForModCtrl, ImGuiKey_ReservedForModShift, ImGuiKey_ReservedForModAlt, ImGuiKey_ReservedForModSuper,
    ImGuiKey_COUNT,

    // Keyboard Modifiers (explicitly submitted by backend via AddKeyEvent() calls)
    // - This is mirroring the data also written to io.KeyCtrl, io.KeyShift, io.KeyAlt, io.KeySuper, in a format allowing
    //   them to be accessed via standard key API, allowing calls such as IsKeyPressed(), IsKeyReleased(), querying duration etc.
    // - Code polling every key (e.g. an interface to detect a key press for input mapping) might want to ignore those
    //   and prefer using the real keys (e.g. ImGuiKey_LeftCtrl, ImGuiKey_RightCtrl instead of ImGuiMod_Ctrl).
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
    ImGuiKey_NamedKey_BEGIN         = 512,
    ImGuiKey_NamedKey_END           = ImGuiKey.ImGuiKey_COUNT,
    ImGuiKey_NamedKey_COUNT         = ImGuiKey.ImGuiKey_NamedKey_END - ImGuiKey.ImGuiKey_NamedKey_BEGIN,
    ImGuiKey_KeysData_SIZE          = ImGuiKey.ImGuiKey_COUNT,                   // Size of KeysData[]: hold legacy 0..512 keycodes + named keys
    ImGuiKey_KeysData_OFFSET        = 0,                                // First key stored in io.KeysData[0]. Accesses to io.KeysData[] must use (key - ImGuiKey_KeysData_OFFSET).
};

enum ImGuiButtonFlags
{
    None                   = 0,
    MouseButtonLeft        = 1 << 0,   // React on left mouse button (default)
    MouseButtonRight       = 1 << 1,   // React on right mouse button
    MouseButtonMiddle      = 1 << 2,   // React on center mouse button

    // [Internal]
    MouseButtonMask       = ImGuiButtonFlags.MouseButtonLeft | ImGuiButtonFlags.MouseButtonRight | ImGuiButtonFlags.MouseButtonMiddle,
    MouseButtonDefault    = ImGuiButtonFlags.MouseButtonLeft,
};

enum ImGuiDir
{
	None    = -1,
	Left    = 0,
	Right   = 1,
	Up      = 2,
	Down    = 3,
	COUNT
};