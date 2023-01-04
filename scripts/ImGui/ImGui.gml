function ImGui() constructor {
	/// @section Binds
	/// @function Begin(name, open, flags, ret_mask)
	/// @argument {String} name
	/// @argument {Bool} [open=undefined]
	/// @argument {Real} [flags=ImGuiWindowFlags.None]
	/// @argument {Real} [ret_mask=ImGuiReturnFlags.Open]
	/// @return {Real}
	static Begin = function(name, open=undefined, flags=ImGuiWindowFlags.None, ret_mask=ImGuiReturnFlags.Open) {
		gml_pragma("forceinline");
		return __imgui_begin(name, open, flags, ret_mask);
	}

	/// @function End()
	/// @return {Undefined}
	static End = function() {
		gml_pragma("forceinline");
		return __imgui_end();
	}

	/// @section Internal
	/// @desc Where the (GML) magic happens, safe from code generation
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
		var info = os_get_info(), pointers = {
			Device: info[? "video_d3d11_device"],
			Context: info[? "video_d3d11_context"]
		};
		ds_map_destroy(info);
		return __imgui_initialize(pointers);
	}
	
	static __Update = function() {
		var _w = display_get_width(), _h = display_get_height();
		__State.Display.Width = _w;
		__State.Display.Height = _h;
		__State.Engine.Time = delta_time;
		__State.Engine.Framerate = game_get_speed(gamespeed_fps);
		
		if (window_has_focus()) {
			for(var i = ImGuiKey.NamedKey_BEGIN; i < ImGuiKey.NamedKey_END; i++) {
				var key = __Mapping[i];
				if (key > -1) __imgui_key(i, keyboard_check_direct(key));
			}
			__imgui_key(ImGuiKey.ImGuiMod_Ctrl, keyboard_check_direct(vk_lcontrol));
			__imgui_key(ImGuiKey.ImGuiMod_Shift, keyboard_check_direct(vk_lshift));
			__imgui_key(ImGuiKey.ImGuiMod_Alt, keyboard_check_direct(vk_lalt));
			if (__imgui_input(keyboard_string)) keyboard_string = "";
			
			var _x = window_get_x(), _y = window_get_y();
			if (point_in_rectangle(display_mouse_get_x(), display_mouse_get_y(), _x, _y, _x + window_get_width(), _y + window_get_height())) {
				__State.Input.Mouse.X = window_mouse_get_x();
				__State.Input.Mouse.Y = window_mouse_get_y();
				for(var i = 0; i < 3; i++) __imgui_mouse(i, device_mouse_check_button(0, i + 1));
				if (mouse_wheel_up()) __imgui_mouse_wheel(0, 1);
				else if (mouse_wheel_down()) __imgui_mouse_wheel(0, -1);
				window_set_cursor(__Cursor[__imgui_mouse_cursor() + 1]);
			}
		}
		return __imgui_update(__State);
	}
	
	static __Render = function() {
		return __imgui_render();
	}
};