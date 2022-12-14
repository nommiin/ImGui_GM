function ImGui() constructor {
    /// @section Binds
    /// @function Begin(name, show, flags)
    /// @argument {String} name
    /// @argument {Bool} [show=false]
    /// @argument {Int64} [flags=ImGuiWindowFlags.None]
    static Begin = function(name, show=false, flags=ImGuiWindowFlags.None) {
       return __imgui_begin(name, show, flags);
    }

    /// @function End()
    static End = function() {
       return __imgui_end();
    }

    /// @function Text(val)
    /// @argument {String} val
    static Text = function(val) {
       return __imgui_text(val);
    }

    /// @function InputText(label, val, flags)
    /// @argument {String} label
    /// @argument {String} val
    /// @argument {Int64} [flags=ImGuiInputTextFlags.None]
    static InputText = function(label, val, flags=ImGuiInputTextFlags.None) {
       return __imgui_input_text(label, val, flags);
    }

    /// @function Button(label, width, height)
    /// @argument {String} label
    /// @argument {Real} [width=0]
    /// @argument {Real} [height=0]
    static Button = function(label, width=0, height=0) {
       return __imgui_button(label, width, height);
    }

    /// @function ShowAboutWindow(show)
    /// @argument {Bool} show
    static ShowAboutWindow = function(show) {
       return __imgui_show_about(show);
    }

    /// @function ShowDemoWindow(show)
    /// @argument {Bool} show
    static ShowDemoWindow = function(show) {
       return __imgui_show_demo(show);
    }

    /// @function ShowStyleEditor()
    static ShowStyleEditor = function() {
       return __imgui_show_style();
    }

    /// @function SetNextWindowPos(_x, _y, cond, pivot_x, pivot_y)
    /// @argument {Real} _x
    /// @argument {Real} _y
    /// @argument {Int64} [cond=ImGuiCond.Always]
    /// @argument {Real} [pivot_x=0]
    /// @argument {Real} [pivot_y=0]
    static SetNextWindowPos = function(_x, _y, cond=ImGuiCond.Always, pivot_x=0, pivot_y=0) {
       return __imgui_set_next_window_pos(_x, _y, cond, pivot_x, pivot_y);
    }

    /// @function SetNextWindowSize(width, height, cond)
    /// @argument {Real} width
    /// @argument {Real} [height=ImGuiCond.Always]
    /// @argument {Int64} cond
    static SetNextWindowSize = function(width, height=ImGuiCond.Always, cond) {
       return __imgui_set_next_window_size(width, height, cond);
    }

	/// @section Internal
	static __State = {
		Display: {
			Width: 0,
			Height: 0
		},
		Input: {
			Mouse: {
				X: 0,
				Y: 0
			}
		},
		Engine: {
			Time: 0,
			Framerate: game_get_speed(gamespeed_fps)
		}
	};
	
	static __Initialize = function() {
		var info = os_get_info(), info =  {
			Device: info[? "video_d3d11_device"],
			Context: info[? "video_d3d11_context"]
		};
		ds_map_destroy(info);
		return __imgui_initialize(info);
	}
	
	static __Update = function() {
		__State.Display.Width = display_get_width();
		__State.Display.Height = display_get_height();
		__State.Engine.Time = delta_time;
		__State.Engine.Framerate = game_get_speed(gamespeed_fps);
		__State.Input.Mouse.X = window_mouse_get_x();
		__State.Input.Mouse.Y = window_mouse_get_y();
		for(var i = 0; i < 3; i++) __imgui_mouse(i, mouse_check_button(i + 1));
		for(var i = ImGuiKey.ImGuiKey_NamedKey_BEGIN; i < ImGuiKey.ImGuiKey_NamedKey_END; i++) {
			var key = __Mapping[i];
			if (key > -1) __imgui_key(i, keyboard_check_direct(key));
		}
		if (__imgui_input(keyboard_string)) keyboard_string = "";
		return __imgui_update(__State);
	}
	
	static __Render = function() {
		return __imgui_render();
	}
};

// Enums
enum ImGuiCond {
	None,
	Always,
	Once,
	FirstUseEver,
	Appearing	
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