function ImGui() constructor {
	/// @section Binds
	/// @function CreateContext()
	/// @return {Pointer}
	static CreateContext = function() {
		gml_pragma("forceinline");
		return __imgui_create_context();
	}

	/// @function DestroyContext(ctx)
	/// @argument {Pointer} ctx
	/// @return {Undefined}
	static DestroyContext = function(ctx) {
		gml_pragma("forceinline");
		return __imgui_destroy_context(ctx);
	}

	/// @function GetCurrentContext()
	/// @return {Pointer}
	static GetCurrentContext = function() {
		gml_pragma("forceinline");
		return __imgui_get_current_context();
	}

	/// @function SetCurrentContext(ctx)
	/// @argument {Pointer} ctx
	/// @return {Undefined}
	static SetCurrentContext = function(ctx) {
		gml_pragma("forceinline");
		return __imgui_set_current_context(ctx);
	}

	/// @function ShowDemoWindow(open)
	/// @argument {Bool} [open=undefined]
	/// @return {Bool}
	static ShowDemoWindow = function(open=undefined) {
		gml_pragma("forceinline");
		return __imgui_show_demo_window(open);
	}

	/// @function ShowMetricsWindow(open)
	/// @argument {Bool} [open=undefined]
	/// @return {Bool}
	static ShowMetricsWindow = function(open=undefined) {
		gml_pragma("forceinline");
		return __imgui_show_metrics_window(open);
	}

	/// @function ShowDebugLogWindow(open)
	/// @argument {Bool} [open=undefined]
	/// @return {Bool}
	static ShowDebugLogWindow = function(open=undefined) {
		gml_pragma("forceinline");
		return __imgui_show_debug_log_window(open);
	}

	/// @function ShowStackToolWindow(open)
	/// @argument {Bool} [open=undefined]
	/// @return {Bool}
	static ShowStackToolWindow = function(open=undefined) {
		gml_pragma("forceinline");
		return __imgui_show_stack_tool_window(open);
	}

	/// @function ShowAboutWindow(open)
	/// @argument {Bool} [open=undefined]
	/// @return {Bool}
	static ShowAboutWindow = function(open=undefined) {
		gml_pragma("forceinline");
		return __imgui_show_about_window(open);
	}

	/// @function ShowStyleEditor()
	/// @return {Undefined}
	static ShowStyleEditor = function() {
		gml_pragma("forceinline");
		return __imgui_show_style_editor();
	}

	/// @function ShowStyleSelector(label)
	/// @argument {String} label
	/// @return {Bool}
	static ShowStyleSelector = function(label) {
		gml_pragma("forceinline");
		return __imgui_show_style_selector(label);
	}

	/// @function ShowFontSelector(label)
	/// @argument {String} label
	/// @return {Undefined}
	static ShowFontSelector = function(label) {
		gml_pragma("forceinline");
		return __imgui_show_font_selector(label);
	}

	/// @function ShowUserGuide()
	/// @return {Undefined}
	static ShowUserGuide = function() {
		gml_pragma("forceinline");
		return __imgui_show_user_guide();
	}

	/// @function GetVersion()
	/// @return {String}
	static GetVersion = function() {
		gml_pragma("forceinline");
		return __imgui_get_version();
	}

	/// @function PushID(_id)
	/// @argument {String|Real} _id
	/// @return {Undefined}
	static PushID = function(_id) {
		gml_pragma("forceinline");
		return __imgui_push_id(_id);
	}

	/// @function PopID()
	/// @return {Undefined}
	static PopID = function() {
		gml_pragma("forceinline");
		return __imgui_pop_id();
	}

	/// @function GetID(str_id)
	/// @argument {String} str_id
	/// @return {Real}
	static GetID = function(str_id) {
		gml_pragma("forceinline");
		return __imgui_get_id(str_id);
	}

	/// @function BeginDisabled(disabled)
	/// @argument {Bool} [disabled=true]
	/// @return {Undefined}
	static BeginDisabled = function(disabled=true) {
		gml_pragma("forceinline");
		return __imgui_begin_disabled(disabled);
	}

	/// @function EndDisabled()
	/// @return {Undefined}
	static EndDisabled = function() {
		gml_pragma("forceinline");
		return __imgui_end_disabled();
	}

	/// @function IsItemHovered(flags)
	/// @argument {Real} [flags=ImGuiHoveredFlags.None]
	/// @return {Bool}
	static IsItemHovered = function(flags=ImGuiHoveredFlags.None) {
		gml_pragma("forceinline");
		return __imgui_is_item_hovered(flags);
	}

	/// @function IsItemActive()
	/// @return {Bool}
	static IsItemActive = function() {
		gml_pragma("forceinline");
		return __imgui_is_item_active();
	}

	/// @function IsItemFocused()
	/// @return {Bool}
	static IsItemFocused = function() {
		gml_pragma("forceinline");
		return __imgui_is_item_focused();
	}

	/// @function IsItemClicked(mouse_button)
	/// @argument {Real} [mouse_button=ImGuiMouseButton.Left]
	/// @return {Bool}
	static IsItemClicked = function(mouse_button=ImGuiMouseButton.Left) {
		gml_pragma("forceinline");
		return __imgui_is_item_clicked(mouse_button);
	}

	/// @function IsItemVisible()
	/// @return {Bool}
	static IsItemVisible = function() {
		gml_pragma("forceinline");
		return __imgui_is_item_visible();
	}

	/// @function IsItemEdited()
	/// @return {Bool}
	static IsItemEdited = function() {
		gml_pragma("forceinline");
		return __imgui_is_item_edited();
	}

	/// @function IsItemActivated()
	/// @return {Bool}
	static IsItemActivated = function() {
		gml_pragma("forceinline");
		return __imgui_is_item_activated();
	}

	/// @function IsItemDeactivated()
	/// @return {Bool}
	static IsItemDeactivated = function() {
		gml_pragma("forceinline");
		return __imgui_is_item_deactivated();
	}

	/// @function IsItemDeactivatedAfterEdit()
	/// @return {Bool}
	static IsItemDeactivatedAfterEdit = function() {
		gml_pragma("forceinline");
		return __imgui_is_item_deactivated_after_edit();
	}

	/// @function IsItemToggledOpen()
	/// @return {Bool}
	static IsItemToggledOpen = function() {
		gml_pragma("forceinline");
		return __imgui_is_item_toggled_open();
	}

	/// @function IsAnyItemHovered()
	/// @return {Bool}
	static IsAnyItemHovered = function() {
		gml_pragma("forceinline");
		return __imgui_is_any_item_hovered();
	}

	/// @function IsAnyItemActive()
	/// @return {Bool}
	static IsAnyItemActive = function() {
		gml_pragma("forceinline");
		return __imgui_is_any_item_active();
	}

	/// @function IsAnyItemFocused()
	/// @return {Bool}
	static IsAnyItemFocused = function() {
		gml_pragma("forceinline");
		return __imgui_is_any_item_focused();
	}

	/// @function GetItemID()
	/// @return {Real}
	static GetItemID = function() {
		gml_pragma("forceinline");
		return __imgui_get_item_id();
	}

	/// @function GetItemRectMinX()
	/// @return {Real}
	static GetItemRectMinX = function() {
		gml_pragma("forceinline");
		return __imgui_get_item_rect_min_x();
	}

	/// @function GetItemRectMinY()
	/// @return {Real}
	static GetItemRectMinY = function() {
		gml_pragma("forceinline");
		return __imgui_get_item_rect_min_y();
	}

	/// @function GetItemRectMaxX()
	/// @return {Real}
	static GetItemRectMaxX = function() {
		gml_pragma("forceinline");
		return __imgui_get_item_rect_max_x();
	}

	/// @function GetItemRectMaxY()
	/// @return {Real}
	static GetItemRectMaxY = function() {
		gml_pragma("forceinline");
		return __imgui_get_item_rect_max_y();
	}

	/// @function GetItemRectSizeX()
	/// @return {Real}
	static GetItemRectSizeX = function() {
		gml_pragma("forceinline");
		return __imgui_get_item_rect_size_x();
	}

	/// @function GetItemRectSizeY()
	/// @return {Real}
	static GetItemRectSizeY = function() {
		gml_pragma("forceinline");
		return __imgui_get_item_rect_size_y();
	}

	/// @function SetItemAllowOverlap()
	/// @return {Undefined}
	static SetItemAllowOverlap = function() {
		gml_pragma("forceinline");
		return __imgui_set_item_allow_overlap();
	}

	/// @function IsRectVisible(x1, y1, x2, y2)
	/// @argument {Real} x1
	/// @argument {Real} y1
	/// @argument {Real} x2
	/// @argument {Real} y2
	/// @return {Bool}
	static IsRectVisible = function(x1, y1, x2, y2) {
		gml_pragma("forceinline");
		return __imgui_is_rect_visible(x1, y1, x2, y2);
	}

	/// @function GetTime()
	/// @return {Real}
	static GetTime = function() {
		gml_pragma("forceinline");
		return __imgui_get_time();
	}

	/// @function GetFrameCount()
	/// @return {Real}
	static GetFrameCount = function() {
		gml_pragma("forceinline");
		return __imgui_get_frame_count();
	}

	/// @function CalcTextWidth(text, hide_text_after_double_hash, wrap_width)
	/// @argument {String} text
	/// @argument {Bool} [hide_text_after_double_hash=false]
	/// @argument {Real} [wrap_width=-1]
	/// @return {Real}
	static CalcTextWidth = function(text, hide_text_after_double_hash=false, wrap_width=-1) {
		gml_pragma("forceinline");
		return __imgui_calc_text_width(text, hide_text_after_double_hash, wrap_width);
	}

	/// @function CalcTextHeight(text, hide_text_after_double_hash, wrap_width)
	/// @argument {String} text
	/// @argument {Bool} [hide_text_after_double_hash=false]
	/// @argument {Real} [wrap_width=-1]
	/// @return {Real}
	static CalcTextHeight = function(text, hide_text_after_double_hash=false, wrap_width=-1) {
		gml_pragma("forceinline");
		return __imgui_calc_text_height(text, hide_text_after_double_hash, wrap_width);
	}

	/// @function PushAllowKeyboardFocus(allow_keyboard_focus)
	/// @argument {Bool} allow_keyboard_focus
	/// @return {Undefined}
	static PushAllowKeyboardFocus = function(allow_keyboard_focus) {
		gml_pragma("forceinline");
		return __imgui_push_allow_keyboard_focus(allow_keyboard_focus);
	}

	/// @function PopAllowKeyboardFocus()
	/// @return {Undefined}
	static PopAllowKeyboardFocus = function() {
		gml_pragma("forceinline");
		return __imgui_pop_allow_keyboard_focus();
	}

	/// @function PushButtonRepeat(_repeat)
	/// @argument {Bool} _repeat
	/// @return {Undefined}
	static PushButtonRepeat = function(_repeat) {
		gml_pragma("forceinline");
		return __imgui_push_button_repeat(_repeat);
	}

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
	/// @argument {Real} [alpha=1]
	/// @argument {Real} [flags=ImGuiColorEditFlags.None]
	/// @argument {Real} [width=0]
	/// @argument {Real} [height=0]
	/// @return {Bool}
	static ColorButton = function(desc_id, color, alpha=1, flags=ImGuiColorEditFlags.None, width=0, height=0) {
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

	/// @function DragFloatRange2(label, v, v_speed, v_min, v_max, format_min, format_max, flags)
	/// @argument {String} label
	/// @argument {Array<Real>} v
	/// @argument {Real} [v_speed=1]
	/// @argument {Real} [v_min=0]
	/// @argument {Real} [v_max=0]
	/// @argument {String} [format_min=%.3f]
	/// @argument {String} [format_max=%.3f]
	/// @argument {Real} [flags=ImGuiSliderFlags.None]
	/// @return {Bool}
	static DragFloatRange2 = function(label, v, v_speed=1, v_min=0, v_max=0, format_min="%.3f", format_max="%.3f", flags=ImGuiSliderFlags.None) {
		gml_pragma("forceinline");
		return __imgui_drag_float_range2(label, v, v_speed, v_min, v_max, format_min, format_max, flags);
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

	/// @function DragIntRange2(label, v, v_current_max, v_speed, v_min, v_max, format_max, flags)
	/// @argument {String} label
	/// @argument {Array<Real>} v
	/// @argument {Real} v_current_max
	/// @argument {Real} [v_speed=1]
	/// @argument {Real} [v_min=0]
	/// @argument {Real} [v_max=0]
	/// @argument {String} [format_max=%d]
	/// @argument {Real} [flags=ImGuiSliderFlags.None]
	/// @return {Bool}
	static DragIntRange2 = function(label, v, v_current_max, v_speed=1, v_min=0, v_max=0, format_max="%d", flags=ImGuiSliderFlags.None) {
		gml_pragma("forceinline");
		return __imgui_drag_int_range2(label, v, v_current_max, v_speed, v_min, v_max, format_max, flags);
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

	/// @function Indent(indent_w)
	/// @argument {Real} [indent_w=0]
	/// @return {Undefined}
	static Indent = function(indent_w=0) {
		gml_pragma("forceinline");
		return __imgui_indent(indent_w);
	}

	/// @function Unindent(indent_w)
	/// @argument {Real} [indent_w=0]
	/// @return {Undefined}
	static Unindent = function(indent_w=0) {
		gml_pragma("forceinline");
		return __imgui_unindent(indent_w);
	}

	/// @function SameLine(offset_from_start_x, spacing)
	/// @argument {Real} [offset_from_start_x=0]
	/// @argument {Real} [spacing=-1]
	/// @return {Undefined}
	static SameLine = function(offset_from_start_x=0, spacing=-1) {
		gml_pragma("forceinline");
		return __imgui_sameline(offset_from_start_x, spacing);
	}

	/// @function BeginGroup()
	/// @return {Undefined}
	static BeginGroup = function() {
		gml_pragma("forceinline");
		return __imgui_begin_group();
	}

	/// @function EndGroup()
	/// @return {Undefined}
	static EndGroup = function() {
		gml_pragma("forceinline");
		return __imgui_end_group();
	}

	/// @function GetCursorPosX()
	/// @return {Real}
	static GetCursorPosX = function() {
		gml_pragma("forceinline");
		return __imgui_get_cursor_pos_x();
	}

	/// @function GetCursorPosY()
	/// @return {Real}
	static GetCursorPosY = function() {
		gml_pragma("forceinline");
		return __imgui_get_cursor_pos_y();
	}

	/// @function GetCursorStartPosX()
	/// @return {Real}
	static GetCursorStartPosX = function() {
		gml_pragma("forceinline");
		return __imgui_get_cursor_start_pos_x();
	}

	/// @function GetCursorStartPosY()
	/// @return {Real}
	static GetCursorStartPosY = function() {
		gml_pragma("forceinline");
		return __imgui_get_cursor_start_pos_y();
	}

	/// @function GetCursorScreenPosX()
	/// @return {Real}
	static GetCursorScreenPosX = function() {
		gml_pragma("forceinline");
		return __imgui_get_cursor_screen_pos_x();
	}

	/// @function GetCursorScreenPosY()
	/// @return {Real}
	static GetCursorScreenPosY = function() {
		gml_pragma("forceinline");
		return __imgui_get_cursor_screen_pos_y();
	}

	/// @function SetCursorPosX(local_x)
	/// @argument {Real} local_x
	/// @return {Undefined}
	static SetCursorPosX = function(local_x) {
		gml_pragma("forceinline");
		return __imgui_set_cursor_pos_x(local_x);
	}

	/// @function SetCursorPosY(local_y)
	/// @argument {Real} local_y
	/// @return {Undefined}
	static SetCursorPosY = function(local_y) {
		gml_pragma("forceinline");
		return __imgui_set_cursor_pos_y(local_y);
	}

	/// @function GetTextLineHeight()
	/// @return {Real}
	static GetTextLineHeight = function() {
		gml_pragma("forceinline");
		return __imgui_get_text_line_height();
	}

	/// @function GetTextLineHeightWithSpacing()
	/// @return {Real}
	static GetTextLineHeightWithSpacing = function() {
		gml_pragma("forceinline");
		return __imgui_get_text_line_height_with_spacing();
	}

	/// @function GetFrameHeight()
	/// @return {Real}
	static GetFrameHeight = function() {
		gml_pragma("forceinline");
		return __imgui_get_frame_height();
	}

	/// @function GetFrameHeightWithSpacing()
	/// @return {Real}
	static GetFrameHeightWithSpacing = function() {
		gml_pragma("forceinline");
		return __imgui_get_frame_height_with_spacing();
	}

	/// @function GetContentRegionAvailX()
	/// @return {Real}
	static GetContentRegionAvailX = function() {
		gml_pragma("forceinline");
		return __imgui_get_content_region_avail_x();
	}

	/// @function GetContentRegionAvailY()
	/// @return {Real}
	static GetContentRegionAvailY = function() {
		gml_pragma("forceinline");
		return __imgui_get_content_region_avail_y();
	}

	/// @function GetContentRegionMaxX()
	/// @return {Real}
	static GetContentRegionMaxX = function() {
		gml_pragma("forceinline");
		return __imgui_get_content_region_max_x();
	}

	/// @function GetContentRegionMaxY()
	/// @return {Real}
	static GetContentRegionMaxY = function() {
		gml_pragma("forceinline");
		return __imgui_get_content_region_max_y();
	}

	/// @function GetWindowContentRegionMinX()
	/// @return {Real}
	static GetWindowContentRegionMinX = function() {
		gml_pragma("forceinline");
		return __imgui_get_window_content_region_min_x();
	}

	/// @function GetWindowContentRegionMinY()
	/// @return {Real}
	static GetWindowContentRegionMinY = function() {
		gml_pragma("forceinline");
		return __imgui_get_window_content_region_min_y();
	}

	/// @function GetWindowContentRegionMaxX()
	/// @return {Real}
	static GetWindowContentRegionMaxX = function() {
		gml_pragma("forceinline");
		return __imgui_get_window_content_region_max_x();
	}

	/// @function GetWindowContentRegionMaxY()
	/// @return {Real}
	static GetWindowContentRegionMaxY = function() {
		gml_pragma("forceinline");
		return __imgui_get_window_content_region_max_y();
	}

	/// @function BeginListBox(label, width, height)
	/// @argument {String} label
	/// @argument {Real} [width=0]
	/// @argument {Real} [height=0]
	/// @return {Bool}
	static BeginListBox = function(label, width=0, height=0) {
		gml_pragma("forceinline");
		return __imgui_begin_listbox(label, width, height);
	}

	/// @function EndListBox()
	/// @return {Undefined}
	static EndListBox = function() {
		gml_pragma("forceinline");
		return __imgui_end_listbox();
	}

	/// @function ListBox()
	/// @return {Unknown<unset>}
	static ListBox = function() {
		gml_pragma("forceinline");
		return __imgui_listbox();
	}

	/// @function BeginMenuBar()
	/// @return {Bool}
	static BeginMenuBar = function() {
		gml_pragma("forceinline");
		return __imgui_begin_menubar();
	}

	/// @function EndMainMenuBar()
	/// @return {Undefined}
	static EndMainMenuBar = function() {
		gml_pragma("forceinline");
		return __imgui_end_menubar();
	}

	/// @function BeginMainMenuBar()
	/// @return {Bool}
	static BeginMainMenuBar = function() {
		gml_pragma("forceinline");
		return __imgui_begin_mainmenubar();
	}

	/// @function EndMainMenuBar()
	/// @return {Undefined}
	static EndMainMenuBar = function() {
		gml_pragma("forceinline");
		return __imgui_end_mainmenubar();
	}

	/// @function BeginMenu(label, enabled)
	/// @argument {String} label
	/// @argument {Bool} [enabled=true]
	/// @return {Bool}
	static BeginMenu = function(label, enabled=true) {
		gml_pragma("forceinline");
		return __imgui_begin_menu(label, enabled);
	}

	/// @function EndMenu()
	/// @return {Undefined}
	static EndMenu = function() {
		gml_pragma("forceinline");
		return __imgui_end_menu();
	}

	/// @function MenuItem(label, shortcut, selected, enabled, mask)
	/// @argument {String} label
	/// @argument {String} [shortcut=]
	/// @argument {Bool} [selected=undefined]
	/// @argument {Bool} [enabled=true]
	/// @argument {Real} [mask=ImGuiReturnMask.Return]
	/// @return {Real}
	static MenuItem = function(label, shortcut="", selected=undefined, enabled=true, mask=ImGuiReturnMask.Return) {
		gml_pragma("forceinline");
		return __imgui_menu_item(label, shortcut, selected, enabled, mask);
	}

	/// @function BeginPopup(str_id, flags)
	/// @argument {String} str_id
	/// @argument {Real} [flags=ImGuiWindowFlags.None]
	/// @return {Bool}
	static BeginPopup = function(str_id, flags=ImGuiWindowFlags.None) {
		gml_pragma("forceinline");
		return __imgui_begin_popup(str_id, flags);
	}

	/// @function BeginPopupModal(name, open, flags, mask)
	/// @argument {String} name
	/// @argument {Bool} [open=undefined]
	/// @argument {Real} [flags=ImGuiWindowFlags.None]
	/// @argument {Real} [mask=ImGuiReturnMask.Return]
	/// @return {Real}
	static BeginPopupModal = function(name, open=undefined, flags=ImGuiWindowFlags.None, mask=ImGuiReturnMask.Return) {
		gml_pragma("forceinline");
		return __imgui_begin_popup_modal(name, open, flags, mask);
	}

	/// @function EndPopup()
	/// @return {Undefined}
	static EndPopup = function() {
		gml_pragma("forceinline");
		return __imgui_end_popup();
	}

	/// @function OpenPopup(str_id, flags)
	/// @argument {String} str_id
	/// @argument {Real} [flags=ImGuiPopupFlags.None]
	/// @return {Undefined}
	static OpenPopup = function(str_id, flags=ImGuiPopupFlags.None) {
		gml_pragma("forceinline");
		return __imgui_open_popup(str_id, flags);
	}

	/// @function OpenPopupOnItemClick(str_id, flags)
	/// @argument {String} [str_id=undefined]
	/// @argument {Real} [flags=ImGuiPopupFlags.MouseButtonRight]
	/// @return {Undefined}
	static OpenPopupOnItemClick = function(str_id="undefined", flags=ImGuiPopupFlags.MouseButtonRight) {
		gml_pragma("forceinline");
		return __imgui_open_popup_on_item_click(str_id, flags);
	}

	/// @function CloseCurrentPopup()
	/// @return {Undefined}
	static CloseCurrentPopup = function() {
		gml_pragma("forceinline");
		return __imgui_close_current_popup();
	}

	/// @function BeginPopupContextItem(str_id, flags)
	/// @argument {String} [str_id=undefined]
	/// @argument {Real} [flags=ImGuiPopupFlags.MouseButtonRight]
	/// @return {Bool}
	static BeginPopupContextItem = function(str_id="undefined", flags=ImGuiPopupFlags.MouseButtonRight) {
		gml_pragma("forceinline");
		return __imgui_begin_popup_context_item(str_id, flags);
	}

	/// @function BeginPopupContextWindow(str_id, flags)
	/// @argument {String} [str_id=undefined]
	/// @argument {Real} [flags=ImGuiPopupFlags.MouseButtonRight]
	/// @return {Bool}
	static BeginPopupContextWindow = function(str_id="undefined", flags=ImGuiPopupFlags.MouseButtonRight) {
		gml_pragma("forceinline");
		return __imgui_begin_popup_context_window(str_id, flags);
	}

	/// @function BeginPopupContextVoid(str_id, flags)
	/// @argument {String} [str_id=undefined]
	/// @argument {Real} [flags=ImGuiPopupFlags.MouseButtonRight]
	/// @return {Bool}
	static BeginPopupContextVoid = function(str_id="undefined", flags=ImGuiPopupFlags.MouseButtonRight) {
		gml_pragma("forceinline");
		return __imgui_begin_popup_context_void(str_id, flags);
	}

	/// @function IsPopupOpen(str_id, flags)
	/// @argument {String} str_id
	/// @argument {Real} [flags=ImGuiPopupFlags.None]
	/// @return {Bool}
	static IsPopupOpen = function(str_id, flags=ImGuiPopupFlags.None) {
		gml_pragma("forceinline");
		return __imgui_is_popup_open(str_id, flags);
	}

	/// @function Selectable(label, selected, flags, width, height)
	/// @argument {String} label
	/// @argument {Bool} [selected=false]
	/// @argument {Real} [flags=ImGuiSelectableFlags.None]
	/// @argument {Real} [width=0]
	/// @argument {Real} [height=0]
	/// @return {Bool}
	static Selectable = function(label, selected=false, flags=ImGuiSelectableFlags.None, width=0, height=0) {
		gml_pragma("forceinline");
		return __imgui_selectable(label, selected, flags, width, height);
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

	/// @function VSliderFloat(label, width, height, v, v_min, v_max, format, flags)
	/// @argument {String} label
	/// @argument {Real} width
	/// @argument {Real} height
	/// @argument {Real} v
	/// @argument {Real} [v_min=0]
	/// @argument {Real} [v_max=0]
	/// @argument {String} [format=%.3f]
	/// @argument {Real} [flags=ImGuiSliderFlags.None]
	/// @return {Real}
	static VSliderFloat = function(label, width, height, v, v_min=0, v_max=0, format="%.3f", flags=ImGuiSliderFlags.None) {
		gml_pragma("forceinline");
		return __imgui_vslider_float(label, width, height, v, v_min, v_max, format, flags);
	}

	/// @function VSliderInt(label, width, height, v, v_min, v_max, format, flags)
	/// @argument {String} label
	/// @argument {Real} width
	/// @argument {Real} height
	/// @argument {Real} v
	/// @argument {Real} [v_min=0]
	/// @argument {Real} [v_max=0]
	/// @argument {String} [format=%d]
	/// @argument {Real} [flags=ImGuiSliderFlags.None]
	/// @return {Real}
	static VSliderInt = function(label, width, height, v, v_min=0, v_max=0, format="%d", flags=ImGuiSliderFlags.None) {
		gml_pragma("forceinline");
		return __imgui_vslider_int(label, width, height, v, v_min, v_max, format, flags);
	}

	/// @function StyleColorsDark()
	/// @return {Undefined}
	static StyleColorsDark = function() {
		gml_pragma("forceinline");
		return __imgui_style_colors_dark();
	}

	/// @function StyleColorsDark()
	/// @return {Undefined}
	static StyleColorsDark = function() {
		gml_pragma("forceinline");
		return __imgui_style_colors_light();
	}

	/// @function StyleColorsClassic()
	/// @return {Undefined}
	static StyleColorsClassic = function() {
		gml_pragma("forceinline");
		return __imgui_style_colors_classic();
	}

	/// @function PushStyleColor(idx, col, alpha)
	/// @argument {Real} idx
	/// @argument {Real} col
	/// @argument {Real} alpha
	/// @return {Undefined}
	static PushStyleColor = function(idx, col, alpha) {
		gml_pragma("forceinline");
		return __imgui_push_style_color(idx, col, alpha);
	}

	/// @function PopStyleColor(count)
	/// @argument {Real} [count=1]
	/// @return {Undefined}
	static PopStyleColor = function(count=1) {
		gml_pragma("forceinline");
		return __imgui_pop_style_color(count);
	}

	/// @function PushStyleVar(idx, val, val2)
	/// @argument {Real} idx
	/// @argument {Real} val
	/// @argument {Any} [val2=undefined]
	/// @return {Undefined}
	static PushStyleVar = function(idx, val, val2=undefined) {
		gml_pragma("forceinline");
		return __imgui_push_style_var(idx, val, val2);
	}

	/// @function PopStyleVar(count)
	/// @argument {Real} [count=1]
	/// @return {Undefined}
	static PopStyleVar = function(count=1) {
		gml_pragma("forceinline");
		return __imgui_pop_style_var(count);
	}

	/// @function GetFontSize()
	/// @return {Real}
	static GetFontSize = function() {
		gml_pragma("forceinline");
		return __imgui_get_font_size();
	}

	/// @function GetStyleColor(idx)
	/// @argument {Real} idx
	/// @return {Real}
	static GetStyleColor = function(idx) {
		gml_pragma("forceinline");
		return __imgui_get_style_color(idx);
	}

	/// @function GetStyleColorName(idx)
	/// @argument {Real} idx
	/// @return {String}
	static GetStyleColorName = function(idx) {
		gml_pragma("forceinline");
		return __imgui_get_style_color_name(idx);
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

	/// @function Value()
	/// @return {Unknown<unset>}
	static Value = function() {
		gml_pragma("forceinline");
		return __imgui_value();
	}

	/// @function BeginTooltip()
	/// @return {Undefined}
	static BeginTooltip = function() {
		gml_pragma("forceinline");
		return __imgui_begin_tooltip();
	}

	/// @function EndTooltip()
	/// @return {Undefined}
	static EndTooltip = function() {
		gml_pragma("forceinline");
		return __imgui_end_tooltip();
	}

	/// @function SetTooltip(val)
	/// @argument {String} val
	/// @return {Undefined}
	static SetTooltip = function(val) {
		gml_pragma("forceinline");
		return __imgui_set_tooltip(val);
	}

	/// @function TreeNode(label)
	/// @argument {String} label
	/// @return {Bool}
	static TreeNode = function(label) {
		gml_pragma("forceinline");
		return __imgui_tree_node(label);
	}

	/// @function TreeNodeEx(label, flags)
	/// @argument {String} label
	/// @argument {Real} [flags=ImGuiTreeNodeFlags.None]
	/// @return {Bool}
	static TreeNodeEx = function(label, flags=ImGuiTreeNodeFlags.None) {
		gml_pragma("forceinline");
		return __imgui_tree_node_ex(label, flags);
	}

	/// @function TreePush(str_id)
	/// @argument {String} str_id
	/// @return {Undefined}
	static TreePush = function(str_id) {
		gml_pragma("forceinline");
		return __imgui_tree_push(str_id);
	}

	/// @function TreePop()
	/// @return {Undefined}
	static TreePop = function() {
		gml_pragma("forceinline");
		return __imgui_tree_pop();
	}

	/// @function GetTreeNodeToLabelSpacing()
	/// @return {Real}
	static GetTreeNodeToLabelSpacing = function() {
		gml_pragma("forceinline");
		return __imgui_get_tree_node_to_label_spacing();
	}

	/// @function SetNextItemOpen(is_open, cond)
	/// @argument {Bool} is_open
	/// @argument {Real} [cond=ImGuiCond.None]
	/// @return {Undefined}
	static SetNextItemOpen = function(is_open, cond=ImGuiCond.None) {
		gml_pragma("forceinline");
		return __imgui_set_next_item_open(is_open, cond);
	}

	/// @function CollapsingHeader(label, _visible, flags, mask)
	/// @argument {String} label
	/// @argument {Bool} [_visible=undefined]
	/// @argument {Real} [flags=ImGuiTreeNodeFlags.None]
	/// @argument {Real} [mask=ImGuiReturnMask.Return]
	/// @return {Real}
	static CollapsingHeader = function(label, _visible=undefined, flags=ImGuiTreeNodeFlags.None, mask=ImGuiReturnMask.Return) {
		gml_pragma("forceinline");
		return __imgui_collapsing_header(label, _visible, flags, mask);
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

	/// @function ArrowButton(str_id, dir)
	/// @argument {String} str_id
	/// @argument {Real} dir
	/// @return {Bool}
	static ArrowButton = function(str_id, dir) {
		gml_pragma("forceinline");
		return __imgui_arrow_button(str_id, dir);
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

	/// @function Surface(surface, color, alpha, width, height)
	/// @argument {Real} surface
	/// @argument {Real} [color=c_white]
	/// @argument {Real} [alpha=1]
	/// @argument {Real} [width=surface_get_width⌊surface⌉]
	/// @argument {Real} [height=surface_get_height⌊surface⌉]
	/// @return {Undefined}
	static Surface = function(surface, color=c_white, alpha=1, width=surface_get_width(surface), height=surface_get_height(surface)) {
		gml_pragma("forceinline");
		var _tex = surface_get_texture(surface); texture_set_stage(0, _tex)
		return __imgui_surface(surface, color, alpha, width, height, texture_get_uvs(_tex));
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
	/// @argument {String} [overlay=]
	/// @return {Undefined}
	static ProgressBar = function(_frac, width=0, height=0, overlay="") {
		gml_pragma("forceinline");
		return __imgui_progressbar(_frac, width, height, overlay);
	}

	/// @function Bullet()
	/// @return {Undefined}
	static Bullet = function() {
		gml_pragma("forceinline");
		return __imgui_bullet();
	}

	/// @function Begin(name, open, flags, mask)
	/// @argument {String} name
	/// @argument {Bool} [open=undefined]
	/// @argument {Real} [flags=ImGuiWindowFlags.None]
	/// @argument {Real} [mask=ImGuiReturnMask.Return]
	/// @return {Real}
	static Begin = function(name, open=undefined, flags=ImGuiWindowFlags.None, mask=ImGuiReturnMask.Return) {
		gml_pragma("forceinline");
		return __imgui_begin(name, open, flags, mask);
	}

	/// @function End()
	/// @return {Undefined}
	static End = function() {
		gml_pragma("forceinline");
		return __imgui_end();
	}

	/// @function BeginChild(str_id, width, height, border, flags)
	/// @argument {String} str_id
	/// @argument {Real} [width=0]
	/// @argument {Real} [height=0]
	/// @argument {Bool} [border=false]
	/// @argument {Real} [flags=ImGuiWindowFlags.None]
	/// @return {Bool}
	static BeginChild = function(str_id, width=0, height=0, border=false, flags=ImGuiWindowFlags.None) {
		gml_pragma("forceinline");
		return __imgui_begin_child(str_id, width, height, border, flags);
	}

	/// @function EndChild()
	/// @return {Undefined}
	static EndChild = function() {
		gml_pragma("forceinline");
		return __imgui_end_child();
	}

	/// @function IsWindowAppearing()
	/// @return {Bool}
	static IsWindowAppearing = function() {
		gml_pragma("forceinline");
		return __imgui_is_window_appearing();
	}

	/// @function IsWindowCollapsed()
	/// @return {Bool}
	static IsWindowCollapsed = function() {
		gml_pragma("forceinline");
		return __imgui_is_window_collapsed();
	}

	/// @function IsWindowFocused(flags)
	/// @argument {Real} [flags=ImGuiFocusedFlags.None]
	/// @return {Bool}
	static IsWindowFocused = function(flags=ImGuiFocusedFlags.None) {
		gml_pragma("forceinline");
		return __imgui_is_window_focused(flags);
	}

	/// @function IsWindowHovered(flags)
	/// @argument {Real} [flags=ImGuiHoveredFlags.None]
	/// @return {Bool}
	static IsWindowHovered = function(flags=ImGuiHoveredFlags.None) {
		gml_pragma("forceinline");
		return __imgui_is_window_hovered(flags);
	}

	/// @function GetWindowDpiScale()
	/// @return {Real}
	static GetWindowDpiScale = function() {
		gml_pragma("forceinline");
		return __imgui_get_window_dpi_scale();
	}

	/// @function GetWindowPosX()
	/// @return {Real}
	static GetWindowPosX = function() {
		gml_pragma("forceinline");
		return __imgui_get_window_x();
	}

	/// @function GetWindowPosY()
	/// @return {Real}
	static GetWindowPosY = function() {
		gml_pragma("forceinline");
		return __imgui_get_window_y();
	}

	/// @function GetWindowWidth()
	/// @return {Real}
	static GetWindowWidth = function() {
		gml_pragma("forceinline");
		return __imgui_get_window_width();
	}

	/// @function GetWindowHeight()
	/// @return {Real}
	static GetWindowHeight = function() {
		gml_pragma("forceinline");
		return __imgui_get_window_height();
	}

	/// @function SetNextWindowPos(_x, _y, cond, pivot_x, pivot_y)
	/// @argument {Real} _x
	/// @argument {Real} _y
	/// @argument {Real} [cond=ImGuiCond.None]
	/// @argument {Real} [pivot_x=0]
	/// @argument {Real} [pivot_y=0]
	/// @return {Undefined}
	static SetNextWindowPos = function(_x, _y, cond=ImGuiCond.None, pivot_x=0, pivot_y=0) {
		gml_pragma("forceinline");
		return __imgui_set_next_window_pos(_x, _y, cond, pivot_x, pivot_y);
	}

	/// @function SetNextWindowSize(width, height, cond)
	/// @argument {Real} width
	/// @argument {Real} height
	/// @argument {Real} [cond=ImGuiCond.None]
	/// @return {Undefined}
	static SetNextWindowSize = function(width, height, cond=ImGuiCond.None) {
		gml_pragma("forceinline");
		return __imgui_set_next_window_size(width, height, cond);
	}

	/// @function SetNextWindowSizeConstraints(min_width, min_height, max_width, max_height)
	/// @argument {Real} min_width
	/// @argument {Real} min_height
	/// @argument {Real} max_width
	/// @argument {Real} max_height
	/// @return {Undefined}
	static SetNextWindowSizeConstraints = function(min_width, min_height, max_width, max_height) {
		gml_pragma("forceinline");
		return __imgui_set_next_window_size_constraints(min_width, min_height, max_width, max_height);
	}

	/// @function SetNextWindowContentSize(width, height)
	/// @argument {Real} width
	/// @argument {Real} height
	/// @return {Undefined}
	static SetNextWindowContentSize = function(width, height) {
		gml_pragma("forceinline");
		return __imgui_set_next_window_content_size(width, height);
	}

	/// @function SetNextWindowCollapsed(collapsed, cond)
	/// @argument {Bool} collapsed
	/// @argument {Real} [cond=ImGuiCond.None]
	/// @return {Undefined}
	static SetNextWindowCollapsed = function(collapsed, cond=ImGuiCond.None) {
		gml_pragma("forceinline");
		return __imgui_set_next_window_collapsed(collapsed, cond);
	}

	/// @function SetNextWindowFocus()
	/// @return {Undefined}
	static SetNextWindowFocus = function() {
		gml_pragma("forceinline");
		return __imgui_set_next_window_focus();
	}

	/// @function SetNextWindowScroll(scroll_x, scroll_y)
	/// @argument {Real} scroll_x
	/// @argument {Real} scroll_y
	/// @return {Undefined}
	static SetNextWindowScroll = function(scroll_x, scroll_y) {
		gml_pragma("forceinline");
		return __imgui_set_next_window_scroll(scroll_x, scroll_y);
	}

	/// @function SetNextWindowBgAlpha(alpha)
	/// @argument {Real} alpha
	/// @return {Undefined}
	static SetNextWindowBgAlpha = function(alpha) {
		gml_pragma("forceinline");
		return __imgui_set_next_window_bgalpha(alpha);
	}

	/// @function GetScrollX()
	/// @return {Real}
	static GetScrollX = function() {
		gml_pragma("forceinline");
		return __imgui_get_scroll_x();
	}

	/// @function GetScrollY()
	/// @return {Real}
	static GetScrollY = function() {
		gml_pragma("forceinline");
		return __imgui_get_scroll_y();
	}

	/// @function SetScrollX(scroll_x)
	/// @argument {Real} scroll_x
	/// @return {Undefined}
	static SetScrollX = function(scroll_x) {
		gml_pragma("forceinline");
		return __imgui_set_scroll_x(scroll_x);
	}

	/// @function SetScrollY(scroll_y)
	/// @argument {Real} scroll_y
	/// @return {Undefined}
	static SetScrollY = function(scroll_y) {
		gml_pragma("forceinline");
		return __imgui_set_scroll_y(scroll_y);
	}

	/// @function GetScrollMaxX()
	/// @return {Real}
	static GetScrollMaxX = function() {
		gml_pragma("forceinline");
		return __imgui_get_scroll_max_x();
	}

	/// @function GetScrollMaxY()
	/// @return {Real}
	static GetScrollMaxY = function() {
		gml_pragma("forceinline");
		return __imgui_get_scroll_max_y();
	}

	/// @function SetScrollHereX(center_x_ratio)
	/// @argument {Real} [center_x_ratio=0.5]
	/// @return {Undefined}
	static SetScrollHereX = function(center_x_ratio=0.5) {
		gml_pragma("forceinline");
		return __imgui_set_scroll_here_x(center_x_ratio);
	}

	/// @function SetScrollHereY(center_y_ratio)
	/// @argument {Real} [center_y_ratio=0.5]
	/// @return {Undefined}
	static SetScrollHereY = function(center_y_ratio=0.5) {
		gml_pragma("forceinline");
		return __imgui_set_scroll_here_y(center_y_ratio);
	}

	/// @function SetScrollFromPosX(local_x, center_x_ratio)
	/// @argument {Real} local_x
	/// @argument {Real} [center_x_ratio=0.5]
	/// @return {Undefined}
	static SetScrollFromPosX = function(local_x, center_x_ratio=0.5) {
		gml_pragma("forceinline");
		return __imgui_set_scroll_from_pos_x(local_x, center_x_ratio);
	}

	/// @function SetScrollFromPosY(local_y, center_y_ratio)
	/// @argument {Real} local_y
	/// @argument {Real} [center_y_ratio=0.5]
	/// @return {Undefined}
	static SetScrollFromPosY = function(local_y, center_y_ratio=0.5) {
		gml_pragma("forceinline");
		return __imgui_set_scroll_from_pos_y(local_y, center_y_ratio);
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