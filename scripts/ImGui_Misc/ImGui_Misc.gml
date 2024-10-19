// All the silly stuff that's too messy for ImGui.gml

/** 
 * @function ImGuiBaseMainWindow
 * @constructor
 * @description A GM-side base main viewport for use with ImGui.
 * 
 */
function ImGuiBaseMainWindow() constructor {
    static GetHandle = function() {return window_handle();}
    static Exists = function() {return true;}
    static HasFocus = function() {return window_has_focus();}
    static GetX = function() {return window_get_x();}
    static GetY = function() {return window_get_y();}
    static GetWidth = function() {return window_get_width();}
    static GetHeight = function() {return window_get_height();}
    static MouseGetX = function() {return window_mouse_get_x();}
    static MouseGetY = function() {return window_mouse_get_y();}
    static MouseCheckButton = function(mb) {return mouse_check_button(mb);}
    static MouseWheelUp = function(mb) {return mouse_wheel_up();}
    static MouseWheelDown = function(mb) {return mouse_wheel_down();}
    static SetCursor = function(cursor) {return window_set_cursor(cursor);}
    static IsMinimized = function() {return GetWidth() == 0 and GetHeight() == 0;}
    static Destroy = undefined;
    static DrawBegin = undefined;
    static DrawEnd = undefined;
    static DrawClear = undefined;
}

/**
 * @function ImGuiState
 * @constructor
 * @description A GM-side context and variables holder for use with ImGui
 * 
 */
function ImGuiState() constructor {
    
    enum StateUpdateFlags {
    	None = 0,
    	DisplaySize = 1 << 0,
        DisplayScale = 1 << 1,
    	MousePos = 1 << 21,
    	Framerate = 1 << 3,
    	Time = 1 << 4,
    	CmdBuffer = 1 << 5,
    	FontBuffer = 1 << 6,
    	UpdateFont = 1 << 7,

    	Display = StateUpdateFlags.DisplaySize | StateUpdateFlags.DisplayScale,
    	Input = StateUpdateFlags.MousePos,
    	Engine = StateUpdateFlags.Framerate | StateUpdateFlags.Time,
    	Renderer = StateUpdateFlags.CmdBuffer | StateUpdateFlags.FontBuffer | StateUpdateFlags.UpdateFont,

    	All = StateUpdateFlags.Display | StateUpdateFlags.Input | StateUpdateFlags.Engine | StateUpdateFlags.Renderer,
    }

    var _os_info = os_get_info();

    __Initialized = false;

    Display = {
        Width: 0,
        Height: 0,
        Scale: 1,
    };
    Input = {
        Mouse: {
            X: 0,
            Y: 0
        }
    };
    Engine = {
        D3DDevice: _os_info[? "video_d3d11_device"],
        D3DDeviceContext: _os_info[? "video_d3d11_context"],
        Context: pointer_null,
        Window: undefined,
        Time: 0,
        Framerate: game_get_speed(gamespeed_fps),
    };
    Renderer = {
        CmdBuffer: -1,
        FontBuffer: -1,
        Surface: -1,
        UpdateFont: true,
    };


    ds_map_destroy(_os_info);

    static __Initialize = function(wnd_or_config_flags_1=ImGuiConfigFlags.None, config_flags_2=ImGuiConfigFlags.None) {
        if __Initialized return;

        var _state = ImGui.__State;

		if self.Engine.Context == pointer_null {
            self.Engine.Context = ImGui.CreateContext();
        }

        var window = self.Engine.Window;
        var config_flags_set = wnd_or_config_flags_1;
        var config_flags_clear = config_flags_2;

        if is_struct(wnd_or_config_flags_1) {
            window = wnd_or_config_flags_1;
            config_flags_set = config_flags_2;
            config_flags_clear = ImGuiConfigFlags.None;
        }

        self.Display.Width = display_get_width();
		self.Display.Height = display_get_height();
		self.Display.Font = -1;
		self.Renderer.Surface = -1;
		self.Renderer.CmdBuffer = buffer_exists(self.Renderer.CmdBuffer) ? self.Renderer.CmdBuffer : buffer_create(IMGUI_GM_BUFFER_SIZE, buffer_grow, 1);
		self.Renderer.FontBuffer = buffer_exists(self.Renderer.FontBuffer) ? self.Renderer.FontBuffer :  buffer_create(IMGUI_GM_BUFFER_SIZE, buffer_grow, 1);
        self.Renderer.UpdateFont = true;
        
        self.Use();

        var context = self.Engine.Context;

        var info = {
            D3DDevice: self.Engine.D3DDevice,
            D3DDeviceContext: self.Engine.D3DDeviceContext,
            ExtFlags: ImGui.__ExtFlags,
            ConfigFlagsOverrideSet: config_flags_set,
            ConfigFlagsOverrideClear: config_flags_clear,
        };

        var hwnd = undefined;
        if is_struct(window) {
            hwnd = window.GetHandle();
        }

        if hwnd == undefined {
            show_error("Cannot initialize ImGuiState without a window handle. Make sure your window class or struct has the \"GetHandle\" function.", true);
        }

        self.Engine.Window = window;

        var inited = __imgui_initialize(hwnd, context, info); // -> context

        __Initialized = true;
        return inited;
    }
    static Initialize = __Initialize;

    static __Use = function(flags=StateUpdateFlags.None) {
        ImGui.__State = self;
        ImGui.SetCurrentContext(self.Engine.Context);
        var _data = self.GetData();
        if flags != StateUpdateFlags.None {
            __imgui_update_state_from_struct(_data, flags);
        }
    }
    static Use = __Use;

    static __GetData = function() {
        return {
            Display: self.Display,
            Input: self.Input,
            Engine: self.Engine,
            Renderer: self.Renderer,
        }
    }
    static GetData = __GetData;

    static __Destroy = function() {
        if is_ptr(self.Engine.Context) ImGui.DestroyContext(self.Engine.Context);
        if buffer_exists(self.Renderer.CmdBuffer) buffer_delete(self.Renderer.CmdBuffer);
        if buffer_exists(self.Renderer.FontBuffer) buffer_delete(self.Renderer.FontBuffer);
        if surface_exists(self.Renderer.Surface) surface_free(self.Renderer.Surface);
        self.Engine.Context = pointer_null;
        self.Engine.Window.__imgui_state = undefined;
        self.Renderer.CmdBuffer = -1;
        self.Renderer.FontBuffer = -1;
        self.Renderer.Surface = -1;
        self.__Initialized = false;
    }
    static Destroy = __Destroy;

}

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

/**
 * @function ImGuiWindowClass
 * @constructor
 * Represents a window class. This is managed in your game and is sent to ImGui backend on setting the window class calls.
 * 
 */
function ImGuiWindowClass(class_id, parent_viewport_id=undefined, viewport_flags_override_set=ImGuiViewportFlags.None, viewport_flags_override_clear=ImGuiViewportFlags.None) constructor {
    ClassId = class_id;

    if (is_ptr(parent_viewport_id)) {
        parent_viewport_id = __imgui_get_viewport_id(parent_viewport_id);
    }
    ParentViewportId = parent_viewport_id; // -1

    ViewportFlagsOverrideSet = viewport_flags_override_set; // ImGuiViewportFlags.None
    ViewportFlagsOverrideClear = viewport_flags_override_clear; // ImGuiViewportFlags.None

    FocusRouteParentWindowId = undefined; // 0
    TabItemFlagsOverrideSet = undefined; // 0
    DockNodeFlagsOverrideSet = undefined; // 0
    DockingAlwaysTabBar = undefined; // false
    DockingAllowUnclassed = undefined; // true
    
    /* Unused */
    static Destroy = function() {};
}

/**
 * @function ImGuiSelectionBasicStorage
 * @constructor
 * Creates an ImGuiSelectionBasicStorage in the extension. Use Destroy() when done.
 * 
 */
function ImGuiSelectionBasicStorage(size=0, preserve_order=undefined) constructor {
    _Size = size;
    PreserveOrder = preserve_order; // false

    __ptr = __imgui_create_multi_select_basic_storage(self);
    
    static GetSize = function() {
        _Size = __imgui_selection_storage_size(self, undefined);
        return _Size;
    }

    static SetSize = function(set_value=undefined) {
        _Size = __imgui_selection_storage_size(self, set_value);
    }

    /// @param {ImGuiMultiSelectIO} ms_io
    static ApplyRequests = function(ms_io) {
        __imgui_selection_storage_apply_requests(self, ms_io);
    }
    
    /// check if an item is in the storage (used with SetNextItemUserStorage(idx))
    /// @param {Any} idx The user data to check
    /// @return {Bool}
    static Contains = function(idx) {
        return __imgui_selection_storage_contains(self, idx);
    }
    
    static Destroy = function() {
        __imgui_destroy_multi_select_basic_storage(self);
    }
}


#macro IMGUI_PAYLOAD_TYPE_COLOR_3F     "_COL3F"    // (GML) int32: Standard type for colors, without alpha. User code may use this type.
#macro IMGUI_PAYLOAD_TYPE_COLOR_4F     "_COL4F"    // (GML) struct: Standard type for colors. User code may use this type.
#macro IMGUI_GM_BUFFER_SIZE             1024 * 8    // size of draw command & font buffers (they're grow buffers, this is just the initial size)

enum ImGuiExtFlags {
    None = 0,
	RENDERER_GM = 1 << 0,
	IMPL_GM = 1 << 1,
	IMPL_DX11 = 1 << 2,
	IMPL_WIN32 = 1 << 3,
    GM = ImGuiExtFlags.IMPL_GM | ImGuiExtFlags.RENDERER_GM,
}

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



/// @section Init helpers

function __imgui_create_cursor_mapping() {
    var arr = array_create(ImGuiMouseCursor.NotAllowed + 1, cr_none);
    arr[ImGuiMouseCursor.None + 1] = cr_none;
    arr[ImGuiMouseCursor.Arrow + 1] = cr_default;
    arr[ImGuiMouseCursor.TextInput + 1] = cr_beam;
    arr[ImGuiMouseCursor.ResizeAll + 1] = cr_size_all;
    arr[ImGuiMouseCursor.ResizeNS + 1] = cr_size_ns;
    arr[ImGuiMouseCursor.ResizeEW + 1] = cr_size_we;
    arr[ImGuiMouseCursor.ResizeNESW + 1] = cr_size_nesw;
    arr[ImGuiMouseCursor.ResizeNWSE + 1] = cr_size_nwse;
    arr[ImGuiMouseCursor.Hand + 1] = cr_handpoint;
    arr[ImGuiMouseCursor.NotAllowed + 1] = cr_default;
    return arr;
}

function __imgui_create_input_mapping() {
    var arr = array_create(ImGuiKey.KeysData_SIZE, -1);
    arr[ImGuiKey.None] = vk_nokey;
    arr[ImGuiKey.Enter] = vk_enter;
    arr[ImGuiKey.Escape] = vk_escape;
    arr[ImGuiKey.Space] = vk_space;
    arr[ImGuiKey.Backspace] = vk_backspace;
    arr[ImGuiKey.Tab] = vk_tab;
    arr[ImGuiKey.Pause] = vk_pause;
    arr[ImGuiKey.LeftArrow] = vk_left;
    arr[ImGuiKey.RightArrow] = vk_right;
    arr[ImGuiKey.UpArrow] = vk_up;
    arr[ImGuiKey.DownArrow] = vk_down;
    arr[ImGuiKey.Home] = vk_home;
    arr[ImGuiKey.End] = vk_end;
    arr[ImGuiKey.Delete] = vk_delete;
    arr[ImGuiKey.Insert] = vk_insert;
    arr[ImGuiKey.PageUp] = vk_pageup;
    arr[ImGuiKey.PageDown] = vk_pagedown;
    arr[ImGuiKey.F1] = vk_f1;
    arr[ImGuiKey.F2] = vk_f2;
    arr[ImGuiKey.F3] = vk_f3;
    arr[ImGuiKey.F4] = vk_f4;
    arr[ImGuiKey.F5] = vk_f5;
    arr[ImGuiKey.F6] = vk_f6;
    arr[ImGuiKey.F7] = vk_f7;
    arr[ImGuiKey.F8] = vk_f8;
    arr[ImGuiKey.F9] = vk_f9;
    arr[ImGuiKey.F10] = vk_f10;
    arr[ImGuiKey.F11] = vk_f11;
    arr[ImGuiKey.F12] = vk_f12;
    arr[ImGuiKey.Keypad0] = vk_numpad0;
    arr[ImGuiKey.Keypad1] = vk_numpad1;
    arr[ImGuiKey.Keypad2] = vk_numpad2;
    arr[ImGuiKey.Keypad3] = vk_numpad3;
    arr[ImGuiKey.Keypad4] = vk_numpad4;
    arr[ImGuiKey.Keypad5] = vk_numpad5;
    arr[ImGuiKey.Keypad6] = vk_numpad6;
    arr[ImGuiKey.Keypad7] = vk_numpad7;
    arr[ImGuiKey.Keypad8] = vk_numpad8;
    arr[ImGuiKey.Keypad9] = vk_numpad9;
    arr[ImGuiKey.KeypadDivide] = vk_divide;
    arr[ImGuiKey.KeypadMultiply] = vk_multiply;
    arr[ImGuiKey.KeypadSubtract] = vk_subtract;
    arr[ImGuiKey.KeypadAdd] = vk_add;
    arr[ImGuiKey.KeypadDecimal] = vk_decimal;
    arr[ImGuiKey.LeftShift] = vk_lshift;
    arr[ImGuiKey.LeftCtrl] = vk_lcontrol;
    arr[ImGuiKey.LeftAlt] = vk_lalt;
    arr[ImGuiKey.RightShift] = vk_rshift;
    arr[ImGuiKey.RightCtrl] = vk_rcontrol;
    arr[ImGuiKey.RightAlt] = vk_ralt;
    arr[ImGuiKey.ImGuiKey_1] = ord("1");
    arr[ImGuiKey.ImGuiKey_2] = ord("2");
    arr[ImGuiKey.ImGuiKey_3] = ord("3");
    arr[ImGuiKey.ImGuiKey_4] = ord("4");
    arr[ImGuiKey.ImGuiKey_5] = ord("5");
    arr[ImGuiKey.ImGuiKey_6] = ord("6");
    arr[ImGuiKey.ImGuiKey_7] = ord("7");
    arr[ImGuiKey.ImGuiKey_8] = ord("8");
    arr[ImGuiKey.ImGuiKey_9] = ord("9");
    arr[ImGuiKey.ImGuiKey_0] = ord("10");
    arr[ImGuiKey.A] = ord("A");
    arr[ImGuiKey.B] = ord("B");
    arr[ImGuiKey.C] = ord("C");
    arr[ImGuiKey.D] = ord("D");
    arr[ImGuiKey.E] = ord("E");
    arr[ImGuiKey.F] = ord("F");
    arr[ImGuiKey.G] = ord("G");
    arr[ImGuiKey.H] = ord("H");
    arr[ImGuiKey.I] = ord("I");
    arr[ImGuiKey.J] = ord("J");
    arr[ImGuiKey.K] = ord("K");
    arr[ImGuiKey.L] = ord("L");
    arr[ImGuiKey.M] = ord("M");
    arr[ImGuiKey.N] = ord("N");
    arr[ImGuiKey.O] = ord("O");
    arr[ImGuiKey.P] = ord("P");
    arr[ImGuiKey.Q] = ord("Q");
    arr[ImGuiKey.R] = ord("R");
    arr[ImGuiKey.S] = ord("S");
    arr[ImGuiKey.T] = ord("T");
    arr[ImGuiKey.U] = ord("U");
    arr[ImGuiKey.V] = ord("V");
    arr[ImGuiKey.W] = ord("W");
    arr[ImGuiKey.X] = ord("X");
    arr[ImGuiKey.Y] = ord("Y");
    arr[ImGuiKey.Z] = ord("Z");
    return arr;
}
