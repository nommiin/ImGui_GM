function ImGui() constructor {
	/// @section Binds
	/// @function Begin(name, [open=false], [flags=ImGuiWindowFlags.None])
	/// @desc Push a new Dear ImGui window to add widgets to.
	/// @argument {string} name
	/// @argument {boolean} open
	/// @argument {ImGuiWindowFlags} flags
	/// @returns {boolean} Return false when window is collapsed, so you can early out in your code. You always need to call ImGui.End() even if false is returned.
	static Begin = function(name, open=false, flags=0) {
		return __imgui_begin(name, open, flags);
	}
	
	/// @function End()
	/// @desc Should be called even if ImGui.Begin() returns false
	static End = function() {
		return __imgui_end();	
	}
	
	/// @function Button(label)
	/// @argument {string} label
	/// @returns {boolean}
	static Button = function(label) {
		return __imgui_button(label);	
	}
	
	/// @function Text()
	/// @argument {string} val
	static Text = function(val) {
		return __imgui_text(val);	
	}
	
	/// @function InputText(label, val)
	/// @argument {string} label
	/// @argument {ptr} val
	static InputText = function(label, val) {
		return __imgui_input_text(label, val);
	}
	
	/// @function ShowAboutWindow()
	static ShowAboutWindow = function() {
		return __imgui_show_about();	
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