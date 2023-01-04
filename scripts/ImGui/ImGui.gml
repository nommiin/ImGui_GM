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

	/// @function Text(val)
	/// @argument {String} val
	/// @return {Undefined}
	static Text = function(val) {
		gml_pragma("forceinline");
		return __imgui_text(val);
	}

	/// @function TextColored(label, color, alpha)
	/// @argument {String} label
	/// @argument {Real} color
	/// @argument {Real} [alpha=1]
	/// @return {Undefined}
	static TextColored = function(label, color, alpha=1) {
		gml_pragma("forceinline");
		return __imgui_text_colored(label, color, alpha);
	}

	/// @function TextDisabled(val)
	/// @argument {String} val
	/// @return {Undefined}
	static TextDisabled = function(val) {
		gml_pragma("forceinline");
		return __imgui_text_disabled(val);
	}

	/// @function TextWrapped(val)
	/// @argument {String} val
	/// @return {Undefined}
	static TextWrapped = function(val) {
		gml_pragma("forceinline");
		return __imgui_text_wrapped(val);
	}

	/// @function LabelText(label, val)
	/// @argument {String} label
	/// @argument {String} val
	/// @return {Undefined}
	static LabelText = function(label, val) {
		gml_pragma("forceinline");
		return __imgui_label_text(label, val);
	}

	/// @function BulletText(val)
	/// @argument {String} val
	/// @return {Undefined}
	static BulletText = function(val) {
		gml_pragma("forceinline");
		return __imgui_bullet_text(val);
	}

	/// @function Button(label, width, height)
	/// @argument {String} label
	/// @argument {Real} [width=0]
	/// @argument {Real} [height=0]
	/// @return {Bool}
	static Button = function(label, width=0, height=0) {
		gml_pragma("forceinline");
		return __imgui_button(label, width, height);
	}

	/// @function SmallButton(label)
	/// @argument {String} label
	/// @return {Bool}
	static SmallButton = function(label) {
		gml_pragma("forceinline");
		return __imgui_small_button(label);
	}

	/// @function InvisibleButton(_id, width, height, flags)
	/// @argument {String} _id
	/// @argument {Real} [width=0]
	/// @argument {Real} [height=0]
	/// @argument {Real} [flags=ImGuiButtonFlags.None]
	/// @return {Bool}
	static InvisibleButton = function(_id, width=0, height=0, flags=ImGuiButtonFlags.None) {
		gml_pragma("forceinline");
		return __imgui_invisible_button(_id, width, height, flags);
	}

	/// @function ArrowButton()
	/// @return {Unknown<unset>}
	static ArrowButton = function() {
		gml_pragma("forceinline");
		return __imgui_arrow_button();
	}

	/// @function Image(sprite, subimg, color, alpha, width, height)
	/// @argument {Real} sprite
	/// @argument {Real} subimg
	/// @argument {Real} [color=c_white]
	/// @argument {Real} [alpha=1]
	/// @argument {Real} [width=sprite_get_width⌊sprite⌉]
	/// @argument {Real} [height=sprite_get_height⌊sprite⌉]
	/// @return {Undefined}
	static Image = function(sprite, subimg, color=c_white, alpha=1, width=sprite_get_width(sprite), height=sprite_get_height(sprite)) {
		gml_pragma("forceinline");
		texture_set_stage(0, sprite_get_texture(sprite, subimg))
		return __imgui_image(sprite, subimg, color, alpha, width, height, sprite_get_uvs(sprite, subimg));
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