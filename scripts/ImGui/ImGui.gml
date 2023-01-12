function ImGui() constructor {
	/// @section Binds
	/// @function ColorEdit3(label, col, flags)
	/// @argument {String} label
	/// @argument {Real} col
	/// @argument {Real} [flags=ImGuiColorEditFlags.None]
	/// @return {Real}
	static ColorEdit3 = function(label, col, flags=ImGuiColorEditFlags.None) {
		gml_pragma("forceinline");
		return __imgui_color_edit3(label, col, flags);
	}

	/// @function ColorPicker3(label, col, flags)
	/// @argument {String} label
	/// @argument {Real} col
	/// @argument {Real} [flags=ImGuiColorEditFlags.None]
	/// @return {Real}
	static ColorPicker3 = function(label, col, flags=ImGuiColorEditFlags.None) {
		gml_pragma("forceinline");
		return __imgui_color_picker3(label, col, flags);
	}

	/// @function ColorEdit4(label, col, flags)
	/// @argument {String} label
	/// @argument {ImColor} col
	/// @argument {Real} [flags=ImGuiColorEditFlags.None]
	/// @return {Bool}
	static ColorEdit4 = function(label, col, flags=ImGuiColorEditFlags.None) {
		gml_pragma("forceinline");
		return __imgui_color_edit4(label, col, flags);
	}

	/// @function ColorPicker4(label, col, flags)
	/// @argument {String} label
	/// @argument {ImColor} col
	/// @argument {Real} [flags=ImGuiColorEditFlags.None]
	/// @return {Bool}
	static ColorPicker4 = function(label, col, flags=ImGuiColorEditFlags.None) {
		gml_pragma("forceinline");
		return __imgui_color_picker4(label, col, flags);
	}

	/// @function ColorButton(desc_id, color, alpha, flags, width, height)
	/// @argument {String} desc_id
	/// @argument {Real} color
	/// @argument {Real} alpha
	/// @argument {Real} [flags=ImGuiColorEditFlags.None]
	/// @argument {Real} [width=0]
	/// @argument {Real} [height=0]
	/// @return {Bool}
	static ColorButton = function(desc_id, color, alpha, flags=ImGuiColorEditFlags.None, width=0, height=0) {
		gml_pragma("forceinline");
		return __imgui_color_button(desc_id, color, alpha, flags, width, height);
	}

	/// @function SetColorEditOptions(flags)
	/// @argument {Real} [flags=ImGuiColorEditFlags.None]
	/// @return {Undefined}
	static SetColorEditOptions = function(flags=ImGuiColorEditFlags.None) {
		gml_pragma("forceinline");
		return __imgui_set_color_edit_options(flags);
	}

	/// @function BeginCombo(label, preview, flags)
	/// @argument {String} label
	/// @argument {String} preview
	/// @argument {Real} flags
	/// @return {Bool}
	static BeginCombo = function(label, preview, flags) {
		gml_pragma("forceinline");
		return __imgui_begin_combo(label, preview, flags);
	}

	/// @function EndCombo()
	/// @return {Undefined}
	static EndCombo = function() {
		gml_pragma("forceinline");
		return __imgui_end_combo();
	}

	/// @function Combo()
	/// @return {Unknown<unset>}
	static Combo = function() {
		gml_pragma("forceinline");
		return __imgui_combo();
	}

	/// @function DragFloat(label, v, v_speed, v_min, v_max, format, flags)
	/// @argument {String} label
	/// @argument {Real} v
	/// @argument {Real} [v_speed=1]
	/// @argument {Real} [v_min=0]
	/// @argument {Real} [v_max=0]
	/// @argument {String} [format=%.3f]
	/// @argument {Real} [flags=ImGuiSliderFlags.None]
	/// @return {Real}
	static DragFloat = function(label, v, v_speed=1, v_min=0, v_max=0, format="%.3f", flags=ImGuiSliderFlags.None) {
		gml_pragma("forceinline");
		return __imgui_drag_float(label, v, v_speed, v_min, v_max, format, flags);
	}

	/// @function DragFloat2(label, v, v_speed, v_min, v_max, format, flags)
	/// @argument {String} label
	/// @argument {Array<Real>} v
	/// @argument {Real} [v_speed=1]
	/// @argument {Real} [v_min=0]
	/// @argument {Real} [v_max=0]
	/// @argument {String} [format=%.3f]
	/// @argument {Real} [flags=ImGuiSliderFlags.None]
	/// @return {Bool}
	static DragFloat2 = function(label, v, v_speed=1, v_min=0, v_max=0, format="%.3f", flags=ImGuiSliderFlags.None) {
		gml_pragma("forceinline");
		return __imgui_drag_float2(label, v, v_speed, v_min, v_max, format, flags);
	}

	/// @function DragFloat3(label, v, v_speed, v_min, v_max, format, flags)
	/// @argument {String} label
	/// @argument {Array<Real>} v
	/// @argument {Real} [v_speed=1]
	/// @argument {Real} [v_min=0]
	/// @argument {Real} [v_max=0]
	/// @argument {String} [format=%.3f]
	/// @argument {Real} [flags=ImGuiSliderFlags.None]
	/// @return {Bool}
	static DragFloat3 = function(label, v, v_speed=1, v_min=0, v_max=0, format="%.3f", flags=ImGuiSliderFlags.None) {
		gml_pragma("forceinline");
		return __imgui_drag_float3(label, v, v_speed, v_min, v_max, format, flags);
	}

	/// @function DragFloat4(label, v, v_speed, v_min, v_max, format, flags)
	/// @argument {String} label
	/// @argument {Array<Real>} v
	/// @argument {Real} [v_speed=1]
	/// @argument {Real} [v_min=0]
	/// @argument {Real} [v_max=0]
	/// @argument {String} [format=%.3f]
	/// @argument {Real} [flags=ImGuiSliderFlags.None]
	/// @return {Bool}
	static DragFloat4 = function(label, v, v_speed=1, v_min=0, v_max=0, format="%.3f", flags=ImGuiSliderFlags.None) {
		gml_pragma("forceinline");
		return __imgui_drag_float4(label, v, v_speed, v_min, v_max, format, flags);
	}

	/// @function DragFloatN(label, v, count, v_speed, v_min, v_max, format, flags)
	/// @argument {String} label
	/// @argument {Array<Real>} v
	/// @argument {Real} [count=array_length⌊v⌉]
	/// @argument {Real} [v_speed=1]
	/// @argument {Real} [v_min=0]
	/// @argument {Real} [v_max=0]
	/// @argument {String} [format=%.3f]
	/// @argument {Real} [flags=ImGuiSliderFlags.None]
	/// @return {Bool}
	static DragFloatN = function(label, v, count=array_length(v), v_speed=1, v_min=0, v_max=0, format="%.3f", flags=ImGuiSliderFlags.None) {
		gml_pragma("forceinline");
		return __imgui_drag_floatn(label, v, count, v_speed, v_min, v_max, format, flags);
	}

	/// @function DragFloatRange2(label, v_current_min, v_current_max, v_speed, v_min, v_max, format_max, flags)
	/// @argument {String} label
	/// @argument {Real} v_current_min
	/// @argument {Real} v_current_max
	/// @argument {Real} [v_speed=1]
	/// @argument {Real} [v_min=0]
	/// @argument {Real} [v_max=0]
	/// @argument {String} [format_max=%.3f]
	/// @argument {Real} [flags=ImGuiSliderFlags.None]
	/// @return {Bool}
	static DragFloatRange2 = function(label, v_current_min, v_current_max, v_speed=1, v_min=0, v_max=0, format_max="%.3f", flags=ImGuiSliderFlags.None) {
		gml_pragma("forceinline");
		return __imgui_drag_float_range2(label, v_current_min, v_current_max, v_speed, v_min, v_max, format_max, flags);
	}

	/// @function DragInt(label, v, v_speed, v_min, v_max, format, flags)
	/// @argument {String} label
	/// @argument {Real} v
	/// @argument {Real} [v_speed=1]
	/// @argument {Real} [v_min=0]
	/// @argument {Real} [v_max=0]
	/// @argument {String} [format=%d]
	/// @argument {Real} [flags=ImGuiSliderFlags.None]
	/// @return {Real}
	static DragInt = function(label, v, v_speed=1, v_min=0, v_max=0, format="%d", flags=ImGuiSliderFlags.None) {
		gml_pragma("forceinline");
		return __imgui_drag_int(label, v, v_speed, v_min, v_max, format, flags);
	}

	/// @function DragInt2(label, v, v_speed, v_min, v_max, format, flags)
	/// @argument {String} label
	/// @argument {Array<Real>} v
	/// @argument {Real} [v_speed=1]
	/// @argument {Real} [v_min=0]
	/// @argument {Real} [v_max=0]
	/// @argument {String} [format=%d]
	/// @argument {Real} [flags=ImGuiSliderFlags.None]
	/// @return {Bool}
	static DragInt2 = function(label, v, v_speed=1, v_min=0, v_max=0, format="%d", flags=ImGuiSliderFlags.None) {
		gml_pragma("forceinline");
		return __imgui_drag_int2(label, v, v_speed, v_min, v_max, format, flags);
	}

	/// @function DragInt3(label, v, v_speed, v_min, v_max, format, flags)
	/// @argument {String} label
	/// @argument {Array<Real>} v
	/// @argument {Real} [v_speed=1]
	/// @argument {Real} [v_min=0]
	/// @argument {Real} [v_max=0]
	/// @argument {String} [format=%d]
	/// @argument {Real} [flags=ImGuiSliderFlags.None]
	/// @return {Bool}
	static DragInt3 = function(label, v, v_speed=1, v_min=0, v_max=0, format="%d", flags=ImGuiSliderFlags.None) {
		gml_pragma("forceinline");
		return __imgui_drag_int3(label, v, v_speed, v_min, v_max, format, flags);
	}

	/// @function DragInt4(label, v, v_speed, v_min, v_max, format, flags)
	/// @argument {String} label
	/// @argument {Array<Real>} v
	/// @argument {Real} [v_speed=1]
	/// @argument {Real} [v_min=0]
	/// @argument {Real} [v_max=0]
	/// @argument {String} [format=%d]
	/// @argument {Real} [flags=ImGuiSliderFlags.None]
	/// @return {Bool}
	static DragInt4 = function(label, v, v_speed=1, v_min=0, v_max=0, format="%d", flags=ImGuiSliderFlags.None) {
		gml_pragma("forceinline");
		return __imgui_drag_int4(label, v, v_speed, v_min, v_max, format, flags);
	}

	/// @function DragIntN(label, v, count, v_speed, v_min, v_max, format, flags)
	/// @argument {String} label
	/// @argument {Array<Real>} v
	/// @argument {Real} [count=array_length⌊v⌉]
	/// @argument {Real} [v_speed=1]
	/// @argument {Real} [v_min=0]
	/// @argument {Real} [v_max=0]
	/// @argument {String} [format=%d]
	/// @argument {Real} [flags=ImGuiSliderFlags.None]
	/// @return {Bool}
	static DragIntN = function(label, v, count=array_length(v), v_speed=1, v_min=0, v_max=0, format="%d", flags=ImGuiSliderFlags.None) {
		gml_pragma("forceinline");
		return __imgui_drag_intn(label, v, count, v_speed, v_min, v_max, format, flags);
	}

	/// @function DragIntRange2(label, v_current_min, v_current_max, v_speed, v_min, v_max, format_max, flags)
	/// @argument {String} label
	/// @argument {Real} v_current_min
	/// @argument {Real} v_current_max
	/// @argument {Real} [v_speed=1]
	/// @argument {Real} [v_min=0]
	/// @argument {Real} [v_max=0]
	/// @argument {String} [format_max=%d]
	/// @argument {Real} [flags=ImGuiSliderFlags.None]
	/// @return {Bool}
	static DragIntRange2 = function(label, v_current_min, v_current_max, v_speed=1, v_min=0, v_max=0, format_max="%d", flags=ImGuiSliderFlags.None) {
		gml_pragma("forceinline");
		return __imgui_drag_int_range2(label, v_current_min, v_current_max, v_speed, v_min, v_max, format_max, flags);
	}

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

	/// @function InputText(label, val, flags)
	/// @argument {String} label
	/// @argument {String} val
	/// @argument {Real} [flags=ImGuiInputTextFlags.None]
	/// @return {String}
	static InputText = function(label, val, flags=ImGuiInputTextFlags.None) {
		gml_pragma("forceinline");
		return __imgui_input_text(label, val, flags);
	}

	/// @function InputTextMultiline(label, val, width, height, flags)
	/// @argument {String} label
	/// @argument {String} val
	/// @argument {Real} [width=0]
	/// @argument {Real} [height=0]
	/// @argument {Real} [flags=ImGuiInputTextFlags.None]
	/// @return {String}
	static InputTextMultiline = function(label, val, width=0, height=0, flags=ImGuiInputTextFlags.None) {
		gml_pragma("forceinline");
		return __imgui_input_textmultiline(label, val, width, height, flags);
	}

	/// @function InputTextWithHint(label, hint, val, flags)
	/// @argument {String} label
	/// @argument {String} hint
	/// @argument {String} val
	/// @argument {Real} [flags=ImGuiInputTextFlags.None]
	/// @return {String}
	static InputTextWithHint = function(label, hint, val, flags=ImGuiInputTextFlags.None) {
		gml_pragma("forceinline");
		return __imgui_input_textwithhint(label, hint, val, flags);
	}

	/// @function InputFloat(label, v, step, step_fast, format, flags)
	/// @argument {String} label
	/// @argument {Real} v
	/// @argument {Real} [step=0]
	/// @argument {Real} [step_fast=0]
	/// @argument {String} [format=%.3f]
	/// @argument {Real} [flags=ImGuiInputTextFlags.None]
	/// @return {Real}
	static InputFloat = function(label, v, step=0, step_fast=0, format="%.3f", flags=ImGuiInputTextFlags.None) {
		gml_pragma("forceinline");
		return __imgui_input_float(label, v, step, step_fast, format, flags);
	}

	/// @function InputFloat2(label, v, step, step_fast, format, flags)
	/// @argument {String} label
	/// @argument {Array<Real>} v
	/// @argument {Real} [step=0]
	/// @argument {Real} [step_fast=0]
	/// @argument {String} [format=%.3f]
	/// @argument {Real} [flags=ImGuiInputTextFlags.None]
	/// @return {Bool}
	static InputFloat2 = function(label, v, step=0, step_fast=0, format="%.3f", flags=ImGuiInputTextFlags.None) {
		gml_pragma("forceinline");
		return __imgui_input_float2(label, v, step, step_fast, format, flags);
	}

	/// @function InputFloat3(label, v, step, step_fast, format, flags)
	/// @argument {String} label
	/// @argument {Array<Real>} v
	/// @argument {Real} [step=0]
	/// @argument {Real} [step_fast=0]
	/// @argument {String} [format=%.3f]
	/// @argument {Real} [flags=ImGuiInputTextFlags.None]
	/// @return {Bool}
	static InputFloat3 = function(label, v, step=0, step_fast=0, format="%.3f", flags=ImGuiInputTextFlags.None) {
		gml_pragma("forceinline");
		return __imgui_input_float3(label, v, step, step_fast, format, flags);
	}

	/// @function InputFloat4(label, v, step, step_fast, format, flags)
	/// @argument {String} label
	/// @argument {Array<Real>} v
	/// @argument {Real} [step=0]
	/// @argument {Real} [step_fast=0]
	/// @argument {String} [format=%.3f]
	/// @argument {Real} [flags=ImGuiInputTextFlags.None]
	/// @return {Bool}
	static InputFloat4 = function(label, v, step=0, step_fast=0, format="%.3f", flags=ImGuiInputTextFlags.None) {
		gml_pragma("forceinline");
		return __imgui_input_float4(label, v, step, step_fast, format, flags);
	}

	/// @function InputFloatN(label, v, count, step, step_fast, format, flags)
	/// @argument {String} label
	/// @argument {Array<Real>} v
	/// @argument {Real} [count=array_length⌊v⌉]
	/// @argument {Real} [step=0]
	/// @argument {Real} [step_fast=0]
	/// @argument {String} [format=%.3f]
	/// @argument {Real} [flags=ImGuiInputTextFlags.None]
	/// @return {Bool}
	static InputFloatN = function(label, v, count=array_length(v), step=0, step_fast=0, format="%.3f", flags=ImGuiInputTextFlags.None) {
		gml_pragma("forceinline");
		return __imgui_input_floatn(label, v, count, step, step_fast, format, flags);
	}

	/// @function InputInt(label, v, step, step_fast, flags)
	/// @argument {String} label
	/// @argument {Real} v
	/// @argument {Real} [step=0]
	/// @argument {Real} [step_fast=0]
	/// @argument {Real} [flags=ImGuiInputTextFlags.None]
	/// @return {Real}
	static InputInt = function(label, v, step=0, step_fast=0, flags=ImGuiInputTextFlags.None) {
		gml_pragma("forceinline");
		return __imgui_input_int(label, v, step, step_fast, flags);
	}

	/// @function InputInt2(label, v, flags)
	/// @argument {String} label
	/// @argument {Array<Real>} v
	/// @argument {Real} [flags=ImGuiInputTextFlags.None]
	/// @return {Bool}
	static InputInt2 = function(label, v, flags=ImGuiInputTextFlags.None) {
		gml_pragma("forceinline");
		return __imgui_input_int2(label, v, flags);
	}

	/// @function InputInt3(label, v, flags)
	/// @argument {String} label
	/// @argument {Array<Real>} v
	/// @argument {Real} [flags=ImGuiInputTextFlags.None]
	/// @return {Bool}
	static InputInt3 = function(label, v, flags=ImGuiInputTextFlags.None) {
		gml_pragma("forceinline");
		return __imgui_input_int3(label, v, flags);
	}

	/// @function InputInt4(label, v, flags)
	/// @argument {String} label
	/// @argument {Array<Real>} v
	/// @argument {Real} [flags=ImGuiInputTextFlags.None]
	/// @return {Bool}
	static InputInt4 = function(label, v, flags=ImGuiInputTextFlags.None) {
		gml_pragma("forceinline");
		return __imgui_input_int4(label, v, flags);
	}

	/// @function InputIntN(label, v, count, flags)
	/// @argument {String} label
	/// @argument {Array<Real>} v
	/// @argument {Real} [count=array_length⌊v⌉]
	/// @argument {Real} [flags=ImGuiInputTextFlags.None]
	/// @return {Bool}
	static InputIntN = function(label, v, count=array_length(v), flags=ImGuiInputTextFlags.None) {
		gml_pragma("forceinline");
		return __imgui_input_intn(label, v, count, flags);
	}

	/// @function InputDouble(label, v, step, step_fast, format, flags)
	/// @argument {String} label
	/// @argument {Real} v
	/// @argument {Real} [step=0]
	/// @argument {Real} [step_fast=0]
	/// @argument {String} [format=%.6f]
	/// @argument {Real} [flags=ImGuiInputTextFlags.None]
	/// @return {Real}
	static InputDouble = function(label, v, step=0, step_fast=0, format="%.6f", flags=ImGuiInputTextFlags.None) {
		gml_pragma("forceinline");
		return __imgui_input_double(label, v, step, step_fast, format, flags);
	}

	/// @function Spacing()
	/// @return {Undefined}
	static Spacing = function() {
		gml_pragma("forceinline");
		return __imgui_spacing();
	}

	/// @function Dummy(width, height)
	/// @argument {Real} width
	/// @argument {Real} height
	/// @return {Undefined}
	static Dummy = function(width, height) {
		gml_pragma("forceinline");
		return __imgui_dummy(width, height);
	}

	/// @function NewLine()
	/// @return {Undefined}
	static NewLine = function() {
		gml_pragma("forceinline");
		return __imgui_newline();
	}

	/// @function AlignTextToFramePadding()
	/// @return {Undefined}
	static AlignTextToFramePadding = function() {
		gml_pragma("forceinline");
		return __imgui_align_text_to_frame_padding();
	}

	/// @function Separator()
	/// @return {Undefined}
	static Separator = function() {
		gml_pragma("forceinline");
		return __imgui_separator();
	}

	/// @function SliderFloat(label, v, v_min, v_max, format, flags)
	/// @argument {String} label
	/// @argument {Real} v
	/// @argument {Real} [v_min=0]
	/// @argument {Real} [v_max=0]
	/// @argument {String} [format=%.3f]
	/// @argument {Real} [flags=ImGuiSliderFlags.None]
	/// @return {Real}
	static SliderFloat = function(label, v, v_min=0, v_max=0, format="%.3f", flags=ImGuiSliderFlags.None) {
		gml_pragma("forceinline");
		return __imgui_slider_float(label, v, v_min, v_max, format, flags);
	}

	/// @function SliderFloat2(label, v, v_min, v_max, format, flags)
	/// @argument {String} label
	/// @argument {Array<Real>} v
	/// @argument {Real} [v_min=0]
	/// @argument {Real} [v_max=0]
	/// @argument {String} [format=%.3f]
	/// @argument {Real} [flags=ImGuiSliderFlags.None]
	/// @return {Bool}
	static SliderFloat2 = function(label, v, v_min=0, v_max=0, format="%.3f", flags=ImGuiSliderFlags.None) {
		gml_pragma("forceinline");
		return __imgui_slider_float2(label, v, v_min, v_max, format, flags);
	}

	/// @function SliderFloat3(label, v, v_min, v_max, format, flags)
	/// @argument {String} label
	/// @argument {Array<Real>} v
	/// @argument {Real} [v_min=0]
	/// @argument {Real} [v_max=0]
	/// @argument {String} [format=%.3f]
	/// @argument {Real} [flags=ImGuiSliderFlags.None]
	/// @return {Bool}
	static SliderFloat3 = function(label, v, v_min=0, v_max=0, format="%.3f", flags=ImGuiSliderFlags.None) {
		gml_pragma("forceinline");
		return __imgui_slider_float3(label, v, v_min, v_max, format, flags);
	}

	/// @function SliderFloat4(label, v, v_min, v_max, format, flags)
	/// @argument {String} label
	/// @argument {Array<Real>} v
	/// @argument {Real} [v_min=0]
	/// @argument {Real} [v_max=0]
	/// @argument {String} [format=%.3f]
	/// @argument {Real} [flags=ImGuiSliderFlags.None]
	/// @return {Bool}
	static SliderFloat4 = function(label, v, v_min=0, v_max=0, format="%.3f", flags=ImGuiSliderFlags.None) {
		gml_pragma("forceinline");
		return __imgui_slider_float4(label, v, v_min, v_max, format, flags);
	}

	/// @function SliderFloatN(label, v, count, v_speed, v_min, v_max, format, flags)
	/// @argument {String} label
	/// @argument {Array<Real>} v
	/// @argument {Real} [count=array_length⌊v⌉]
	/// @argument {Real} [v_speed=1]
	/// @argument {Real} [v_min=0]
	/// @argument {Real} [v_max=0]
	/// @argument {String} [format=%.3f]
	/// @argument {Real} [flags=ImGuiSliderFlags.None]
	/// @return {Bool}
	static SliderFloatN = function(label, v, count=array_length(v), v_speed=1, v_min=0, v_max=0, format="%.3f", flags=ImGuiSliderFlags.None) {
		gml_pragma("forceinline");
		return __imgui_slider_floatn(label, v, count, v_speed, v_min, v_max, format, flags);
	}

	/// @function SliderInt(label, v, v_min, v_max, format, flags)
	/// @argument {String} label
	/// @argument {Real} v
	/// @argument {Real} [v_min=0]
	/// @argument {Real} [v_max=0]
	/// @argument {String} [format=%d]
	/// @argument {Real} [flags=ImGuiSliderFlags.None]
	/// @return {Real}
	static SliderInt = function(label, v, v_min=0, v_max=0, format="%d", flags=ImGuiSliderFlags.None) {
		gml_pragma("forceinline");
		return __imgui_slider_int(label, v, v_min, v_max, format, flags);
	}

	/// @function SliderInt2(label, v, v_min, v_max, format, flags)
	/// @argument {String} label
	/// @argument {Array<Real>} v
	/// @argument {Real} [v_min=0]
	/// @argument {Real} [v_max=0]
	/// @argument {String} [format=%d]
	/// @argument {Real} [flags=ImGuiSliderFlags.None]
	/// @return {Bool}
	static SliderInt2 = function(label, v, v_min=0, v_max=0, format="%d", flags=ImGuiSliderFlags.None) {
		gml_pragma("forceinline");
		return __imgui_slider_int2(label, v, v_min, v_max, format, flags);
	}

	/// @function SliderInt3(label, v, v_min, v_max, format, flags)
	/// @argument {String} label
	/// @argument {Array<Real>} v
	/// @argument {Real} [v_min=0]
	/// @argument {Real} [v_max=0]
	/// @argument {String} [format=%d]
	/// @argument {Real} [flags=ImGuiSliderFlags.None]
	/// @return {Bool}
	static SliderInt3 = function(label, v, v_min=0, v_max=0, format="%d", flags=ImGuiSliderFlags.None) {
		gml_pragma("forceinline");
		return __imgui_slider_int3(label, v, v_min, v_max, format, flags);
	}

	/// @function SliderInt4(label, v, v_min, v_max, format, flags)
	/// @argument {String} label
	/// @argument {Array<Real>} v
	/// @argument {Real} [v_min=0]
	/// @argument {Real} [v_max=0]
	/// @argument {String} [format=%d]
	/// @argument {Real} [flags=ImGuiSliderFlags.None]
	/// @return {Bool}
	static SliderInt4 = function(label, v, v_min=0, v_max=0, format="%d", flags=ImGuiSliderFlags.None) {
		gml_pragma("forceinline");
		return __imgui_slider_int4(label, v, v_min, v_max, format, flags);
	}

	/// @function SliderIntN(label, v, count, v_min, v_max, format, flags)
	/// @argument {String} label
	/// @argument {Array<Real>} v
	/// @argument {Real} [count=array_length⌊v⌉]
	/// @argument {Real} [v_min=0]
	/// @argument {Real} [v_max=0]
	/// @argument {String} [format=%d]
	/// @argument {Real} [flags=ImGuiSliderFlags.None]
	/// @return {Bool}
	static SliderIntN = function(label, v, count=array_length(v), v_min=0, v_max=0, format="%d", flags=ImGuiSliderFlags.None) {
		gml_pragma("forceinline");
		return __imgui_slider_intn(label, v, count, v_min, v_max, format, flags);
	}

	/// @function Text(val)
	/// @argument {String} val
	/// @return {Undefined}
	static Text = function(val) {
		gml_pragma("forceinline");
		return __imgui_text(val);
	}

	/// @function TextColored(val, color, alpha)
	/// @argument {String} val
	/// @argument {Real} color
	/// @argument {Real} [alpha=1]
	/// @return {Undefined}
	static TextColored = function(val, color, alpha=1) {
		gml_pragma("forceinline");
		return __imgui_text_colored(val, color, alpha);
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

	/// @function Checkbox(label, checked)
	/// @argument {String} label
	/// @argument {Bool} checked
	/// @return {Bool}
	static Checkbox = function(label, checked) {
		gml_pragma("forceinline");
		return __imgui_checkbox(label, checked);
	}

	/// @function CheckboxFlags()
	/// @return {Unknown<unset>}
	static CheckboxFlags = function() {
		gml_pragma("forceinline");
		return __imgui_checkbox_flags();
	}

	/// @function RadioButton(label, active)
	/// @argument {String} label
	/// @argument {Bool} active
	/// @return {Bool}
	static RadioButton = function(label, active) {
		gml_pragma("forceinline");
		return __imgui_radio_button(label, active);
	}

	/// @function ProgressBar(_frac, width, height, overlay)
	/// @argument {Real} _frac
	/// @argument {Real} [width=0]
	/// @argument {Real} [height=0]
	/// @argument {String} overlay
	/// @return {Undefined}
	static ProgressBar = function(_frac, width=0, height=0, overlay) {
		gml_pragma("forceinline");
		return __imgui_progressbar(_frac, width, height, overlay);
	}

	/// @function Bullet()
	/// @return {Undefined}
	static Bullet = function() {
		gml_pragma("forceinline");
		return __imgui_bullet();
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
		__State.Engine.Time = delta_time / 1_000_000;
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
	
	/// @section Helpers
	static Alpha = function(col) {
		return ((col >> 24) & 0xFF) / 0xFF;	
	}
};