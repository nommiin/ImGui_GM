// All the silly stuff that's too messy for ImGui.gml
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

enum ImGuiComboFlags
{
    None                    = 0,
    PopupAlignLeft          = 1 << 0,   // Align the popup toward the left by default
    HeightSmall             = 1 << 1,   // Max ~4 items visible. Tip: If you want your combo popup to be a specific size you can use SetNextWindowSizeConstraints() prior to calling BeginCombo()
    HeightRegular           = 1 << 2,   // Max ~8 items visible (default)
    HeightLarge             = 1 << 3,   // Max ~20 items visible
    HeightLargest           = 1 << 4,   // As many fitting items as possible
    NoArrowButton           = 1 << 5,   // Display on the preview box without the square arrow button
    NoPreview               = 1 << 6,   // Display only a square arrow button
    HeightMask_             = ImGuiComboFlags.HeightSmall | ImGuiComboFlags.HeightRegular | ImGuiComboFlags.HeightLarge | ImGuiComboFlags.HeightLargest,
};

enum ImGuiSliderFlags
{
    None                   = 0,
    AlwaysClamp            = 1 << 4,       // Clamp value to min/max bounds when input manually with CTRL+Click. By default CTRL+Click allows going out of bounds.
    Logarithmic            = 1 << 5,       // Make the widget logarithmic (linear otherwise). Consider using NoRoundToFormat with this if using a format-string with small amount of digits.
    NoRoundToFormat        = 1 << 6,       // Disable rounding underlying value to match precision of the display format string (e.g. %.3f values are rounded to those 3 digits)
    NoInput                = 1 << 7,       // Disable CTRL+Click or Enter key allowing to input text directly into the widget
    InvalidMask_           = 0x7000000F,   // [Internal] We treat using those bits as being potentially a 'float power' argument from the previous API that has got miscast to this enum, and will trigger an assert if needed.
};

enum ImGuiColorEditFlags
{
    None            = 0,
    NoAlpha         = 1 << 1,   //              // ColorEdit, ColorPicker, ColorButton: ignore Alpha component (will only read 3 components from the input pointer).
    NoPicker        = 1 << 2,   //              // ColorEdit: disable picker when clicking on color square.
    NoOptions       = 1 << 3,   //              // ColorEdit: disable toggling options menu when right-clicking on inputs/small preview.
    NoSmallPreview  = 1 << 4,   //              // ColorEdit, ColorPicker: disable color square preview next to the inputs. (e.g. to show only the inputs)
    NoInputs        = 1 << 5,   //              // ColorEdit, ColorPicker: disable inputs sliders/text widgets (e.g. to show only the small preview color square).
    NoTooltip       = 1 << 6,   //              // ColorEdit, ColorPicker, ColorButton: disable tooltip when hovering the preview.
    NoLabel         = 1 << 7,   //              // ColorEdit, ColorPicker: disable display of inline text label (the label is still forwarded to the tooltip and picker).
    NoSidePreview   = 1 << 8,   //              // ColorPicker: disable bigger color preview on right side of the picker, use small color square preview instead.
    NoDragDrop      = 1 << 9,   //              // ColorEdit: disable drag and drop target. ColorButton: disable drag and drop source.
    NoBorder        = 1 << 10,  //              // ColorButton: disable border (which is enforced by default)

    // User Options (right-click on widget to change some of them).
    AlphaBar        = 1 << 16,  //              // ColorEdit, ColorPicker: show vertical alpha bar/gradient in picker.
    AlphaPreview    = 1 << 17,  //              // ColorEdit, ColorPicker, ColorButton: display preview as a transparent color over a checkerboard, instead of opaque.
    AlphaPreviewHalf= 1 << 18,  //              // ColorEdit, ColorPicker, ColorButton: display half opaque / half checkerboard, instead of opaque.
    HDR             = 1 << 19,  //              // (WIP) ColorEdit: Currently only disable 0.0f..1.0f limits in RGBA edition (note: you probably want to use Float flag as well).
    DisplayRGB      = 1 << 20,  // [Display]    // ColorEdit: override _display_ type among RGB/HSV/Hex. ColorPicker: select any combination using one or more of RGB/HSV/Hex.
    DisplayHSV      = 1 << 21,  // [Display]    // "
    DisplayHex      = 1 << 22,  // [Display]    // "
    Uint8           = 1 << 23,  // [DataType]   // ColorEdit, ColorPicker, ColorButton: _display_ values formatted as 0..255.
    Float           = 1 << 24,  // [DataType]   // ColorEdit, ColorPicker, ColorButton: _display_ values formatted as 0.0f..1.0f floats instead of 0..255 integers. No round-trip of value via integers.
    PickerHueBar    = 1 << 25,  // [Picker]     // ColorPicker: bar for Hue, rectangle for Sat/Value.
    PickerHueWheel  = 1 << 26,  // [Picker]     // ColorPicker: wheel for Hue, triangle for Sat/Value.
    InputRGB        = 1 << 27,  // [Input]      // ColorEdit, ColorPicker: input and output data in RGB format.
    InputHSV        = 1 << 28,  // [Input]      // ColorEdit, ColorPicker: input and output data in HSV format.

    // Defaults Options. You can set application defaults using SetColorEditOptions(). The intent is that you probably don't want to
    // override them in most of your calls. Let the user choose via the option menu and/or call SetColorEditOptions() once during startup.
    DefaultOptions_ = ImGuiColorEditFlags.Uint8 | ImGuiColorEditFlags.DisplayRGB | ImGuiColorEditFlags.InputRGB | ImGuiColorEditFlags.PickerHueBar,

    // [Internal] Masks
    DisplayMask_    = ImGuiColorEditFlags.DisplayRGB | ImGuiColorEditFlags.DisplayHSV | ImGuiColorEditFlags.DisplayHex,
    DataTypeMask_   = ImGuiColorEditFlags.Uint8 | ImGuiColorEditFlags.Float,
    PickerMask_     = ImGuiColorEditFlags.PickerHueWheel | ImGuiColorEditFlags.PickerHueBar,
    InputMask_      = ImGuiColorEditFlags.InputRGB | ImGuiColorEditFlags.InputHSV,

    // Obsolete names (will be removed)
    // RGB = DisplayRGB, HSV = DisplayHSV, HEX = DisplayHex  // [renamed in 1.69]
};

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

enum ImGuiStyleVar
{
    // Enum name --------------------- // Member in ImGuiStyle structure (see ImGuiStyle for descriptions)
    Alpha,               // float     Alpha
    DisabledAlpha,       // float     DisabledAlpha
    WindowPadding,       // ImVec2    WindowPadding
    WindowRounding,      // float     WindowRounding
    WindowBorderSize,    // float     WindowBorderSize
    WindowMinSize,       // ImVec2    WindowMinSize
    WindowTitleAlign,    // ImVec2    WindowTitleAlign
    ChildRounding,       // float     ChildRounding
    ChildBorderSize,     // float     ChildBorderSize
    PopupRounding,       // float     PopupRounding
    PopupBorderSize,     // float     PopupBorderSize
    FramePadding,        // ImVec2    FramePadding
    FrameRounding,       // float     FrameRounding
    FrameBorderSize,     // float     FrameBorderSize
    ItemSpacing,         // ImVec2    ItemSpacing
    ItemInnerSpacing,    // ImVec2    ItemInnerSpacing
    IndentSpacing,       // float     IndentSpacing
    CellPadding,         // ImVec2    CellPadding
    ScrollbarSize,       // float     ScrollbarSize
    ScrollbarRounding,   // float     ScrollbarRounding
    GrabMinSize,         // float     GrabMinSize
    GrabRounding,        // float     GrabRounding
    TabRounding,         // float     TabRounding
    ButtonTextAlign,     // ImVec2    ButtonTextAlign
    SelectableTextAlign, // ImVec2    SelectableTextAlign
    COUNT
};

enum ImGuiCond {
	None          = 0,
	Always        = 1 << 0,
	Once          = 1 << 1,
	FirstUseEver  = 1 << 2,
	Appearing     = 1 << 3	
}

enum ImGuiInputTextFlags
{
   None                = 0,
   CharsDecimal        = 1 << 0,   // Allow 0123456789.+-*/
   CharsHexadecimal    = 1 << 1,   // Allow 0123456789ABCDEFabcdef
   CharsUppercase      = 1 << 2,   // Turn a..z into A..Z
   CharsNoBlank        = 1 << 3,   // Filter out spaces, tabs
   AutoSelectAll       = 1 << 4,   // Select entire text when first taking mouse focus
   EnterReturnsTrue    = 1 << 5,   // Return 'true' when Enter is pressed (as opposed to every time the value was modified). Consider looking at the IsItemDeactivatedAfterEdit() function.
   CallbackCompletion  = 1 << 6,   // Callback on pressing TAB (for completion handling)
   CallbackHistory     = 1 << 7,   // Callback on pressing Up/Down arrows (for history handling)
   CallbackAlways      = 1 << 8,   // Callback on each iteration. User code may query cursor position, modify text buffer.
   CallbackCharFilter  = 1 << 9,   // Callback on character inputs to replace or discard them. Modify 'EventChar' to replace or discard, or return 1 in callback to discard.
   AllowTabInput       = 1 << 10,  // Pressing TAB input a '\t' character into the text field
   CtrlEnterForNewLine = 1 << 11,  // In multi-line mode, unfocus with Enter, add new line with Ctrl+Enter (default is opposite: unfocus with Ctrl+Enter, add line with Enter).
   NoHorizontalScroll  = 1 << 12,  // Disable following the cursor horizontally
   AlwaysOverwrite     = 1 << 13,  // Overwrite mode
   ReadOnly            = 1 << 14,  // Read-only mode
   Password            = 1 << 15,  // Password mode, display all characters as '*'
   NoUndoRedo          = 1 << 16,  // Disable undo/redo. Note that input text owns the text data while active, if you want to provide your own undo/redo stack you need e.g. to call ClearActiveID().
   CharsScientific     = 1 << 17,  // Allow 0123456789.+-*/eE (Scientific notation input)
   CallbackResize      = 1 << 18,  // Callback on buffer capacity changes request (beyond 'buf_size' parameter value), allowing the string to grow. Notify when the string wants to be resized (for string types which hold a cache of their Size). You will be provided a new BufSize in the callback and NEED to honor it. (see misc/cpp/imgui_stdlib.h for an example of using this)
   CallbackEdit        = 1 << 19,  // Callback on any edit (note that InputText() already returns true on edit, the callback is useful mainly to manipulate the underlying buffer while focus is active)
   EscapeClearsAll     = 1 << 20,  // Escape key clears content if not empty, and deactivate otherwise (contrast to default behavior of Escape to revert)
}

enum ImGuiWindowFlags
{
    None                   = 0,
    NoTitleBar             = 1 << 0,   // Disable title-bar
    NoResize               = 1 << 1,   // Disable user resizing with the lower-right grip
    NoMove                 = 1 << 2,   // Disable user moving the window
    NoScrollbar            = 1 << 3,   // Disable scrollbars (window can still scroll with mouse or programmatically)
    NoScrollWithMouse      = 1 << 4,   // Disable user vertically scrolling with mouse wheel. On child window, mouse wheel will be forwarded to the parent unless NoScrollbar is also set.
    NoCollapse             = 1 << 5,   // Disable user collapsing window by double-clicking on it. Also referred to as Window Menu Button (e.g. within a docking node).
    AlwaysAutoResize       = 1 << 6,   // Resize every window to its content every frame
    NoBackground           = 1 << 7,   // Disable drawing background color (WindowBg, etc.) and outside border. Similar as using SetNextWindowBgAlpha(0.0f).
    NoSavedSettings        = 1 << 8,   // Never load/save settings in .ini file
    NoMouseInputs          = 1 << 9,   // Disable catching mouse, hovering test with pass through.
    MenuBar                = 1 << 10,  // Has a menu-bar
    HorizontalScrollbar    = 1 << 11,  // Allow horizontal scrollbar to appear (off by default). You may use SetNextWindowContentSize(ImVec2(width,0.0f)); prior to calling Begin() to specify width. Read code in imgui_demo in the "Horizontal Scrolling" section.
    NoFocusOnAppearing     = 1 << 12,  // Disable taking focus when transitioning from hidden to visible state
    NoBringToFrontOnFocus  = 1 << 13,  // Disable bringing window to front when taking focus (e.g. clicking on it or programmatically giving it focus)
    AlwaysVerticalScrollbar= 1 << 14,  // Always show vertical scrollbar (even if ContentSize.y < Size.y)
    AlwaysHorizontalScrollbar=1<< 15,  // Always show horizontal scrollbar (even if ContentSize.x < Size.x)
    AlwaysUseWindowPadding = 1 << 16,  // Ensure child windows without border uses style.WindowPadding (ignored by default for non-bordered child windows, because more convenient)
    NoNavInputs            = 1 << 18,  // No gamepad/keyboard navigation within the window
    NoNavFocus             = 1 << 19,  // No focusing toward this window with gamepad/keyboard navigation (e.g. skipped by CTRL+TAB)
    UnsavedDocument        = 1 << 20,  // Display a dot next to the title. When used in a tab/docking context, tab is selected when clicking the X + closure is not assumed (will wait for user to stop submitting the tab). Otherwise closure is assumed when pressing the X, so if you keep submitting the tab may reappear at end of tab bar.
    NoNav                  = ImGuiWindowFlags.NoNavInputs | ImGuiWindowFlags.NoNavFocus,
    NoDecoration           = ImGuiWindowFlags.NoTitleBar | ImGuiWindowFlags.NoResize | ImGuiWindowFlags.NoScrollbar | ImGuiWindowFlags.NoCollapse,
    NoInputs               = ImGuiWindowFlags.NoMouseInputs | ImGuiWindowFlags.NoNavInputs | ImGuiWindowFlags.NoNavFocus,

    // [Internal]
    NavFlattened           = 1 << 23,  // [BETA] On child window: allow gamepad/keyboard navigation to cross over parent border to this child or between sibling child windows.
    ChildWindow            = 1 << 24,  // Don't use! For internal use by BeginChild()
    Tooltip                = 1 << 25,  // Don't use! For internal use by BeginTooltip()
    Popup                  = 1 << 26,  // Don't use! For internal use by BeginPopup()
    Modal                  = 1 << 27,  // Don't use! For internal use by BeginPopupModal()
    ChildMenu              = 1 << 28,  // Don't use! For internal use by BeginMenu()
};

enum ImGuiTreeNodeFlags
{
    None                 = 0,
    Selected             = 1 << 0,   // Draw as selected
    Framed               = 1 << 1,   // Draw frame with background (e.g. for CollapsingHeader)
    AllowItemOverlap     = 1 << 2,   // Hit testing to allow subsequent widgets to overlap this one
    NoTreePushOnOpen     = 1 << 3,   // Don't do a TreePush() when open (e.g. for CollapsingHeader) = no extra indent nor pushing on ID stack
    NoAutoOpenOnLog      = 1 << 4,   // Don't automatically and temporarily open node when Logging is active (by default logging will automatically open tree nodes)
    DefaultOpen          = 1 << 5,   // Default node to be open
    OpenOnDoubleClick    = 1 << 6,   // Need double-click to open node
    OpenOnArrow          = 1 << 7,   // Only open when clicking on the arrow part. If OpenOnDoubleClick is also set, single-click arrow or double-click all box to open.
    Leaf                 = 1 << 8,   // No collapsing, no arrow (use as a convenience for leaf nodes).
    Bullet               = 1 << 9,   // Display a bullet instead of arrow
    FramePadding         = 1 << 10,  // Use FramePadding (even for an unframed text node) to vertically align text baseline to regular widget height. Equivalent to calling AlignTextToFramePadding().
    SpanAvailWidth       = 1 << 11,  // Extend hit box to the right-most edge, even if not framed. This is not the default in order to allow adding other items on the same line. In the future we may refactor the hit system to be front-to-back, allowing natural overlaps and then this can become the default.
    SpanFullWidth        = 1 << 12,  // Extend hit box to the left-most and right-most edges (bypass the indented area).
    NavLeftJumpsBackHere = 1 << 13,  // (WIP) Nav: left direction may move to this TreeNode() from any of its child (items submitted between TreeNode and TreePop)
    //NoScrollOnOpen     = 1 << 14,  // FIXME: TODO: Disable automatic scroll on TreePop() if node got just open and contents is not visible
    CollapsingHeader     = ImGuiTreeNodeFlags.Framed | ImGuiTreeNodeFlags.NoTreePushOnOpen | ImGuiTreeNodeFlags.NoAutoOpenOnLog,
};

enum ImGuiMouseCursor
{
    None = -1,
    Arrow = 0,
    TextInput,         // When hovering over InputText, etc.
    ResizeAll,         // (Unused by Dear ImGui functions)
    ResizeNS,          // When hovering over a horizontal border
    ResizeEW,          // When hovering over a vertical border or a column
    ResizeNESW,        // When hovering over the bottom-left corner of a window
    ResizeNWSE,        // When hovering over the bottom-right corner of a window
    Hand,              // (Unused by Dear ImGui functions. Use for e.g. hyperlinks)
    NotAllowed,        // When hovering something with disallowed interaction. Usually a crossed circle.
    COUNT
};

enum ImGuiTabBarFlags
{
    None                           = 0,
    Reorderable                    = 1 << 0,   // Allow manually dragging tabs to re-order them + New tabs are appended at the end of list
    AutoSelectNewTabs              = 1 << 1,   // Automatically select new tabs when they appear
    TabListPopupButton             = 1 << 2,   // Disable buttons to open the tab list popup
    NoCloseWithMiddleMouseButton   = 1 << 3,   // Disable behavior of closing tabs (that are submitted with p_open != NULL) with middle mouse button. You can still repro this behavior on user's side with if (IsItemHovered() && IsMouseClicked(2)) *p_open = false.
    NoTabListScrollingButtons      = 1 << 4,   // Disable scrolling buttons (apply when fitting policy is FittingPolicyScroll)
    NoTooltip                      = 1 << 5,   // Disable tooltips when hovering a tab
    FittingPolicyResizeDown        = 1 << 6,   // Resize tabs when they don't fit
    FittingPolicyScroll            = 1 << 7,   // Add scroll buttons when tabs don't fit
    FittingPolicyMask_             = ImGuiTabBarFlags.FittingPolicyResizeDown | ImGuiTabBarFlags.FittingPolicyScroll,
    FittingPolicyDefault_          = ImGuiTabBarFlags.FittingPolicyResizeDown,
};

enum ImGuiTabItemFlags
{
    None                          = 0,
    UnsavedDocument               = 1 << 0,   // Display a dot next to the title + tab is selected when clicking the X + closure is not assumed (will wait for user to stop submitting the tab). Otherwise closure is assumed when pressing the X, so if you keep submitting the tab may reappear at end of tab bar.
    SetSelected                   = 1 << 1,   // Trigger flag to programmatically make the tab selected when calling BeginTabItem()
    NoCloseWithMiddleMouseButton  = 1 << 2,   // Disable behavior of closing tabs (that are submitted with p_open != NULL) with middle mouse button. You can still repro this behavior on user's side with if (IsItemHovered() && IsMouseClicked(2)) *p_open = false.
    NoPushId                      = 1 << 3,   // Don't call PushID(tab->ID)/PopID() on BeginTabItem()/EndTabItem()
    NoTooltip                     = 1 << 4,   // Disable tooltip for the given tab
    NoReorder                     = 1 << 5,   // Disable reordering this tab or having another tab cross over this tab
    Leading                       = 1 << 6,   // Enforce the tab position to the left of the tab bar (after the tab list popup button)
    Trailing                      = 1 << 7,   // Enforce the tab position to the right of the tab bar (before the scrolling buttons)
};

enum ImGuiCol
{
    Text,
    TextDisabled,
    WindowBg,              // Background of normal windows
    ChildBg,               // Background of child windows
    PopupBg,               // Background of popups, menus, tooltips windows
    Border,
    BorderShadow,
    FrameBg,               // Background of checkbox, radio button, plot, slider, text input
    FrameBgHovered,
    FrameBgActive,
    TitleBg,
    TitleBgActive,
    TitleBgCollapsed,
    MenuBarBg,
    ScrollbarBg,
    ScrollbarGrab,
    ScrollbarGrabHovered,
    ScrollbarGrabActive,
    CheckMark,
    SliderGrab,
    SliderGrabActive,
    Button,
    ButtonHovered,
    ButtonActive,
    Header,                // Header* colors are used for CollapsingHeader, TreeNode, Selectable, MenuItem
    HeaderHovered,
    HeaderActive,
    Separator,
    SeparatorHovered,
    SeparatorActive,
    ResizeGrip,            // Resize grip in lower-right and lower-left corners of windows.
    ResizeGripHovered,
    ResizeGripActive,
    Tab,                   // TabItem in a TabBar
    TabHovered,
    TabActive,
    TabUnfocused,
    TabUnfocusedActive,
    DockingPreview,        // Preview overlay color when about to docking something
    DockingEmptyBg,        // Background color for empty node (e.g. CentralNode with no window docked into it)
    PlotLines,
    PlotLinesHovered,
    PlotHistogram,
    PlotHistogramHovered,
    TableHeaderBg,         // Table header background
    TableBorderStrong,     // Table outer and header borders (prefer using Alpha=1.0 here)
    TableBorderLight,      // Table inner borders (prefer using Alpha=1.0 here)
    TableRowBg,            // Table row background (even rows)
    TableRowBgAlt,         // Table row background (odd rows)
    TextSelectedBg,
    DragDropTarget,        // Rectangle highlighting a drop target
    NavHighlight,          // Gamepad/keyboard: current highlighted item
    NavWindowingHighlight, // Highlight window when using CTRL+TAB
    NavWindowingDimBg,     // Darken/colorize entire screen behind the CTRL+TAB window list, when active
    ModalWindowDimBg,      // Darken/colorize entire screen behind a modal window, when one is active
    COUNT
};

enum ImGuiTooltipFlags
{
    None                      = 0,
	OverridePreviousTooltip   = 1 << 0,   // Override will clear/ignore previously submitted tooltip (defaults to append)
};

enum ImGuiScrollFlags
{
    None                   = 0,
    KeepVisibleEdgeX       = 1 << 0,       // If item is not visible: scroll as little as possible on X axis to bring item back into view [default for X axis]
    KeepVisibleEdgeY       = 1 << 1,       // If item is not visible: scroll as little as possible on Y axis to bring item back into view [default for Y axis for windows that are already visible]
    KeepVisibleCenterX     = 1 << 2,       // If item is not visible: scroll to make the item centered on X axis [rarely used]
    KeepVisibleCenterY     = 1 << 3,       // If item is not visible: scroll to make the item centered on Y axis
    AlwaysCenterX          = 1 << 4,       // Always center the result item on X axis [rarely used]
    AlwaysCenterY          = 1 << 5,       // Always center the result item on Y axis [default for Y axis for appearing window)
    NoScrollParent         = 1 << 6,       // Disable forwarding scrolling to parent window if required to keep item/rect visible (only scroll window the function was applied to).
    MaskX_                 = ImGuiScrollFlags.KeepVisibleEdgeX | ImGuiScrollFlags.KeepVisibleCenterX | ImGuiScrollFlags.AlwaysCenterX,
    MaskY_                 = ImGuiScrollFlags.KeepVisibleEdgeY | ImGuiScrollFlags.KeepVisibleCenterY | ImGuiScrollFlags.AlwaysCenterY,
};

enum ImGuiSelectableFlags
{
    None               = 0,
    DontClosePopups    = 1 << 0,   // Clicking this doesn't close parent popup window
    SpanAllColumns     = 1 << 1,   // Selectable frame can span all columns (text will still fit in current column)
    AllowDoubleClick   = 1 << 2,   // Generate press events on double clicks too
    Disabled           = 1 << 3,   // Cannot be selected, display grayed out text
    AllowItemOverlap   = 1 << 4,   // (WIP) Hit testing to allow subsequent widgets to overlap this one
};

enum ImGuiHoveredFlags
{
    None                          = 0,        // Return true if directly over the item/window, not obstructed by another window, not obstructed by an active popup or modal blocking inputs under them.
    ChildWindows                  = 1 << 0,   // IsWindowHovered() only: Return true if any children of the window is hovered
    RootWindow                    = 1 << 1,   // IsWindowHovered() only: Test from root window (top most parent of the current hierarchy)
    AnyWindow                     = 1 << 2,   // IsWindowHovered() only: Return true if any window is hovered
    NoPopupHierarchy              = 1 << 3,   // IsWindowHovered() only: Do not consider popup hierarchy (do not treat popup emitter as parent of popup) (when used with _ChildWindows or _RootWindow)
    DockHierarchy                 = 1 << 4,   // IsWindowHovered() only: Consider docking hierarchy (treat dockspace host as parent of docked window) (when used with _ChildWindows or _RootWindow)
    AllowWhenBlockedByPopup       = 1 << 5,   // Return true even if a popup window is normally blocking access to this item/window
    //AllowWhenBlockedByModal     = 1 << 6,   // Return true even if a modal popup window is normally blocking access to this item/window. FIXME-TODO: Unavailable yet.
    AllowWhenBlockedByActiveItem  = 1 << 7,   // Return true even if an active item is blocking access to this item/window. Useful for Drag and Drop patterns.
    AllowWhenOverlapped           = 1 << 8,   // IsItemHovered() only: Return true even if the position is obstructed or overlapped by another window
    AllowWhenDisabled             = 1 << 9,   // IsItemHovered() only: Return true even if the item is disabled
    NoNavOverride                 = 1 << 10,  // Disable using gamepad/keyboard navigation state when active, always query mouse.
    RectOnly                      = ImGuiHoveredFlags.AllowWhenBlockedByPopup | ImGuiHoveredFlags.AllowWhenBlockedByActiveItem | ImGuiHoveredFlags.AllowWhenOverlapped,
    RootAndChildWindows           = ImGuiHoveredFlags.RootWindow | ImGuiHoveredFlags.ChildWindows,

    // Hovering delays (for tooltips)
    DelayNormal                   = 1 << 11,  // Return true after io.HoverDelayNormal elapsed (~0.30 sec)
    DelayShort                    = 1 << 12,  // Return true after io.HoverDelayShort elapsed (~0.10 sec)
    NoSharedDelay                 = 1 << 13,  // Disable shared delay system where moving from one item to the next keeps the previous timer for a short time (standard for tooltips with long delays)
};