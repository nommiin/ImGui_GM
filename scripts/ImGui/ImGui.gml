function ImGui() constructor {
	/// @section Binds
	/// @function CreateContext()
	/// @context ImGui
	/// @return {Pointer}
	static CreateContext = function() {
		gml_pragma("forceinline");
		return __imgui_create_context();
	}

	/// @function DestroyContext(ctx)
	/// @argument {Pointer} ctx
	/// @context ImGui
	/// @return {Undefined}
	static DestroyContext = function(ctx) {
		gml_pragma("forceinline");
		return __imgui_destroy_context(ctx);
	}

	/// @function GetCurrentContext()
	/// @context ImGui
	/// @return {Pointer}
	static GetCurrentContext = function() {
		gml_pragma("forceinline");
		return __imgui_get_current_context();
	}

	/// @function SetCurrentContext(ctx)
	/// @argument {Pointer} ctx
	/// @context ImGui
	/// @return {Undefined}
	static SetCurrentContext = function(ctx) {
		gml_pragma("forceinline");
		return __imgui_set_current_context(ctx);
	}

	/// @function ShowDemoWindow(open)
	/// @argument {Bool} [open=undefined]
	/// @context ImGui
	/// @return {Bool}
	static ShowDemoWindow = function(open=undefined) {
		gml_pragma("forceinline");
		return __imgui_show_demo_window(open);
	}

	/// @function ShowMetricsWindow(open)
	/// @argument {Bool} [open=undefined]
	/// @context ImGui
	/// @return {Bool}
	static ShowMetricsWindow = function(open=undefined) {
		gml_pragma("forceinline");
		return __imgui_show_metrics_window(open);
	}

	/// @function ShowDebugLogWindow(open)
	/// @argument {Bool} [open=undefined]
	/// @context ImGui
	/// @return {Bool}
	static ShowDebugLogWindow = function(open=undefined) {
		gml_pragma("forceinline");
		return __imgui_show_debug_log_window(open);
	}

	/// @function ShowStackToolWindow(open)
	/// @argument {Bool} [open=undefined]
	/// @context ImGui
	/// @return {Bool}
	static ShowStackToolWindow = function(open=undefined) {
		gml_pragma("forceinline");
		return __imgui_show_stack_tool_window(open);
	}

	/// @function ShowAboutWindow(open)
	/// @argument {Bool} [open=undefined]
	/// @context ImGui
	/// @return {Bool}
	static ShowAboutWindow = function(open=undefined) {
		gml_pragma("forceinline");
		return __imgui_show_about_window(open);
	}

	/// @function ShowStyleEditor()
	/// @context ImGui
	/// @return {Undefined}
	static ShowStyleEditor = function() {
		gml_pragma("forceinline");
		return __imgui_show_style_editor();
	}

	/// @function ShowStyleSelector(label)
	/// @argument {String} label
	/// @context ImGui
	/// @return {Bool}
	static ShowStyleSelector = function(label) {
		gml_pragma("forceinline");
		return __imgui_show_style_selector(label);
	}

	/// @function ShowFontSelector(label)
	/// @argument {String} label
	/// @context ImGui
	/// @return {Undefined}
	static ShowFontSelector = function(label) {
		gml_pragma("forceinline");
		return __imgui_show_font_selector(label);
	}

	/// @function ShowUserGuide()
	/// @context ImGui
	/// @return {Undefined}
	static ShowUserGuide = function() {
		gml_pragma("forceinline");
		return __imgui_show_user_guide();
	}

	/// @function GetVersion()
	/// @context ImGui
	/// @return {String}
	static GetVersion = function() {
		gml_pragma("forceinline");
		return __imgui_get_version();
	}

	/// @function PushID(_id)
	/// @argument {String|Real} _id
	/// @context ImGui
	/// @return {Undefined}
	static PushID = function(_id) {
		gml_pragma("forceinline");
		return __imgui_push_id(_id);
	}

	/// @function PopID()
	/// @context ImGui
	/// @return {Undefined}
	static PopID = function() {
		gml_pragma("forceinline");
		return __imgui_pop_id();
	}

	/// @function GetID(str_id)
	/// @argument {String} str_id
	/// @context ImGui
	/// @return {Real}
	static GetID = function(str_id) {
		gml_pragma("forceinline");
		return __imgui_get_id(str_id);
	}

	/// @function BeginDisabled(disabled)
	/// @argument {Bool} [disabled=true]
	/// @context ImGui
	/// @return {Undefined}
	static BeginDisabled = function(disabled=true) {
		gml_pragma("forceinline");
		return __imgui_begin_disabled(disabled);
	}

	/// @function EndDisabled()
	/// @context ImGui
	/// @return {Undefined}
	static EndDisabled = function() {
		gml_pragma("forceinline");
		return __imgui_end_disabled();
	}

	/// @function IsItemHovered(flags)
	/// @argument {Enum.ImGuiHoveredFlags} [flags=ImGuiHoveredFlags.None]
	/// @context ImGui
	/// @return {Bool}
	static IsItemHovered = function(flags=ImGuiHoveredFlags.None) {
		gml_pragma("forceinline");
		return __imgui_is_item_hovered(flags);
	}

	/// @function IsItemActive()
	/// @context ImGui
	/// @return {Bool}
	static IsItemActive = function() {
		gml_pragma("forceinline");
		return __imgui_is_item_active();
	}

	/// @function IsItemFocused()
	/// @context ImGui
	/// @return {Bool}
	static IsItemFocused = function() {
		gml_pragma("forceinline");
		return __imgui_is_item_focused();
	}

	/// @function IsItemClicked(mouse_button)
	/// @argument {Enum.ImGuiMouseButton} [mouse_button=ImGuiMouseButton.Left]
	/// @context ImGui
	/// @return {Bool}
	static IsItemClicked = function(mouse_button=ImGuiMouseButton.Left) {
		gml_pragma("forceinline");
		return __imgui_is_item_clicked(mouse_button);
	}

	/// @function IsItemVisible()
	/// @context ImGui
	/// @return {Bool}
	static IsItemVisible = function() {
		gml_pragma("forceinline");
		return __imgui_is_item_visible();
	}

	/// @function IsItemEdited()
	/// @context ImGui
	/// @return {Bool}
	static IsItemEdited = function() {
		gml_pragma("forceinline");
		return __imgui_is_item_edited();
	}

	/// @function IsItemActivated()
	/// @context ImGui
	/// @return {Bool}
	static IsItemActivated = function() {
		gml_pragma("forceinline");
		return __imgui_is_item_activated();
	}

	/// @function IsItemDeactivated()
	/// @context ImGui
	/// @return {Bool}
	static IsItemDeactivated = function() {
		gml_pragma("forceinline");
		return __imgui_is_item_deactivated();
	}

	/// @function IsItemDeactivatedAfterEdit()
	/// @context ImGui
	/// @return {Bool}
	static IsItemDeactivatedAfterEdit = function() {
		gml_pragma("forceinline");
		return __imgui_is_item_deactivated_after_edit();
	}

	/// @function IsItemToggledOpen()
	/// @context ImGui
	/// @return {Bool}
	static IsItemToggledOpen = function() {
		gml_pragma("forceinline");
		return __imgui_is_item_toggled_open();
	}

	/// @function IsAnyItemHovered()
	/// @context ImGui
	/// @return {Bool}
	static IsAnyItemHovered = function() {
		gml_pragma("forceinline");
		return __imgui_is_any_item_hovered();
	}

	/// @function IsAnyItemActive()
	/// @context ImGui
	/// @return {Bool}
	static IsAnyItemActive = function() {
		gml_pragma("forceinline");
		return __imgui_is_any_item_active();
	}

	/// @function IsAnyItemFocused()
	/// @context ImGui
	/// @return {Bool}
	static IsAnyItemFocused = function() {
		gml_pragma("forceinline");
		return __imgui_is_any_item_focused();
	}

	/// @function GetItemID()
	/// @context ImGui
	/// @return {Real}
	static GetItemID = function() {
		gml_pragma("forceinline");
		return __imgui_get_item_id();
	}

	/// @function GetItemRectMinX()
	/// @context ImGui
	/// @return {Real}
	static GetItemRectMinX = function() {
		gml_pragma("forceinline");
		return __imgui_get_item_rect_min_x();
	}

	/// @function GetItemRectMinY()
	/// @context ImGui
	/// @return {Real}
	static GetItemRectMinY = function() {
		gml_pragma("forceinline");
		return __imgui_get_item_rect_min_y();
	}

	/// @function GetItemRectMaxX()
	/// @context ImGui
	/// @return {Real}
	static GetItemRectMaxX = function() {
		gml_pragma("forceinline");
		return __imgui_get_item_rect_max_x();
	}

	/// @function GetItemRectMaxY()
	/// @context ImGui
	/// @return {Real}
	static GetItemRectMaxY = function() {
		gml_pragma("forceinline");
		return __imgui_get_item_rect_max_y();
	}

	/// @function GetItemRectSizeX()
	/// @context ImGui
	/// @return {Real}
	static GetItemRectSizeX = function() {
		gml_pragma("forceinline");
		return __imgui_get_item_rect_size_x();
	}

	/// @function GetItemRectSizeY()
	/// @context ImGui
	/// @return {Real}
	static GetItemRectSizeY = function() {
		gml_pragma("forceinline");
		return __imgui_get_item_rect_size_y();
	}

	/// @function SetItemAllowOverlap()
	/// @context ImGui
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
	/// @context ImGui
	/// @return {Bool}
	static IsRectVisible = function(x1, y1, x2, y2) {
		gml_pragma("forceinline");
		return __imgui_is_rect_visible(x1, y1, x2, y2);
	}

	/// @function GetTime()
	/// @context ImGui
	/// @return {Real}
	static GetTime = function() {
		gml_pragma("forceinline");
		return __imgui_get_time();
	}

	/// @function GetFrameCount()
	/// @context ImGui
	/// @return {Real}
	static GetFrameCount = function() {
		gml_pragma("forceinline");
		return __imgui_get_frame_count();
	}

	/// @function CalcTextWidth(text, hide_text_after_double_hash, wrap_width)
	/// @argument {String} text
	/// @argument {Bool} [hide_text_after_double_hash=false]
	/// @argument {Real} [wrap_width=-1]
	/// @context ImGui
	/// @return {Real}
	static CalcTextWidth = function(text, hide_text_after_double_hash=false, wrap_width=-1) {
		gml_pragma("forceinline");
		return __imgui_calc_text_width(text, hide_text_after_double_hash, wrap_width);
	}

	/// @function CalcTextHeight(text, hide_text_after_double_hash, wrap_width)
	/// @argument {String} text
	/// @argument {Bool} [hide_text_after_double_hash=false]
	/// @argument {Real} [wrap_width=-1]
	/// @context ImGui
	/// @return {Real}
	static CalcTextHeight = function(text, hide_text_after_double_hash=false, wrap_width=-1) {
		gml_pragma("forceinline");
		return __imgui_calc_text_height(text, hide_text_after_double_hash, wrap_width);
	}

	/// @function PushAllowKeyboardFocus(allow_keyboard_focus)
	/// @argument {Bool} allow_keyboard_focus
	/// @context ImGui
	/// @return {Undefined}
	static PushAllowKeyboardFocus = function(allow_keyboard_focus) {
		gml_pragma("forceinline");
		return __imgui_push_allow_keyboard_focus(allow_keyboard_focus);
	}

	/// @function PopAllowKeyboardFocus()
	/// @context ImGui
	/// @return {Undefined}
	static PopAllowKeyboardFocus = function() {
		gml_pragma("forceinline");
		return __imgui_pop_allow_keyboard_focus();
	}

	/// @function SetKeyboardFocusHere(offset)
	/// @argument {Real} [offset=0]
	/// @context ImGui
	/// @return {Undefined}
	static SetKeyboardFocusHere = function(offset=0) {
		gml_pragma("forceinline");
		return __imgui_set_keyboard_focus_here(offset);
	}

	/// @function PushButtonRepeat(_repeat)
	/// @argument {Bool} _repeat
	/// @context ImGui
	/// @return {Undefined}
	static PushButtonRepeat = function(_repeat) {
		gml_pragma("forceinline");
		return __imgui_push_button_repeat(_repeat);
	}

	/// @function PopButtonRepeat()
	/// @context ImGui
	/// @return {Undefined}
	static PopButtonRepeat = function() {
		gml_pragma("forceinline");
		return __imgui_pop_button_repeat();
	}

	/// @function SetItemDefaultFocus()
	/// @context ImGui
	/// @return {Undefined}
	static SetItemDefaultFocus = function() {
		gml_pragma("forceinline");
		return __imgui_set_item_default_focus();
	}

	/// @function ConfigFlagsGet()
	/// @context ImGui
	/// @return {Real}
	static ConfigFlagsGet = function() {
		gml_pragma("forceinline");
		return __imgui_config_flags_get();
	}

	/// @function ConfigFlagsSet(flags)
	/// @argument {Real} flags
	/// @context ImGui
	/// @return {Unknown<unset>}
	static ConfigFlagsSet = function(flags) {
		gml_pragma("forceinline");
		return __imgui_config_flags_set(flags);
	}

	/// @function ConfigFlagToggle(flag)
	/// @argument {Real} flag
	/// @context ImGui
	/// @return {Bool}
	static ConfigFlagToggle = function(flag) {
		gml_pragma("forceinline");
		return __imgui_config_flag_toggle(flag);
	}

	/// @function GetMainViewport()
	/// @context ImGui
	/// @return {Pointer}
	static GetMainViewport = function() {
		gml_pragma("forceinline");
		return __imgui_get_main_viewport();
	}

	/// @function ColorEdit3(label, col, flags)
	/// @argument {String} label
	/// @argument {Real} col
	/// @argument {Enum.ImGuiCol} [flags=ImGuiColorEditFlags.None]
	/// @context ImGui
	/// @return {Real}
	static ColorEdit3 = function(label, col, flags=ImGuiColorEditFlags.None) {
		gml_pragma("forceinline");
		return __imgui_color_edit3(label, col, flags);
	}

	/// @function ColorPicker3(label, col, flags)
	/// @argument {String} label
	/// @argument {Real} col
	/// @argument {Enum.ImGuiCol} [flags=ImGuiColorEditFlags.None]
	/// @context ImGui
	/// @return {Real}
	static ColorPicker3 = function(label, col, flags=ImGuiColorEditFlags.None) {
		gml_pragma("forceinline");
		return __imgui_color_picker3(label, col, flags);
	}

	/// @function ColorEdit4(label, col, flags)
	/// @argument {String} label
	/// @argument {ImColor} col
	/// @argument {Enum.ImGuiCol} [flags=ImGuiColorEditFlags.None]
	/// @context ImGui
	/// @return {Bool}
	static ColorEdit4 = function(label, col, flags=ImGuiColorEditFlags.None) {
		gml_pragma("forceinline");
		return __imgui_color_edit4(label, col, flags);
	}

	/// @function ColorPicker4(label, col, flags)
	/// @argument {String} label
	/// @argument {ImColor} col
	/// @argument {Enum.ImGuiCol} [flags=ImGuiColorEditFlags.None]
	/// @context ImGui
	/// @return {Bool}
	static ColorPicker4 = function(label, col, flags=ImGuiColorEditFlags.None) {
		gml_pragma("forceinline");
		return __imgui_color_picker4(label, col, flags);
	}

	/// @function ColorButton(desc_id, color, alpha, flags, width, height)
	/// @argument {String} desc_id
	/// @argument {Real} color
	/// @argument {Real} [alpha=1]
	/// @argument {Enum.ImGuiCol} [flags=ImGuiColorEditFlags.None]
	/// @argument {Real} [width=0]
	/// @argument {Real} [height=0]
	/// @context ImGui
	/// @return {Bool}
	static ColorButton = function(desc_id, color, alpha=1, flags=ImGuiColorEditFlags.None, width=0, height=0) {
		gml_pragma("forceinline");
		return __imgui_color_button(desc_id, color, alpha, flags, width, height);
	}

	/// @function SetColorEditOptions(flags)
	/// @argument {Enum.ImGuiCol} [flags=ImGuiColorEditFlags.None]
	/// @context ImGui
	/// @return {Undefined}
	static SetColorEditOptions = function(flags=ImGuiColorEditFlags.None) {
		gml_pragma("forceinline");
		return __imgui_set_color_edit_options(flags);
	}

	/// @function BeginCombo(label, preview, flags)
	/// @argument {String} label
	/// @argument {String} preview
	/// @argument {Real} flags
	/// @context ImGui
	/// @return {Bool}
	static BeginCombo = function(label, preview, flags) {
		gml_pragma("forceinline");
		return __imgui_begin_combo(label, preview, flags);
	}

	/// @function EndCombo()
	/// @context ImGui
	/// @return {Undefined}
	static EndCombo = function() {
		gml_pragma("forceinline");
		return __imgui_end_combo();
	}

	/// @function Combo()
	/// @context ImGui
	/// @return {Unknown<unset>}
	static Combo = function() {
		gml_pragma("forceinline");
		return __imgui_combo();
	}

	/// @function DockSpace(_id, width, height, flags)
	/// @argument {Real} _id
	/// @argument {Real} [width=0]
	/// @argument {Real} [height=0]
	/// @argument {Enum.ImGuiDockNodeFlags} [flags=ImGuiDockNodeFlags.None]
	/// @context ImGui
	/// @return {Real}
	static DockSpace = function(_id, width=0, height=0, flags=ImGuiDockNodeFlags.None) {
		gml_pragma("forceinline");
		return __imgui_dock_space(_id, width, height, flags);
	}

	/// @function DockSpaceOverViewport(flags)
	/// @argument {Enum.ImGuiDockNodeFlags} [flags=ImGuiDockNodeFlags.None]
	/// @context ImGui
	/// @return {Real}
	static DockSpaceOverViewport = function(flags=ImGuiDockNodeFlags.None) {
		gml_pragma("forceinline");
		return __imgui_dock_space_over_viewport(flags);
	}

	/// @function SetNextWindowDockID(dock_id, cond)
	/// @argument {Real} dock_id
	/// @argument {Real} cond
	/// @context ImGui
	/// @return {Undefined}
	static SetNextWindowDockID = function(dock_id, cond) {
		gml_pragma("forceinline");
		return __imgui_set_next_window_dock_id(dock_id, cond);
	}

	/// @function SetNextWindowClass()
	/// @context ImGui
	/// @return {Unknown<unset>}
	static SetNextWindowClass = function() {
		gml_pragma("forceinline");
		return __imgui_set_next_window_class();
	}

	/// @function GetWindowDockID()
	/// @context ImGui
	/// @return {Real}
	static GetWindowDockID = function() {
		gml_pragma("forceinline");
		return __imgui_get_window_dock_id();
	}

	/// @function IsWindowDocked()
	/// @context ImGui
	/// @return {Bool}
	static IsWindowDocked = function() {
		gml_pragma("forceinline");
		return __imgui_is_window_docked();
	}

	/// @function DragFloat(label, v, v_speed, v_min, v_max, format, flags)
	/// @argument {String} label
	/// @argument {Real} v
	/// @argument {Real} [v_speed=1]
	/// @argument {Real} [v_min=0]
	/// @argument {Real} [v_max=0]
	/// @argument {String} [format=%.3f]
	/// @argument {Enum.ImGuiSliderFlags} [flags=ImGuiSliderFlags.None]
	/// @context ImGui
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
	/// @argument {Enum.ImGuiSliderFlags} [flags=ImGuiSliderFlags.None]
	/// @context ImGui
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
	/// @argument {Enum.ImGuiSliderFlags} [flags=ImGuiSliderFlags.None]
	/// @context ImGui
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
	/// @argument {Enum.ImGuiSliderFlags} [flags=ImGuiSliderFlags.None]
	/// @context ImGui
	/// @return {Bool}
	static DragFloat4 = function(label, v, v_speed=1, v_min=0, v_max=0, format="%.3f", flags=ImGuiSliderFlags.None) {
		gml_pragma("forceinline");
		return __imgui_drag_float4(label, v, v_speed, v_min, v_max, format, flags);
	}

	/// @function DragFloatN(label, v, v_speed, v_min, v_max, format, flags)
	/// @argument {String} label
	/// @argument {Array<Real>} v
	/// @argument {Real} [v_speed=1]
	/// @argument {Real} [v_min=0]
	/// @argument {Real} [v_max=0]
	/// @argument {String} [format=%.3f]
	/// @argument {Enum.ImGuiSliderFlags} [flags=ImGuiSliderFlags.None]
	/// @context ImGui
	/// @return {Bool}
	static DragFloatN = function(label, v, v_speed=1, v_min=0, v_max=0, format="%.3f", flags=ImGuiSliderFlags.None) {
		gml_pragma("forceinline");
		return __imgui_drag_floatn(label, v, v_speed, v_min, v_max, format, flags, array_length(v));
	}

	/// @function DragFloatRange2(label, v, v_speed, v_min, v_max, format_min, format_max, flags)
	/// @argument {String} label
	/// @argument {Array<Real>} v
	/// @argument {Real} [v_speed=1]
	/// @argument {Real} [v_min=0]
	/// @argument {Real} [v_max=0]
	/// @argument {String} [format_min=%.3f]
	/// @argument {String} [format_max=%.3f]
	/// @argument {Enum.ImGuiSliderFlags} [flags=ImGuiSliderFlags.None]
	/// @context ImGui
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
	/// @argument {Enum.ImGuiSliderFlags} [flags=ImGuiSliderFlags.None]
	/// @context ImGui
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
	/// @argument {Enum.ImGuiSliderFlags} [flags=ImGuiSliderFlags.None]
	/// @context ImGui
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
	/// @argument {Enum.ImGuiSliderFlags} [flags=ImGuiSliderFlags.None]
	/// @context ImGui
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
	/// @argument {Enum.ImGuiSliderFlags} [flags=ImGuiSliderFlags.None]
	/// @context ImGui
	/// @return {Bool}
	static DragInt4 = function(label, v, v_speed=1, v_min=0, v_max=0, format="%d", flags=ImGuiSliderFlags.None) {
		gml_pragma("forceinline");
		return __imgui_drag_int4(label, v, v_speed, v_min, v_max, format, flags);
	}

	/// @function DragIntN(label, v, v_speed, v_min, v_max, format, flags)
	/// @argument {String} label
	/// @argument {Array<Real>} v
	/// @argument {Real} [v_speed=1]
	/// @argument {Real} [v_min=0]
	/// @argument {Real} [v_max=0]
	/// @argument {String} [format=%d]
	/// @argument {Enum.ImGuiSliderFlags} [flags=ImGuiSliderFlags.None]
	/// @context ImGui
	/// @return {Bool}
	static DragIntN = function(label, v, v_speed=1, v_min=0, v_max=0, format="%d", flags=ImGuiSliderFlags.None) {
		gml_pragma("forceinline");
		return __imgui_drag_intn(label, v, v_speed, v_min, v_max, format, flags, array_length(v));
	}

	/// @function DragIntRange2(label, v, v_current_max, v_speed, v_min, v_max, format_max, flags)
	/// @argument {String} label
	/// @argument {Array<Real>} v
	/// @argument {Real} v_current_max
	/// @argument {Real} [v_speed=1]
	/// @argument {Real} [v_min=0]
	/// @argument {Real} [v_max=0]
	/// @argument {String} [format_max=%d]
	/// @argument {Enum.ImGuiSliderFlags} [flags=ImGuiSliderFlags.None]
	/// @context ImGui
	/// @return {Bool}
	static DragIntRange2 = function(label, v, v_current_max, v_speed=1, v_min=0, v_max=0, format_max="%d", flags=ImGuiSliderFlags.None) {
		gml_pragma("forceinline");
		return __imgui_drag_int_range2(label, v, v_current_max, v_speed, v_min, v_max, format_max, flags);
	}

	/// @function GetBackgroundDrawList(viewport)
	/// @argument {Pointer} [viewport=undefined]
	/// @context ImGui
	/// @return {Pointer}
	static GetBackgroundDrawList = function(viewport=undefined) {
		gml_pragma("forceinline");
		return __imgui_get_background_drawlist(viewport);
	}

	/// @function GetForegroundDrawList(viewport)
	/// @argument {Pointer} [viewport=undefined]
	/// @context ImGui
	/// @return {Pointer}
	static GetForegroundDrawList = function(viewport=undefined) {
		gml_pragma("forceinline");
		return __imgui_get_foreground_drawlist(viewport);
	}

	/// @function GetWindowDrawList()
	/// @context ImGui
	/// @return {Pointer}
	static GetWindowDrawList = function() {
		gml_pragma("forceinline");
		return __imgui_get_window_drawlist();
	}

	/// @function DrawListAddLine(list, x1, y1, x2, y2, col, thickness)
	/// @argument {Pointer} list
	/// @argument {Real} x1
	/// @argument {Real} y1
	/// @argument {Real} x2
	/// @argument {Real} y2
	/// @argument {Real} col
	/// @argument {Real} [thickness=1]
	/// @context ImGui
	/// @return {Undefined}
	static DrawListAddLine = function(list, x1, y1, x2, y2, col, thickness=1) {
		gml_pragma("forceinline");
		return __imgui_drawlist_add_line(list, x1, y1, x2, y2, col, thickness);
	}

	/// @function DrawListAddRect(list, x1, y1, x2, y2, col, rounding, flags, thickness)
	/// @argument {Pointer} list
	/// @argument {Real} x1
	/// @argument {Real} y1
	/// @argument {Real} x2
	/// @argument {Real} y2
	/// @argument {Real} col
	/// @argument {Real} [rounding=0]
	/// @argument {Enum.ImDrawFlags} [flags=ImDrawFlags.None]
	/// @argument {Real} [thickness=1]
	/// @context ImGui
	/// @return {Undefined}
	static DrawListAddRect = function(list, x1, y1, x2, y2, col, rounding=0, flags=ImDrawFlags.None, thickness=1) {
		gml_pragma("forceinline");
		return __imgui_drawlist_add_rect(list, x1, y1, x2, y2, col, rounding, flags, thickness);
	}

	/// @function DrawListAddRectFilled(list, x1, y1, x2, y2, col, rounding, flags)
	/// @argument {Pointer} list
	/// @argument {Real} x1
	/// @argument {Real} y1
	/// @argument {Real} x2
	/// @argument {Real} y2
	/// @argument {Real} col
	/// @argument {Real} [rounding=0]
	/// @argument {Enum.ImDrawFlags} [flags=ImDrawFlags.None]
	/// @context ImGui
	/// @return {Undefined}
	static DrawListAddRectFilled = function(list, x1, y1, x2, y2, col, rounding=0, flags=ImDrawFlags.None) {
		gml_pragma("forceinline");
		return __imgui_drawlist_add_rect_filled(list, x1, y1, x2, y2, col, rounding, flags);
	}

	/// @function DrawListAddRectFilledMultiColor(list, x1, y1, x2, y2, col1, col2, col3, col4)
	/// @argument {Pointer} list
	/// @argument {Real} x1
	/// @argument {Real} y1
	/// @argument {Real} x2
	/// @argument {Real} y2
	/// @argument {Real} col1
	/// @argument {Real} col2
	/// @argument {Real} col3
	/// @argument {Real} col4
	/// @context ImGui
	/// @return {Undefined}
	static DrawListAddRectFilledMultiColor = function(list, x1, y1, x2, y2, col1, col2, col3, col4) {
		gml_pragma("forceinline");
		return __imgui_drawlist_add_rect_filled_multicolor(list, x1, y1, x2, y2, col1, col2, col3, col4);
	}

	/// @function DrawListAddQuad(list, x1, y1, x2, y2, x3, y3, x4, y4, col, thickness)
	/// @argument {Pointer} list
	/// @argument {Real} x1
	/// @argument {Real} y1
	/// @argument {Real} x2
	/// @argument {Real} y2
	/// @argument {Real} x3
	/// @argument {Real} y3
	/// @argument {Real} x4
	/// @argument {Real} y4
	/// @argument {Real} col
	/// @argument {Real} [thickness=1]
	/// @context ImGui
	/// @return {Undefined}
	static DrawListAddQuad = function(list, x1, y1, x2, y2, x3, y3, x4, y4, col, thickness=1) {
		gml_pragma("forceinline");
		return __imgui_drawlist_add_quad(list, x1, y1, x2, y2, x3, y3, x4, y4, col, thickness);
	}

	/// @function DrawListAddQuadFilled(list, x1, y1, x2, y2, x3, y3, x4, y4, col)
	/// @argument {Pointer} list
	/// @argument {Real} x1
	/// @argument {Real} y1
	/// @argument {Real} x2
	/// @argument {Real} y2
	/// @argument {Real} x3
	/// @argument {Real} y3
	/// @argument {Real} x4
	/// @argument {Real} y4
	/// @argument {Real} col
	/// @context ImGui
	/// @return {Undefined}
	static DrawListAddQuadFilled = function(list, x1, y1, x2, y2, x3, y3, x4, y4, col) {
		gml_pragma("forceinline");
		return __imgui_drawlist_add_quad_filled(list, x1, y1, x2, y2, x3, y3, x4, y4, col);
	}

	/// @function DrawListAddTriangle(list, x1, y1, x2, y2, x3, y3, col, thickness)
	/// @argument {Pointer} list
	/// @argument {Real} x1
	/// @argument {Real} y1
	/// @argument {Real} x2
	/// @argument {Real} y2
	/// @argument {Real} x3
	/// @argument {Real} y3
	/// @argument {Real} col
	/// @argument {Real} [thickness=1]
	/// @context ImGui
	/// @return {Undefined}
	static DrawListAddTriangle = function(list, x1, y1, x2, y2, x3, y3, col, thickness=1) {
		gml_pragma("forceinline");
		return __imgui_drawlist_add_triangle(list, x1, y1, x2, y2, x3, y3, col, thickness);
	}

	/// @function DrawListAddTriangleFilled(list, x1, y1, x2, y2, x3, y3, col)
	/// @argument {Pointer} list
	/// @argument {Real} x1
	/// @argument {Real} y1
	/// @argument {Real} x2
	/// @argument {Real} y2
	/// @argument {Real} x3
	/// @argument {Real} y3
	/// @argument {Real} col
	/// @context ImGui
	/// @return {Undefined}
	static DrawListAddTriangleFilled = function(list, x1, y1, x2, y2, x3, y3, col) {
		gml_pragma("forceinline");
		return __imgui_drawlist_add_triangle_filled(list, x1, y1, x2, y2, x3, y3, col);
	}

	/// @function DrawListAddCircle(list, _x, _y, radius, col, num_segments, thickness)
	/// @argument {Pointer} list
	/// @argument {Real} _x
	/// @argument {Real} _y
	/// @argument {Real} radius
	/// @argument {Real} col
	/// @argument {Real} [num_segments=0]
	/// @argument {Real} [thickness=1]
	/// @context ImGui
	/// @return {Undefined}
	static DrawListAddCircle = function(list, _x, _y, radius, col, num_segments=0, thickness=1) {
		gml_pragma("forceinline");
		return __imgui_drawlist_add_circle(list, _x, _y, radius, col, num_segments, thickness);
	}

	/// @function DrawListAddCircleFilled(list, _x, _y, radius, col, num_segments)
	/// @argument {Pointer} list
	/// @argument {Real} _x
	/// @argument {Real} _y
	/// @argument {Real} radius
	/// @argument {Real} col
	/// @argument {Real} [num_segments=0]
	/// @context ImGui
	/// @return {Undefined}
	static DrawListAddCircleFilled = function(list, _x, _y, radius, col, num_segments=0) {
		gml_pragma("forceinline");
		return __imgui_drawlist_add_circle_filled(list, _x, _y, radius, col, num_segments);
	}

	/// @function DrawListAddNgon(list, _x, _y, radius, col, num_segments, thickness)
	/// @argument {Pointer} list
	/// @argument {Real} _x
	/// @argument {Real} _y
	/// @argument {Real} radius
	/// @argument {Real} col
	/// @argument {Real} [num_segments=0]
	/// @argument {Real} [thickness=1]
	/// @context ImGui
	/// @return {Undefined}
	static DrawListAddNgon = function(list, _x, _y, radius, col, num_segments=0, thickness=1) {
		gml_pragma("forceinline");
		return __imgui_drawlist_add_ngon(list, _x, _y, radius, col, num_segments, thickness);
	}

	/// @function DrawListAddNgonFilled(list, _x, _y, radius, col, num_segments)
	/// @argument {Pointer} list
	/// @argument {Real} _x
	/// @argument {Real} _y
	/// @argument {Real} radius
	/// @argument {Real} col
	/// @argument {Real} [num_segments=0]
	/// @context ImGui
	/// @return {Undefined}
	static DrawListAddNgonFilled = function(list, _x, _y, radius, col, num_segments=0) {
		gml_pragma("forceinline");
		return __imgui_drawlist_add_ngon_filled(list, _x, _y, radius, col, num_segments);
	}

	/// @function DrawListAddText(list, _x, _y, text, col)
	/// @argument {Pointer} list
	/// @argument {Real} _x
	/// @argument {Real} _y
	/// @argument {String} text
	/// @argument {Real} col
	/// @context ImGui
	/// @return {Undefined}
	static DrawListAddText = function(list, _x, _y, text, col) {
		gml_pragma("forceinline");
		return __imgui_drawlist_add_text(list, _x, _y, text, col);
	}

	/// @function DrawListAddTextFont(list, _x, _y, text, col, font, font_size, wrap_width)
	/// @argument {Pointer} list
	/// @argument {Real} _x
	/// @argument {Real} _y
	/// @argument {String} text
	/// @argument {Real} col
	/// @argument {Pointer} font
	/// @argument {Real} font_size
	/// @argument {Real} [wrap_width=0]
	/// @context ImGui
	/// @return {Undefined}
	static DrawListAddTextFont = function(list, _x, _y, text, col, font, font_size, wrap_width=0) {
		gml_pragma("forceinline");
		return __imgui_drawlist_add_text_font(list, _x, _y, text, col, font, font_size, wrap_width);
	}

	/// @function DrawListAddPolyline(list, positions, col, flags, thickness)
	/// @argument {Pointer} list
	/// @argument {Array<Real>} positions
	/// @argument {Real} col
	/// @argument {Enum.ImDrawFlags} flags
	/// @argument {Real} thickness
	/// @context ImGui
	/// @return {Undefined}
	static DrawListAddPolyline = function(list, positions, col, flags, thickness) {
		gml_pragma("forceinline");
		return __imgui_drawlist_add_polyline(list, positions, col, flags, thickness, array_length(positions));
	}

	/// @function DrawListAddConvexPolyFilled(list, positions, col)
	/// @argument {Pointer} list
	/// @argument {Array<Real>} positions
	/// @argument {Real} col
	/// @context ImGui
	/// @return {Undefined}
	static DrawListAddConvexPolyFilled = function(list, positions, col) {
		gml_pragma("forceinline");
		return __imgui_drawlist_add_convex_poly_filled(list, positions, col, array_length(positions));
	}

	/// @function DrawListAddBezierCubic(list, x1, y1, x2, y2, x3, y3, x4, y4, col, thickness, num_segments)
	/// @argument {Pointer} list
	/// @argument {Real} x1
	/// @argument {Real} y1
	/// @argument {Real} x2
	/// @argument {Real} y2
	/// @argument {Real} x3
	/// @argument {Real} y3
	/// @argument {Real} x4
	/// @argument {Real} y4
	/// @argument {Real} col
	/// @argument {Real} thickness
	/// @argument {Real} [num_segments=0]
	/// @context ImGui
	/// @return {Undefined}
	static DrawListAddBezierCubic = function(list, x1, y1, x2, y2, x3, y3, x4, y4, col, thickness, num_segments=0) {
		gml_pragma("forceinline");
		return __imgui_drawlist_add_bezier_cubic(list, x1, y1, x2, y2, x3, y3, x4, y4, col, thickness, num_segments);
	}

	/// @function DrawListAddBezierQuadratic(list, x1, y1, x2, y2, x3, y3, col, thickness, num_segments)
	/// @argument {Pointer} list
	/// @argument {Real} x1
	/// @argument {Real} y1
	/// @argument {Real} x2
	/// @argument {Real} y2
	/// @argument {Real} x3
	/// @argument {Real} y3
	/// @argument {Real} col
	/// @argument {Real} thickness
	/// @argument {Real} [num_segments=0]
	/// @context ImGui
	/// @return {Undefined}
	static DrawListAddBezierQuadratic = function(list, x1, y1, x2, y2, x3, y3, col, thickness, num_segments=0) {
		gml_pragma("forceinline");
		return __imgui_drawlist_add_bezier_quadratic(list, x1, y1, x2, y2, x3, y3, col, thickness, num_segments);
	}

	/// @function DrawListPathFillConvex(list, col)
	/// @argument {Pointer} list
	/// @argument {Real} col
	/// @context ImGui
	/// @return {Undefined}
	static DrawListPathFillConvex = function(list, col) {
		gml_pragma("forceinline");
		return __imgui_drawlist_path_fill_convex(list, col);
	}

	/// @function DrawListPathStroke(list, col, flags, thickness)
	/// @argument {Pointer} list
	/// @argument {Real} col
	/// @argument {Enum.ImDrawFlags} [flags=ImDrawFlags.None]
	/// @argument {Real} [thickness=1]
	/// @context ImGui
	/// @return {Undefined}
	static DrawListPathStroke = function(list, col, flags=ImDrawFlags.None, thickness=1) {
		gml_pragma("forceinline");
		return __imgui_drawlist_path_stroke(list, col, flags, thickness);
	}

	/// @function DrawListPathClear(list)
	/// @argument {Pointer} list
	/// @context ImGui
	/// @return {Undefined}
	static DrawListPathClear = function(list) {
		gml_pragma("forceinline");
		return __imgui_drawlist_path_clear(list);
	}

	/// @function DrawListPathLineTo(list, _x, _y)
	/// @argument {Pointer} list
	/// @argument {Real} _x
	/// @argument {Real} _y
	/// @context ImGui
	/// @return {Undefined}
	static DrawListPathLineTo = function(list, _x, _y) {
		gml_pragma("forceinline");
		return __imgui_drawlist_path_line_to(list, _x, _y);
	}

	/// @function DrawListPathLineToMergeDuplicate(list, _x, _y)
	/// @argument {Pointer} list
	/// @argument {Real} _x
	/// @argument {Real} _y
	/// @context ImGui
	/// @return {Undefined}
	static DrawListPathLineToMergeDuplicate = function(list, _x, _y) {
		gml_pragma("forceinline");
		return __imgui_drawlist_path_line_to_merge_duplicate(list, _x, _y);
	}

	/// @function DrawListPathArcTo(list, _x, _y, radius, a_min, a_max, num_segments)
	/// @argument {Pointer} list
	/// @argument {Real} _x
	/// @argument {Real} _y
	/// @argument {Real} radius
	/// @argument {Real} a_min
	/// @argument {Real} a_max
	/// @argument {Real} [num_segments=0]
	/// @context ImGui
	/// @return {Undefined}
	static DrawListPathArcTo = function(list, _x, _y, radius, a_min, a_max, num_segments=0) {
		gml_pragma("forceinline");
		return __imgui_drawlist_path_arc_to(list, _x, _y, radius, a_min, a_max, num_segments);
	}

	/// @function DrawListPathArcToFast(list, _x, _y, radius, a_min_of_12, a_max_of_12)
	/// @argument {Pointer} list
	/// @argument {Real} _x
	/// @argument {Real} _y
	/// @argument {Real} radius
	/// @argument {Real} a_min_of_12
	/// @argument {Real} a_max_of_12
	/// @context ImGui
	/// @return {Undefined}
	static DrawListPathArcToFast = function(list, _x, _y, radius, a_min_of_12, a_max_of_12) {
		gml_pragma("forceinline");
		return __imgui_drawlist_path_arc_to_fast(list, _x, _y, radius, a_min_of_12, a_max_of_12);
	}

	/// @function DrawListPathBezierCubicCurveTo(list, x2, y2, x3, y3, x4, y4, num_segments)
	/// @argument {Pointer} list
	/// @argument {Real} x2
	/// @argument {Real} y2
	/// @argument {Real} x3
	/// @argument {Real} y3
	/// @argument {Real} x4
	/// @argument {Real} y4
	/// @argument {Real} [num_segments=0]
	/// @context ImGui
	/// @return {Undefined}
	static DrawListPathBezierCubicCurveTo = function(list, x2, y2, x3, y3, x4, y4, num_segments=0) {
		gml_pragma("forceinline");
		return __imgui_drawlist_path_bezier_cubic_curve_to(list, x2, y2, x3, y3, x4, y4, num_segments);
	}

	/// @function DrawListPathBezierQuadraticCurveTo(list, x2, y2, x3, y3, num_segments)
	/// @argument {Pointer} list
	/// @argument {Real} x2
	/// @argument {Real} y2
	/// @argument {Real} x3
	/// @argument {Real} y3
	/// @argument {Real} [num_segments=0]
	/// @context ImGui
	/// @return {Undefined}
	static DrawListPathBezierQuadraticCurveTo = function(list, x2, y2, x3, y3, num_segments=0) {
		gml_pragma("forceinline");
		return __imgui_drawlist_path_bezier_quadratic_curve_to(list, x2, y2, x3, y3, num_segments);
	}

	/// @function DrawListPathRect(list, x1, y1, x2, y2, rounding, flags)
	/// @argument {Pointer} list
	/// @argument {Real} x1
	/// @argument {Real} y1
	/// @argument {Real} x2
	/// @argument {Real} y2
	/// @argument {Real} [rounding=0]
	/// @argument {Enum.ImDrawFlags} [flags=ImDrawFlags.None]
	/// @context ImGui
	/// @return {Undefined}
	static DrawListPathRect = function(list, x1, y1, x2, y2, rounding=0, flags=ImDrawFlags.None) {
		gml_pragma("forceinline");
		return __imgui_drawlist_path_rect(list, x1, y1, x2, y2, rounding, flags);
	}

	/// @function DrawListAddImage(list, sprite, subimg, x1, y1, x2, y2, col)
	/// @argument {Pointer} list
	/// @argument {Real} sprite
	/// @argument {Real} subimg
	/// @argument {Real} x1
	/// @argument {Real} y1
	/// @argument {Real} x2
	/// @argument {Real} y2
	/// @argument {Real} [col=c_white]
	/// @context ImGui
	/// @return {Undefined}
	static DrawListAddImage = function(list, sprite, subimg, x1, y1, x2, y2, col=c_white) {
		gml_pragma("forceinline");
		texture_set_stage(0, sprite_get_texture(sprite, subimg))
		return __imgui_drawlist_add_image(list, sprite, subimg, x1, y1, x2, y2, col, sprite_get_uvs(sprite, subimg));
	}

	/// @function DrawListAddImageRounded(list, sprite, subimg, x1, y1, x2, y2, col, rounding, flags)
	/// @argument {Pointer} list
	/// @argument {Real} sprite
	/// @argument {Real} subimg
	/// @argument {Real} x1
	/// @argument {Real} y1
	/// @argument {Real} x2
	/// @argument {Real} y2
	/// @argument {Real} col
	/// @argument {Real} rounding
	/// @argument {Real} flags
	/// @context ImGui
	/// @return {Undefined}
	static DrawListAddImageRounded = function(list, sprite, subimg, x1, y1, x2, y2, col, rounding, flags) {
		gml_pragma("forceinline");
		texture_set_stage(0, sprite_get_texture(sprite, subimg))
		return __imgui_drawlist_add_image_rounded(list, sprite, subimg, x1, y1, x2, y2, col, rounding, flags, sprite_get_uvs(sprite, subimg));
	}

	/// @function DrawListPushClipRect(list, clip_min_x, clip_min_y, clip_max_x, clip_max_y, intersect_with_current_clip_rect)
	/// @argument {Pointer} list
	/// @argument {Real} clip_min_x
	/// @argument {Real} clip_min_y
	/// @argument {Real} clip_max_x
	/// @argument {Real} clip_max_y
	/// @argument {Bool} intersect_with_current_clip_rect
	/// @context ImGui
	/// @return {Undefined}
	static DrawListPushClipRect = function(list, clip_min_x, clip_min_y, clip_max_x, clip_max_y, intersect_with_current_clip_rect) {
		gml_pragma("forceinline");
		return __imgui_drawlist_push_clip_rect(list, clip_min_x, clip_min_y, clip_max_x, clip_max_y, intersect_with_current_clip_rect);
	}

	/// @function DrawlistPushClipRectFullscreen(list)
	/// @argument {Pointer} list
	/// @context ImGui
	/// @return {Undefined}
	static DrawlistPushClipRectFullscreen = function(list) {
		gml_pragma("forceinline");
		return __imgui_drawlist_push_clip_rect_fullscreen(list);
	}

	/// @function DrawListPopClipRect(list)
	/// @argument {Pointer} list
	/// @context ImGui
	/// @return {Undefined}
	static DrawListPopClipRect = function(list) {
		gml_pragma("forceinline");
		return __imgui_drawlist_pop_clip_rect(list);
	}

	/// @function DrawListPushTextureID(list, sprite, subimg)
	/// @argument {Pointer} list
	/// @argument {Real} sprite
	/// @argument {Real} subimg
	/// @context ImGui
	/// @return {Undefined}
	static DrawListPushTextureID = function(list, sprite, subimg) {
		gml_pragma("forceinline");
		texture_set_stage(0, sprite_get_texture(sprite, subimg))
		return __imgui_drawlist_push_textureid(list, sprite, subimg);
	}

	/// @function DrawListPopTextureID(list)
	/// @argument {Pointer} list
	/// @context ImGui
	/// @return {Undefined}
	static DrawListPopTextureID = function(list) {
		gml_pragma("forceinline");
		return __imgui_drawlist_pop_textureid(list);
	}

	/// @function DrawListFlagsGet(list)
	/// @argument {Pointer} list
	/// @context ImGui
	/// @return {Real}
	static DrawListFlagsGet = function(list) {
		gml_pragma("forceinline");
		return __imgui_drawlist_flags_get(list);
	}

	/// @function DrawListFlagsSet(list, flags)
	/// @argument {Pointer} list
	/// @argument {Real} flags
	/// @context ImGui
	/// @return {Undefined}
	static DrawListFlagsSet = function(list, flags) {
		gml_pragma("forceinline");
		return __imgui_drawlist_flags_set(list, flags);
	}

	/// @function DrawListFlagToggle(list, flag)
	/// @argument {Pointer} list
	/// @argument {Real} flag
	/// @context ImGui
	/// @return {Bool}
	static DrawListFlagToggle = function(list, flag) {
		gml_pragma("forceinline");
		return __imgui_drawlist_flag_toggle(list, flag);
	}

	/// @function GetFont()
	/// @context ImGui
	/// @return {Pointer}
	static GetFont = function() {
		gml_pragma("forceinline");
		return __imgui_get_font();
	}

	/// @function GetFontSize()
	/// @context ImGui
	/// @return {Real}
	static GetFontSize = function() {
		gml_pragma("forceinline");
		return __imgui_get_font_size();
	}

	/// @function PushFont(ptr)
	/// @argument {Any} [ptr=undefined]
	/// @context ImGui
	/// @return {Undefined}
	static PushFont = function(ptr=undefined) {
		gml_pragma("forceinline");
		return __imgui_push_font(ptr);
	}

	/// @function PopFont()
	/// @context ImGui
	/// @return {Undefined}
	static PopFont = function() {
		gml_pragma("forceinline");
		return __imgui_pop_font();
	}

	/// @function AddFontFromFile(file, size)
	/// @argument {String} file
	/// @argument {Real} size
	/// @context ImGui
	/// @return {Pointer|Undefined}
	static AddFontFromFile = function(file, size) {
		gml_pragma("forceinline");
		return __imgui_add_font_from_file(file, size);
	}

	/// @function AddFontDefault()
	/// @context ImGui
	/// @return {Unknown<unset>}
	static AddFontDefault = function() {
		gml_pragma("forceinline");
		return __imgui_add_font_default();
	}

	/// @function InputText(label, val, flags)
	/// @argument {String} label
	/// @argument {String} val
	/// @argument {Enum.ImGuiInputTextFlags} [flags=ImGuiInputTextFlags.None]
	/// @context ImGui
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
	/// @argument {Enum.ImGuiInputTextFlags} [flags=ImGuiInputTextFlags.None]
	/// @context ImGui
	/// @return {String}
	static InputTextMultiline = function(label, val, width=0, height=0, flags=ImGuiInputTextFlags.None) {
		gml_pragma("forceinline");
		return __imgui_input_textmultiline(label, val, width, height, flags);
	}

	/// @function InputTextWithHint(label, hint, val, flags)
	/// @argument {String} label
	/// @argument {String} hint
	/// @argument {String} val
	/// @argument {Enum.ImGuiInputTextFlags} [flags=ImGuiInputTextFlags.None]
	/// @context ImGui
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
	/// @argument {Enum.ImGuiInputTextFlags} [flags=ImGuiInputTextFlags.None]
	/// @context ImGui
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
	/// @argument {Enum.ImGuiInputTextFlags} [flags=ImGuiInputTextFlags.None]
	/// @context ImGui
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
	/// @argument {Enum.ImGuiInputTextFlags} [flags=ImGuiInputTextFlags.None]
	/// @context ImGui
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
	/// @argument {Enum.ImGuiInputTextFlags} [flags=ImGuiInputTextFlags.None]
	/// @context ImGui
	/// @return {Bool}
	static InputFloat4 = function(label, v, step=0, step_fast=0, format="%.3f", flags=ImGuiInputTextFlags.None) {
		gml_pragma("forceinline");
		return __imgui_input_float4(label, v, step, step_fast, format, flags);
	}

	/// @function InputFloatN(label, v, step, step_fast, format, flags)
	/// @argument {String} label
	/// @argument {Array<Real>} v
	/// @argument {Real} [step=0]
	/// @argument {Real} [step_fast=0]
	/// @argument {String} [format=%.3f]
	/// @argument {Enum.ImGuiInputTextFlags} [flags=ImGuiInputTextFlags.None]
	/// @context ImGui
	/// @return {Bool}
	static InputFloatN = function(label, v, step=0, step_fast=0, format="%.3f", flags=ImGuiInputTextFlags.None) {
		gml_pragma("forceinline");
		return __imgui_input_floatn(label, v, step, step_fast, format, flags, array_length(v));
	}

	/// @function InputInt(label, v, step, step_fast, flags)
	/// @argument {String} label
	/// @argument {Real} v
	/// @argument {Real} [step=0]
	/// @argument {Real} [step_fast=0]
	/// @argument {Enum.ImGuiInputTextFlags} [flags=ImGuiInputTextFlags.None]
	/// @context ImGui
	/// @return {Real}
	static InputInt = function(label, v, step=0, step_fast=0, flags=ImGuiInputTextFlags.None) {
		gml_pragma("forceinline");
		return __imgui_input_int(label, v, step, step_fast, flags);
	}

	/// @function InputInt2(label, v, flags)
	/// @argument {String} label
	/// @argument {Array<Real>} v
	/// @argument {Enum.ImGuiInputTextFlags} [flags=ImGuiInputTextFlags.None]
	/// @context ImGui
	/// @return {Bool}
	static InputInt2 = function(label, v, flags=ImGuiInputTextFlags.None) {
		gml_pragma("forceinline");
		return __imgui_input_int2(label, v, flags);
	}

	/// @function InputInt3(label, v, flags)
	/// @argument {String} label
	/// @argument {Array<Real>} v
	/// @argument {Enum.ImGuiInputTextFlags} [flags=ImGuiInputTextFlags.None]
	/// @context ImGui
	/// @return {Bool}
	static InputInt3 = function(label, v, flags=ImGuiInputTextFlags.None) {
		gml_pragma("forceinline");
		return __imgui_input_int3(label, v, flags);
	}

	/// @function InputInt4(label, v, flags)
	/// @argument {String} label
	/// @argument {Array<Real>} v
	/// @argument {Enum.ImGuiInputTextFlags} [flags=ImGuiInputTextFlags.None]
	/// @context ImGui
	/// @return {Bool}
	static InputInt4 = function(label, v, flags=ImGuiInputTextFlags.None) {
		gml_pragma("forceinline");
		return __imgui_input_int4(label, v, flags);
	}

	/// @function InputIntN(label, v, flags)
	/// @argument {String} label
	/// @argument {Array<Real>} v
	/// @argument {Enum.ImGuiInputTextFlags} [flags=ImGuiInputTextFlags.None]
	/// @context ImGui
	/// @return {Bool}
	static InputIntN = function(label, v, flags=ImGuiInputTextFlags.None) {
		gml_pragma("forceinline");
		return __imgui_input_intn(label, v, flags, array_length(v));
	}

	/// @function InputDouble(label, v, step, step_fast, format, flags)
	/// @argument {String} label
	/// @argument {Real} v
	/// @argument {Real} [step=0]
	/// @argument {Real} [step_fast=0]
	/// @argument {String} [format=%.6f]
	/// @argument {Enum.ImGuiInputTextFlags} [flags=ImGuiInputTextFlags.None]
	/// @context ImGui
	/// @return {Real}
	static InputDouble = function(label, v, step=0, step_fast=0, format="%.6f", flags=ImGuiInputTextFlags.None) {
		gml_pragma("forceinline");
		return __imgui_input_double(label, v, step, step_fast, format, flags);
	}

	/// @function Spacing()
	/// @context ImGui
	/// @return {Undefined}
	static Spacing = function() {
		gml_pragma("forceinline");
		return __imgui_spacing();
	}

	/// @function Dummy(width, height)
	/// @argument {Real} width
	/// @argument {Real} height
	/// @context ImGui
	/// @return {Undefined}
	static Dummy = function(width, height) {
		gml_pragma("forceinline");
		return __imgui_dummy(width, height);
	}

	/// @function NewLine()
	/// @context ImGui
	/// @return {Undefined}
	static NewLine = function() {
		gml_pragma("forceinline");
		return __imgui_newline();
	}

	/// @function AlignTextToFramePadding()
	/// @context ImGui
	/// @return {Undefined}
	static AlignTextToFramePadding = function() {
		gml_pragma("forceinline");
		return __imgui_align_text_to_frame_padding();
	}

	/// @function Separator()
	/// @context ImGui
	/// @return {Undefined}
	static Separator = function() {
		gml_pragma("forceinline");
		return __imgui_separator();
	}

	/// @function Indent(indent_w)
	/// @argument {Real} [indent_w=0]
	/// @context ImGui
	/// @return {Undefined}
	static Indent = function(indent_w=0) {
		gml_pragma("forceinline");
		return __imgui_indent(indent_w);
	}

	/// @function Unindent(indent_w)
	/// @argument {Real} [indent_w=0]
	/// @context ImGui
	/// @return {Undefined}
	static Unindent = function(indent_w=0) {
		gml_pragma("forceinline");
		return __imgui_unindent(indent_w);
	}

	/// @function SameLine(offset_from_start_x, spacing)
	/// @argument {Real} [offset_from_start_x=0]
	/// @argument {Real} [spacing=-1]
	/// @context ImGui
	/// @return {Undefined}
	static SameLine = function(offset_from_start_x=0, spacing=-1) {
		gml_pragma("forceinline");
		return __imgui_sameline(offset_from_start_x, spacing);
	}

	/// @function BeginGroup()
	/// @context ImGui
	/// @return {Undefined}
	static BeginGroup = function() {
		gml_pragma("forceinline");
		return __imgui_begin_group();
	}

	/// @function EndGroup()
	/// @context ImGui
	/// @return {Undefined}
	static EndGroup = function() {
		gml_pragma("forceinline");
		return __imgui_end_group();
	}

	/// @function GetCursorPosX()
	/// @context ImGui
	/// @return {Real}
	static GetCursorPosX = function() {
		gml_pragma("forceinline");
		return __imgui_get_cursor_pos_x();
	}

	/// @function GetCursorPosY()
	/// @context ImGui
	/// @return {Real}
	static GetCursorPosY = function() {
		gml_pragma("forceinline");
		return __imgui_get_cursor_pos_y();
	}

	/// @function GetCursorStartPosX()
	/// @context ImGui
	/// @return {Real}
	static GetCursorStartPosX = function() {
		gml_pragma("forceinline");
		return __imgui_get_cursor_start_pos_x();
	}

	/// @function GetCursorStartPosY()
	/// @context ImGui
	/// @return {Real}
	static GetCursorStartPosY = function() {
		gml_pragma("forceinline");
		return __imgui_get_cursor_start_pos_y();
	}

	/// @function GetCursorScreenPosX()
	/// @context ImGui
	/// @return {Real}
	static GetCursorScreenPosX = function() {
		gml_pragma("forceinline");
		return __imgui_get_cursor_screen_pos_x();
	}

	/// @function GetCursorScreenPosY()
	/// @context ImGui
	/// @return {Real}
	static GetCursorScreenPosY = function() {
		gml_pragma("forceinline");
		return __imgui_get_cursor_screen_pos_y();
	}

	/// @function SetCursorScreenPos(_x, _y)
	/// @argument {Real} _x
	/// @argument {Real} _y
	/// @context ImGui
	/// @return {Undefined}
	static SetCursorScreenPos = function(_x, _y) {
		gml_pragma("forceinline");
		return __imgui_set_cursor_screen_pos(_x, _y);
	}

	/// @function SetCursorPos(local_x, local_y)
	/// @argument {Real} local_x
	/// @argument {Real} local_y
	/// @context ImGui
	/// @return {Undefined}
	static SetCursorPos = function(local_x, local_y) {
		gml_pragma("forceinline");
		return __imgui_set_cursor_pos(local_x, local_y);
	}

	/// @function SetCursorPosX(local_x)
	/// @argument {Real} local_x
	/// @context ImGui
	/// @return {Undefined}
	static SetCursorPosX = function(local_x) {
		gml_pragma("forceinline");
		return __imgui_set_cursor_pos_x(local_x);
	}

	/// @function SetCursorPosY(local_y)
	/// @argument {Real} local_y
	/// @context ImGui
	/// @return {Undefined}
	static SetCursorPosY = function(local_y) {
		gml_pragma("forceinline");
		return __imgui_set_cursor_pos_y(local_y);
	}

	/// @function GetTextLineHeight()
	/// @context ImGui
	/// @return {Real}
	static GetTextLineHeight = function() {
		gml_pragma("forceinline");
		return __imgui_get_text_line_height();
	}

	/// @function GetTextLineHeightWithSpacing()
	/// @context ImGui
	/// @return {Real}
	static GetTextLineHeightWithSpacing = function() {
		gml_pragma("forceinline");
		return __imgui_get_text_line_height_with_spacing();
	}

	/// @function GetFrameHeight()
	/// @context ImGui
	/// @return {Real}
	static GetFrameHeight = function() {
		gml_pragma("forceinline");
		return __imgui_get_frame_height();
	}

	/// @function GetFrameHeightWithSpacing()
	/// @context ImGui
	/// @return {Real}
	static GetFrameHeightWithSpacing = function() {
		gml_pragma("forceinline");
		return __imgui_get_frame_height_with_spacing();
	}

	/// @function GetContentRegionAvailX()
	/// @context ImGui
	/// @return {Real}
	static GetContentRegionAvailX = function() {
		gml_pragma("forceinline");
		return __imgui_get_content_region_avail_x();
	}

	/// @function GetContentRegionAvailY()
	/// @context ImGui
	/// @return {Real}
	static GetContentRegionAvailY = function() {
		gml_pragma("forceinline");
		return __imgui_get_content_region_avail_y();
	}

	/// @function GetContentRegionMaxX()
	/// @context ImGui
	/// @return {Real}
	static GetContentRegionMaxX = function() {
		gml_pragma("forceinline");
		return __imgui_get_content_region_max_x();
	}

	/// @function GetContentRegionMaxY()
	/// @context ImGui
	/// @return {Real}
	static GetContentRegionMaxY = function() {
		gml_pragma("forceinline");
		return __imgui_get_content_region_max_y();
	}

	/// @function GetWindowContentRegionMinX()
	/// @context ImGui
	/// @return {Real}
	static GetWindowContentRegionMinX = function() {
		gml_pragma("forceinline");
		return __imgui_get_window_content_region_min_x();
	}

	/// @function GetWindowContentRegionMinY()
	/// @context ImGui
	/// @return {Real}
	static GetWindowContentRegionMinY = function() {
		gml_pragma("forceinline");
		return __imgui_get_window_content_region_min_y();
	}

	/// @function GetWindowContentRegionMaxX()
	/// @context ImGui
	/// @return {Real}
	static GetWindowContentRegionMaxX = function() {
		gml_pragma("forceinline");
		return __imgui_get_window_content_region_max_x();
	}

	/// @function GetWindowContentRegionMaxY()
	/// @context ImGui
	/// @return {Real}
	static GetWindowContentRegionMaxY = function() {
		gml_pragma("forceinline");
		return __imgui_get_window_content_region_max_y();
	}

	/// @function PushItemWidth(item_width)
	/// @argument {Real} item_width
	/// @context ImGui
	/// @return {Undefined}
	static PushItemWidth = function(item_width) {
		gml_pragma("forceinline");
		return __imgui_push_item_width(item_width);
	}

	/// @function PopItemWidth()
	/// @context ImGui
	/// @return {Undefined}
	static PopItemWidth = function() {
		gml_pragma("forceinline");
		return __imgui_pop_item_width();
	}

	/// @function SetNextItemWidth(item_width)
	/// @argument {Real} item_width
	/// @context ImGui
	/// @return {Undefined}
	static SetNextItemWidth = function(item_width) {
		gml_pragma("forceinline");
		return __imgui_set_next_item_width(item_width);
	}

	/// @function CalcItemWidth()
	/// @context ImGui
	/// @return {Real}
	static CalcItemWidth = function() {
		gml_pragma("forceinline");
		return __imgui_calc_item_width();
	}

	/// @function PushTextWrapPos(wrap_local_pos_x)
	/// @argument {Real} [wrap_local_pos_x=0]
	/// @context ImGui
	/// @return {Undefined}
	static PushTextWrapPos = function(wrap_local_pos_x=0) {
		gml_pragma("forceinline");
		return __imgui_push_text_wrap_pos(wrap_local_pos_x);
	}

	/// @function PopTextWrapPos()
	/// @context ImGui
	/// @return {Undefined}
	static PopTextWrapPos = function() {
		gml_pragma("forceinline");
		return __imgui_pop_text_wrap_pos();
	}

	/// @function PushClipRect(clip_min_x, clip_min_y, clip_max_x, clip_max_y, intersect_with_current_clip_rect)
	/// @argument {Real} clip_min_x
	/// @argument {Real} clip_min_y
	/// @argument {Real} clip_max_x
	/// @argument {Real} clip_max_y
	/// @argument {Bool} intersect_with_current_clip_rect
	/// @context ImGui
	/// @return {Undefined}
	static PushClipRect = function(clip_min_x, clip_min_y, clip_max_x, clip_max_y, intersect_with_current_clip_rect) {
		gml_pragma("forceinline");
		return __imgui_push_clip_rect(clip_min_x, clip_min_y, clip_max_x, clip_max_y, intersect_with_current_clip_rect);
	}

	/// @function PopClipRect()
	/// @context ImGui
	/// @return {Undefined}
	static PopClipRect = function() {
		gml_pragma("forceinline");
		return __imgui_pop_clip_rect();
	}

	/// @function BeginListBox(label, width, height)
	/// @argument {String} label
	/// @argument {Real} [width=0]
	/// @argument {Real} [height=0]
	/// @context ImGui
	/// @return {Bool}
	static BeginListBox = function(label, width=0, height=0) {
		gml_pragma("forceinline");
		return __imgui_begin_listbox(label, width, height);
	}

	/// @function EndListBox()
	/// @context ImGui
	/// @return {Undefined}
	static EndListBox = function() {
		gml_pragma("forceinline");
		return __imgui_end_listbox();
	}

	/// @function ListBox()
	/// @context ImGui
	/// @return {Unknown<unset>}
	static ListBox = function() {
		gml_pragma("forceinline");
		return __imgui_listbox();
	}

	/// @function BeginMenuBar()
	/// @context ImGui
	/// @return {Bool}
	static BeginMenuBar = function() {
		gml_pragma("forceinline");
		return __imgui_begin_menubar();
	}

	/// @function EndMenuBar()
	/// @context ImGui
	/// @return {Undefined}
	static EndMenuBar = function() {
		gml_pragma("forceinline");
		return __imgui_end_menubar();
	}

	/// @function BeginMainMenuBar()
	/// @context ImGui
	/// @return {Bool}
	static BeginMainMenuBar = function() {
		gml_pragma("forceinline");
		return __imgui_begin_mainmenubar();
	}

	/// @function EndMainMenuBar()
	/// @context ImGui
	/// @return {Undefined}
	static EndMainMenuBar = function() {
		gml_pragma("forceinline");
		return __imgui_end_mainmenubar();
	}

	/// @function BeginMenu(label, enabled)
	/// @argument {String} label
	/// @argument {Bool} [enabled=true]
	/// @context ImGui
	/// @return {Bool}
	static BeginMenu = function(label, enabled=true) {
		gml_pragma("forceinline");
		return __imgui_begin_menu(label, enabled);
	}

	/// @function EndMenu()
	/// @context ImGui
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
	/// @argument {Enum.ImGuiReturnMask} [mask=ImGuiReturnMask.Return]
	/// @context ImGui
	/// @return {Real}
	static MenuItem = function(label, shortcut="", selected=undefined, enabled=true, mask=ImGuiReturnMask.Return) {
		gml_pragma("forceinline");
		return __imgui_menu_item(label, shortcut, selected, enabled, mask);
	}

	/// @function BeginDragDropSource(flags)
	/// @argument {Enum.ImGuiDragDropFlags} [flags=ImGuiDragDropFlags.None]
	/// @context ImGui
	/// @return {Bool}
	static BeginDragDropSource = function(flags=ImGuiDragDropFlags.None) {
		gml_pragma("forceinline");
		return __imgui_begin_drag_drop_source(flags);
	}

	/// @function EndDragDropSource()
	/// @context ImGui
	/// @return {Undefined}
	static EndDragDropSource = function() {
		gml_pragma("forceinline");
		return __imgui_end_drag_drop_source();
	}

	/// @function BeginDragDropTarget()
	/// @context ImGui
	/// @return {Bool}
	static BeginDragDropTarget = function() {
		gml_pragma("forceinline");
		return __imgui_begin_drag_drop_target();
	}

	/// @function EndDragDropTarget()
	/// @context ImGui
	/// @return {Undefined}
	static EndDragDropTarget = function() {
		gml_pragma("forceinline");
		return __imgui_end_drag_drop_target();
	}

	/// @function SetDragDropPayload(type, data, cond)
	/// @argument {String} type
	/// @argument {Any} data
	/// @argument {Enum.ImGuiCond} [cond=ImGuiCond.None]
	/// @context ImGui
	/// @return {Bool}
	static SetDragDropPayload = function(type, data, cond=ImGuiCond.None) {
		gml_pragma("forceinline");
		return __imgui_set_drag_drop_payload(type, data, cond);
	}

	/// @function AcceptDragDropPayload(type, flags)
	/// @argument {String} type
	/// @argument {Enum.ImGuiDragDropFlags} [flags=ImGuiDragDropFlags.None]
	/// @context ImGui
	/// @return {Any|Undefined}
	static AcceptDragDropPayload = function(type, flags=ImGuiDragDropFlags.None) {
		gml_pragma("forceinline");
		return __imgui_accept_drag_drop_payload(type, flags);
	}

	/// @function GetDragDropPayload()
	/// @context ImGui
	/// @return {Any|Undefined}
	static GetDragDropPayload = function() {
		gml_pragma("forceinline");
		return __imgui_get_drag_drop_payload();
	}

	/// @function GetDragDropPayloadType()
	/// @context ImGui
	/// @return {String|Undefined}
	static GetDragDropPayloadType = function() {
		gml_pragma("forceinline");
		return __imgui_get_payload_type();
	}

	/// @function GetPayloadKeepAlive()
	/// @context ImGui
	/// @return {Real}
	static GetPayloadKeepAlive = function() {
		gml_pragma("forceinline");
		return __imgui_get_payload_keepalive();
	}

	/// @function PlotLines(label, values, values_offset, overlay_text, scale_min, scale_max, graph_width, graph_height)
	/// @argument {String} label
	/// @argument {Array<Real>} values
	/// @argument {Real} [values_offset=0]
	/// @argument {String} [overlay_text=]
	/// @argument {Real} [scale_min=0]
	/// @argument {Real} [scale_max=0]
	/// @argument {Real} [graph_width=0]
	/// @argument {Real} [graph_height=0]
	/// @context ImGui
	/// @return {Undefined}
	static PlotLines = function(label, values, values_offset=0, overlay_text="", scale_min=0, scale_max=0, graph_width=0, graph_height=0) {
		gml_pragma("forceinline");
		return __imgui_plot_lines(label, values, values_offset, overlay_text, scale_min, scale_max, graph_width, graph_height, array_length(values));
	}

	/// @function PlotHistogram(label, values, values_offset, overlay_text, scale_min, scale_max, graph_width, graph_height)
	/// @argument {String} label
	/// @argument {Array<Real>} values
	/// @argument {Real} [values_offset=0]
	/// @argument {String} [overlay_text=]
	/// @argument {Real} [scale_min=0]
	/// @argument {Real} [scale_max=0]
	/// @argument {Real} [graph_width=0]
	/// @argument {Real} [graph_height=0]
	/// @context ImGui
	/// @return {Undefined}
	static PlotHistogram = function(label, values, values_offset=0, overlay_text="", scale_min=0, scale_max=0, graph_width=0, graph_height=0) {
		gml_pragma("forceinline");
		return __imgui_plot_histogram(label, values, values_offset, overlay_text, scale_min, scale_max, graph_width, graph_height, array_length(values));
	}

	/// @function BeginPopup(str_id, flags)
	/// @argument {String} str_id
	/// @argument {Enum.ImGuiWindowFlags} [flags=ImGuiWindowFlags.None]
	/// @context ImGui
	/// @return {Bool}
	static BeginPopup = function(str_id, flags=ImGuiWindowFlags.None) {
		gml_pragma("forceinline");
		return __imgui_begin_popup(str_id, flags);
	}

	/// @function BeginPopupModal(name, open, flags, mask)
	/// @argument {String} name
	/// @argument {Bool} [open=undefined]
	/// @argument {Enum.ImGuiWindowFlags} [flags=ImGuiWindowFlags.None]
	/// @argument {Enum.ImGuiReturnMask} [mask=ImGuiReturnMask.Return]
	/// @context ImGui
	/// @return {Real}
	static BeginPopupModal = function(name, open=undefined, flags=ImGuiWindowFlags.None, mask=ImGuiReturnMask.Return) {
		gml_pragma("forceinline");
		return __imgui_begin_popup_modal(name, open, flags, mask);
	}

	/// @function EndPopup()
	/// @context ImGui
	/// @return {Undefined}
	static EndPopup = function() {
		gml_pragma("forceinline");
		return __imgui_end_popup();
	}

	/// @function OpenPopup(str_id, flags)
	/// @argument {String} str_id
	/// @argument {Enum.ImGuiPopupFlags} [flags=ImGuiPopupFlags.None]
	/// @context ImGui
	/// @return {Undefined}
	static OpenPopup = function(str_id, flags=ImGuiPopupFlags.None) {
		gml_pragma("forceinline");
		return __imgui_open_popup(str_id, flags);
	}

	/// @function OpenPopupOnItemClick(str_id, flags)
	/// @argument {String} [str_id=undefined]
	/// @argument {Enum.ImGuiPopupFlags} [flags=ImGuiPopupFlags.MouseButtonRight]
	/// @context ImGui
	/// @return {Undefined}
	static OpenPopupOnItemClick = function(str_id="undefined", flags=ImGuiPopupFlags.MouseButtonRight) {
		gml_pragma("forceinline");
		return __imgui_open_popup_on_item_click(str_id, flags);
	}

	/// @function CloseCurrentPopup()
	/// @context ImGui
	/// @return {Undefined}
	static CloseCurrentPopup = function() {
		gml_pragma("forceinline");
		return __imgui_close_current_popup();
	}

	/// @function BeginPopupContextItem(str_id, flags)
	/// @argument {String} [str_id=undefined]
	/// @argument {Enum.ImGuiPopupFlags} [flags=ImGuiPopupFlags.MouseButtonRight]
	/// @context ImGui
	/// @return {Bool}
	static BeginPopupContextItem = function(str_id="undefined", flags=ImGuiPopupFlags.MouseButtonRight) {
		gml_pragma("forceinline");
		return __imgui_begin_popup_context_item(str_id, flags);
	}

	/// @function BeginPopupContextWindow(str_id, flags)
	/// @argument {String} [str_id=undefined]
	/// @argument {Enum.ImGuiPopupFlags} [flags=ImGuiPopupFlags.MouseButtonRight]
	/// @context ImGui
	/// @return {Bool}
	static BeginPopupContextWindow = function(str_id="undefined", flags=ImGuiPopupFlags.MouseButtonRight) {
		gml_pragma("forceinline");
		return __imgui_begin_popup_context_window(str_id, flags);
	}

	/// @function BeginPopupContextVoid(str_id, flags)
	/// @argument {String} [str_id=undefined]
	/// @argument {Enum.ImGuiPopupFlags} [flags=ImGuiPopupFlags.MouseButtonRight]
	/// @context ImGui
	/// @return {Bool}
	static BeginPopupContextVoid = function(str_id="undefined", flags=ImGuiPopupFlags.MouseButtonRight) {
		gml_pragma("forceinline");
		return __imgui_begin_popup_context_void(str_id, flags);
	}

	/// @function IsPopupOpen(str_id, flags)
	/// @argument {String} str_id
	/// @argument {Enum.ImGuiPopupFlags} [flags=ImGuiPopupFlags.None]
	/// @context ImGui
	/// @return {Bool}
	static IsPopupOpen = function(str_id, flags=ImGuiPopupFlags.None) {
		gml_pragma("forceinline");
		return __imgui_is_popup_open(str_id, flags);
	}

	/// @function Selectable(label, selected, flags, width, height)
	/// @argument {String} label
	/// @argument {Bool} [selected=false]
	/// @argument {Enum.ImGuiSelectableFlags} [flags=ImGuiSelectableFlags.None]
	/// @argument {Real} [width=0]
	/// @argument {Real} [height=0]
	/// @context ImGui
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
	/// @argument {Enum.ImGuiSliderFlags} [flags=ImGuiSliderFlags.None]
	/// @context ImGui
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
	/// @argument {Enum.ImGuiSliderFlags} [flags=ImGuiSliderFlags.None]
	/// @context ImGui
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
	/// @argument {Enum.ImGuiSliderFlags} [flags=ImGuiSliderFlags.None]
	/// @context ImGui
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
	/// @argument {Enum.ImGuiSliderFlags} [flags=ImGuiSliderFlags.None]
	/// @context ImGui
	/// @return {Bool}
	static SliderFloat4 = function(label, v, v_min=0, v_max=0, format="%.3f", flags=ImGuiSliderFlags.None) {
		gml_pragma("forceinline");
		return __imgui_slider_float4(label, v, v_min, v_max, format, flags);
	}

	/// @function SliderFloatN(label, v, v_speed, v_min, v_max, format, flags)
	/// @argument {String} label
	/// @argument {Array<Real>} v
	/// @argument {Real} [v_speed=1]
	/// @argument {Real} [v_min=0]
	/// @argument {Real} [v_max=0]
	/// @argument {String} [format=%.3f]
	/// @argument {Enum.ImGuiSliderFlags} [flags=ImGuiSliderFlags.None]
	/// @context ImGui
	/// @return {Bool}
	static SliderFloatN = function(label, v, v_speed=1, v_min=0, v_max=0, format="%.3f", flags=ImGuiSliderFlags.None) {
		gml_pragma("forceinline");
		return __imgui_slider_floatn(label, v, v_speed, v_min, v_max, format, flags, array_length(v));
	}

	/// @function SliderInt(label, v, v_min, v_max, format, flags)
	/// @argument {String} label
	/// @argument {Real} v
	/// @argument {Real} [v_min=0]
	/// @argument {Real} [v_max=0]
	/// @argument {String} [format=%d]
	/// @argument {Enum.ImGuiSliderFlags} [flags=ImGuiSliderFlags.None]
	/// @context ImGui
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
	/// @argument {Enum.ImGuiSliderFlags} [flags=ImGuiSliderFlags.None]
	/// @context ImGui
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
	/// @argument {Enum.ImGuiSliderFlags} [flags=ImGuiSliderFlags.None]
	/// @context ImGui
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
	/// @argument {Enum.ImGuiSliderFlags} [flags=ImGuiSliderFlags.None]
	/// @context ImGui
	/// @return {Bool}
	static SliderInt4 = function(label, v, v_min=0, v_max=0, format="%d", flags=ImGuiSliderFlags.None) {
		gml_pragma("forceinline");
		return __imgui_slider_int4(label, v, v_min, v_max, format, flags);
	}

	/// @function SliderIntN(label, v, v_min, v_max, format, flags)
	/// @argument {String} label
	/// @argument {Array<Real>} v
	/// @argument {Real} [v_min=0]
	/// @argument {Real} [v_max=0]
	/// @argument {String} [format=%d]
	/// @argument {Enum.ImGuiSliderFlags} [flags=ImGuiSliderFlags.None]
	/// @context ImGui
	/// @return {Bool}
	static SliderIntN = function(label, v, v_min=0, v_max=0, format="%d", flags=ImGuiSliderFlags.None) {
		gml_pragma("forceinline");
		return __imgui_slider_intn(label, v, v_min, v_max, format, flags, array_length(v));
	}

	/// @function VSliderFloat(label, width, height, v, v_min, v_max, format, flags)
	/// @argument {String} label
	/// @argument {Real} width
	/// @argument {Real} height
	/// @argument {Real} v
	/// @argument {Real} [v_min=0]
	/// @argument {Real} [v_max=0]
	/// @argument {String} [format=%.3f]
	/// @argument {Enum.ImGuiSliderFlags} [flags=ImGuiSliderFlags.None]
	/// @context ImGui
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
	/// @argument {Enum.ImGuiSliderFlags} [flags=ImGuiSliderFlags.None]
	/// @context ImGui
	/// @return {Real}
	static VSliderInt = function(label, width, height, v, v_min=0, v_max=0, format="%d", flags=ImGuiSliderFlags.None) {
		gml_pragma("forceinline");
		return __imgui_vslider_int(label, width, height, v, v_min, v_max, format, flags);
	}

	/// @function SliderAngle(label, v_rad, v_degrees_min, v_degrees_max, format, flags)
	/// @argument {String} label
	/// @argument {Real} v_rad
	/// @argument {Real} [v_degrees_min=0]
	/// @argument {Real} [v_degrees_max=0]
	/// @argument {String} [format=%d]
	/// @argument {Enum.ImGuiSliderFlags} [flags=ImGuiSliderFlags.None]
	/// @context ImGui
	/// @return {Real}
	static SliderAngle = function(label, v_rad, v_degrees_min=0, v_degrees_max=0, format="%d", flags=ImGuiSliderFlags.None) {
		gml_pragma("forceinline");
		return __imgui_slider_angle(label, v_rad, v_degrees_min, v_degrees_max, format, flags);
	}

	/// @function StyleColorsDark()
	/// @context ImGui
	/// @return {Undefined}
	static StyleColorsDark = function() {
		gml_pragma("forceinline");
		return __imgui_style_colors_dark();
	}

	/// @function StyleColorsLight()
	/// @context ImGui
	/// @return {Undefined}
	static StyleColorsLight = function() {
		gml_pragma("forceinline");
		return __imgui_style_colors_light();
	}

	/// @function StyleColorsClassic()
	/// @context ImGui
	/// @return {Undefined}
	static StyleColorsClassic = function() {
		gml_pragma("forceinline");
		return __imgui_style_colors_classic();
	}

	/// @function PushStyleColor(idx, col, alpha)
	/// @argument {Real} idx
	/// @argument {Real} col
	/// @argument {Real} alpha
	/// @context ImGui
	/// @return {Undefined}
	static PushStyleColor = function(idx, col, alpha) {
		gml_pragma("forceinline");
		return __imgui_push_style_color(idx, col, alpha);
	}

	/// @function PopStyleColor(count)
	/// @argument {Real} [count=1]
	/// @context ImGui
	/// @return {Undefined}
	static PopStyleColor = function(count=1) {
		gml_pragma("forceinline");
		return __imgui_pop_style_color(count);
	}

	/// @function PushStyleVar(idx, val, val2)
	/// @argument {Real} idx
	/// @argument {Real} val
	/// @argument {Any} [val2=undefined]
	/// @context ImGui
	/// @return {Undefined}
	static PushStyleVar = function(idx, val, val2=undefined) {
		gml_pragma("forceinline");
		return __imgui_push_style_var(idx, val, val2);
	}

	/// @function PopStyleVar(count)
	/// @argument {Real} [count=1]
	/// @context ImGui
	/// @return {Undefined}
	static PopStyleVar = function(count=1) {
		gml_pragma("forceinline");
		return __imgui_pop_style_var(count);
	}

	/// @function GetStyleColor(idx)
	/// @argument {Real} idx
	/// @context ImGui
	/// @return {Real}
	static GetStyleColor = function(idx) {
		gml_pragma("forceinline");
		return __imgui_get_style_color(idx);
	}

	/// @function GetStyleColorName(idx)
	/// @argument {Real} idx
	/// @context ImGui
	/// @return {String}
	static GetStyleColorName = function(idx) {
		gml_pragma("forceinline");
		return __imgui_get_style_color_name(idx);
	}

	/// @function BeginTable(str_id, column, flags, outer_width, outer_height, inner_width)
	/// @argument {String} str_id
	/// @argument {Real} column
	/// @argument {Enum.ImGuiTableFlags} [flags=ImGuiTableFlags.None]
	/// @argument {Real} [outer_width=0]
	/// @argument {Real} [outer_height=0]
	/// @argument {Real} [inner_width=0]
	/// @context ImGui
	/// @return {Bool}
	static BeginTable = function(str_id, column, flags=ImGuiTableFlags.None, outer_width=0, outer_height=0, inner_width=0) {
		gml_pragma("forceinline");
		return __imgui_begin_table(str_id, column, flags, outer_width, outer_height, inner_width);
	}

	/// @function EndTable()
	/// @context ImGui
	/// @return {Undefined}
	static EndTable = function() {
		gml_pragma("forceinline");
		return __imgui_end_table();
	}

	/// @function TableNextRow(row_flags, min_row_height)
	/// @argument {Enum.ImGuiTableRowFlags} [row_flags=ImGuiTableRowFlags.None]
	/// @argument {Real} [min_row_height=0]
	/// @context ImGui
	/// @return {Undefined}
	static TableNextRow = function(row_flags=ImGuiTableRowFlags.None, min_row_height=0) {
		gml_pragma("forceinline");
		return __imgui_table_next_row(row_flags, min_row_height);
	}

	/// @function TableNextColumn()
	/// @context ImGui
	/// @return {Bool}
	static TableNextColumn = function() {
		gml_pragma("forceinline");
		return __imgui_table_next_column();
	}

	/// @function TableSetColumnIndex(column_n)
	/// @argument {Real} column_n
	/// @context ImGui
	/// @return {Bool}
	static TableSetColumnIndex = function(column_n) {
		gml_pragma("forceinline");
		return __imgui_table_set_column_index(column_n);
	}

	/// @function TableSetupColumn(label, flags, user_id)
	/// @argument {String} label
	/// @argument {Enum.ImGuiTableColumnFlags} [flags=ImGuiTableColumnFlags.None]
	/// @argument {Real} [user_id=0]
	/// @context ImGui
	/// @return {Undefined}
	static TableSetupColumn = function(label, flags=ImGuiTableColumnFlags.None, user_id=0) {
		gml_pragma("forceinline");
		return __imgui_table_setup_column(label, flags, user_id);
	}

	/// @function TableSetupScrollFreeze(cols, rows)
	/// @argument {Real} cols
	/// @argument {Real} rows
	/// @context ImGui
	/// @return {Undefined}
	static TableSetupScrollFreeze = function(cols, rows) {
		gml_pragma("forceinline");
		return __imgui_table_setup_scroll_freeze(cols, rows);
	}

	/// @function TableHeadersRow()
	/// @context ImGui
	/// @return {Undefined}
	static TableHeadersRow = function() {
		gml_pragma("forceinline");
		return __imgui_table_headers_row();
	}

	/// @function TableHeader(label)
	/// @argument {String} label
	/// @context ImGui
	/// @return {Undefined}
	static TableHeader = function(label) {
		gml_pragma("forceinline");
		return __imgui_table_header(label);
	}

	/// @function TableGetColumnCount()
	/// @context ImGui
	/// @return {Real}
	static TableGetColumnCount = function() {
		gml_pragma("forceinline");
		return __imgui_table_get_column_count();
	}

	/// @function TableGetColumnIndex()
	/// @context ImGui
	/// @return {Real}
	static TableGetColumnIndex = function() {
		gml_pragma("forceinline");
		return __imgui_table_get_column_index();
	}

	/// @function TableGetColumnName(column_n)
	/// @argument {Real} [column_n=-1]
	/// @context ImGui
	/// @return {String}
	static TableGetColumnName = function(column_n=-1) {
		gml_pragma("forceinline");
		return __imgui_table_get_column_name(column_n);
	}

	/// @function TableGetColumnFlags(column_n)
	/// @argument {Real} [column_n=-1]
	/// @context ImGui
	/// @return {Real}
	static TableGetColumnFlags = function(column_n=-1) {
		gml_pragma("forceinline");
		return __imgui_table_get_column_flags(column_n);
	}

	/// @function TableGetRowIndex()
	/// @context ImGui
	/// @return {Real}
	static TableGetRowIndex = function() {
		gml_pragma("forceinline");
		return __imgui_table_get_row_index();
	}

	/// @function TableSetColumnEnabled(column_n, v)
	/// @argument {Real} column_n
	/// @argument {Bool} v
	/// @context ImGui
	/// @return {Undefined}
	static TableSetColumnEnabled = function(column_n, v) {
		gml_pragma("forceinline");
		return __imgui_table_set_column_enabled(column_n, v);
	}

	/// @function TableSetBgColor(target, col, column_n)
	/// @argument {Real} target
	/// @argument {Real} col
	/// @argument {Real} [column_n=-1]
	/// @context ImGui
	/// @return {Undefined}
	static TableSetBgColor = function(target, col, column_n=-1) {
		gml_pragma("forceinline");
		return __imgui_table_set_bg_color(target, col, column_n);
	}

	/// @function Columns(count, _id, border)
	/// @argument {Real} [count=1]
	/// @argument {String} [_id=]
	/// @argument {Bool} [border=true]
	/// @context ImGui
	/// @return {Undefined}
	static Columns = function(count=1, _id="", border=true) {
		gml_pragma("forceinline");
		return __imgui_columns(count, _id, border);
	}

	/// @function NextColumn()
	/// @context ImGui
	/// @return {Undefined}
	static NextColumn = function() {
		gml_pragma("forceinline");
		return __imgui_next_column();
	}

	/// @function GetColumnIndex()
	/// @context ImGui
	/// @return {Real}
	static GetColumnIndex = function() {
		gml_pragma("forceinline");
		return __imgui_get_column_index();
	}

	/// @function GetColumnWidth(column_index)
	/// @argument {Real} [column_index=-1]
	/// @context ImGui
	/// @return {Real}
	static GetColumnWidth = function(column_index=-1) {
		gml_pragma("forceinline");
		return __imgui_get_column_width(column_index);
	}

	/// @function SetColumnWidth(column_index, width)
	/// @argument {Real} column_index
	/// @argument {Real} width
	/// @context ImGui
	/// @return {Undefined}
	static SetColumnWidth = function(column_index, width) {
		gml_pragma("forceinline");
		return __imgui_set_column_width(column_index, width);
	}

	/// @function GetColumnOffset(column_index)
	/// @argument {Real} [column_index=-1]
	/// @context ImGui
	/// @return {Real}
	static GetColumnOffset = function(column_index=-1) {
		gml_pragma("forceinline");
		return __imgui_get_column_offset(column_index);
	}

	/// @function SetColumnOffset(column_index, offset_x)
	/// @argument {Real} column_index
	/// @argument {Real} offset_x
	/// @context ImGui
	/// @return {Undefined}
	static SetColumnOffset = function(column_index, offset_x) {
		gml_pragma("forceinline");
		return __imgui_set_column_offset(column_index, offset_x);
	}

	/// @function GetColumnsCount()
	/// @context ImGui
	/// @return {Real}
	static GetColumnsCount = function() {
		gml_pragma("forceinline");
		return __imgui_get_columns_count();
	}

	/// @function BeginTabBar(str_id, flags)
	/// @argument {String} str_id
	/// @argument {Enum.ImGuiTabBarFlags} [flags=ImGuiTabBarFlags.None]
	/// @context ImGui
	/// @return {Bool}
	static BeginTabBar = function(str_id, flags=ImGuiTabBarFlags.None) {
		gml_pragma("forceinline");
		return __imgui_begin_tab_bar(str_id, flags);
	}

	/// @function EndTabBar()
	/// @context ImGui
	/// @return {Undefined}
	static EndTabBar = function() {
		gml_pragma("forceinline");
		return __imgui_end_tab_bar();
	}

	/// @function BeginTabItem(label, open, flags, mask)
	/// @argument {String} label
	/// @argument {Bool} [open=undefined]
	/// @argument {Enum.ImGuiTabItemFlags} [flags=ImGuiTabItemFlags.None]
	/// @argument {Enum.ImGuiReturnMask} [mask=ImGuiReturnMask.Return]
	/// @context ImGui
	/// @return {Real}
	static BeginTabItem = function(label, open=undefined, flags=ImGuiTabItemFlags.None, mask=ImGuiReturnMask.Return) {
		gml_pragma("forceinline");
		return __imgui_begin_tab_item(label, open, flags, mask);
	}

	/// @function EndTabItem()
	/// @context ImGui
	/// @return {Undefined}
	static EndTabItem = function() {
		gml_pragma("forceinline");
		return __imgui_end_tab_item();
	}

	/// @function TabItemButton(label, flags)
	/// @argument {String} label
	/// @argument {Enum.ImGuiTabItemFlags} [flags=ImGuiTabItemFlags.None]
	/// @context ImGui
	/// @return {Bool}
	static TabItemButton = function(label, flags=ImGuiTabItemFlags.None) {
		gml_pragma("forceinline");
		return __imgui_tab_item_button(label, flags);
	}

	/// @function SetTabItemClosed(tab_or_docked_window_label)
	/// @argument {String} tab_or_docked_window_label
	/// @context ImGui
	/// @return {Undefined}
	static SetTabItemClosed = function(tab_or_docked_window_label) {
		gml_pragma("forceinline");
		return __imgui_set_tab_item_closed(tab_or_docked_window_label);
	}

	/// @function TextUnformatted(text)
	/// @argument {String} text
	/// @context ImGui
	/// @return {Undefined}
	static TextUnformatted = function(text) {
		gml_pragma("forceinline");
		return __imgui_text_unformatted(text);
	}

	/// @function Text(val)
	/// @argument {String} val
	/// @context ImGui
	/// @return {Undefined}
	static Text = function(val) {
		gml_pragma("forceinline");
		return __imgui_text(val);
	}

	/// @function TextColored(val, color, alpha)
	/// @argument {String} val
	/// @argument {Real} color
	/// @argument {Real} [alpha=1]
	/// @context ImGui
	/// @return {Undefined}
	static TextColored = function(val, color, alpha=1) {
		gml_pragma("forceinline");
		return __imgui_text_colored(val, color, alpha);
	}

	/// @function TextDisabled(val)
	/// @argument {String} val
	/// @context ImGui
	/// @return {Undefined}
	static TextDisabled = function(val) {
		gml_pragma("forceinline");
		return __imgui_text_disabled(val);
	}

	/// @function TextWrapped(val)
	/// @argument {String} val
	/// @context ImGui
	/// @return {Undefined}
	static TextWrapped = function(val) {
		gml_pragma("forceinline");
		return __imgui_text_wrapped(val);
	}

	/// @function LabelText(label, val)
	/// @argument {String} label
	/// @argument {String} val
	/// @context ImGui
	/// @return {Undefined}
	static LabelText = function(label, val) {
		gml_pragma("forceinline");
		return __imgui_label_text(label, val);
	}

	/// @function BulletText(val)
	/// @argument {String} val
	/// @context ImGui
	/// @return {Undefined}
	static BulletText = function(val) {
		gml_pragma("forceinline");
		return __imgui_bullet_text(val);
	}

	/// @function Value()
	/// @context ImGui
	/// @return {Unknown<unset>}
	static Value = function() {
		gml_pragma("forceinline");
		return __imgui_value();
	}

	/// @function BeginTooltip()
	/// @context ImGui
	/// @return {Undefined}
	static BeginTooltip = function() {
		gml_pragma("forceinline");
		return __imgui_begin_tooltip();
	}

	/// @function EndTooltip()
	/// @context ImGui
	/// @return {Undefined}
	static EndTooltip = function() {
		gml_pragma("forceinline");
		return __imgui_end_tooltip();
	}

	/// @function SetTooltip(val)
	/// @argument {String} val
	/// @context ImGui
	/// @return {Undefined}
	static SetTooltip = function(val) {
		gml_pragma("forceinline");
		return __imgui_set_tooltip(val);
	}

	/// @function TreeNode(label)
	/// @argument {String} label
	/// @context ImGui
	/// @return {Bool}
	static TreeNode = function(label) {
		gml_pragma("forceinline");
		return __imgui_tree_node(label);
	}

	/// @function TreeNodeEx(label, flags)
	/// @argument {String} label
	/// @argument {Enum.ImGuiTreeNodeFlags} [flags=ImGuiTreeNodeFlags.None]
	/// @context ImGui
	/// @return {Bool}
	static TreeNodeEx = function(label, flags=ImGuiTreeNodeFlags.None) {
		gml_pragma("forceinline");
		return __imgui_tree_node_ex(label, flags);
	}

	/// @function TreePush(str_id)
	/// @argument {String} str_id
	/// @context ImGui
	/// @return {Undefined}
	static TreePush = function(str_id) {
		gml_pragma("forceinline");
		return __imgui_tree_push(str_id);
	}

	/// @function TreePop()
	/// @context ImGui
	/// @return {Undefined}
	static TreePop = function() {
		gml_pragma("forceinline");
		return __imgui_tree_pop();
	}

	/// @function GetTreeNodeToLabelSpacing()
	/// @context ImGui
	/// @return {Real}
	static GetTreeNodeToLabelSpacing = function() {
		gml_pragma("forceinline");
		return __imgui_get_tree_node_to_label_spacing();
	}

	/// @function SetNextItemOpen(is_open, cond)
	/// @argument {Bool} is_open
	/// @argument {Enum.ImGuiCond} [cond=ImGuiCond.None]
	/// @context ImGui
	/// @return {Undefined}
	static SetNextItemOpen = function(is_open, cond=ImGuiCond.None) {
		gml_pragma("forceinline");
		return __imgui_set_next_item_open(is_open, cond);
	}

	/// @function CollapsingHeader(label, _visible, flags, mask)
	/// @argument {String} label
	/// @argument {Bool} [_visible=undefined]
	/// @argument {Enum.ImGuiTreeNodeFlags} [flags=ImGuiTreeNodeFlags.None]
	/// @argument {Enum.ImGuiReturnMask} [mask=ImGuiReturnMask.Return]
	/// @context ImGui
	/// @return {Real}
	static CollapsingHeader = function(label, _visible=undefined, flags=ImGuiTreeNodeFlags.None, mask=ImGuiReturnMask.Return) {
		gml_pragma("forceinline");
		return __imgui_collapsing_header(label, _visible, flags, mask);
	}

	/// @function Button(label, width, height)
	/// @argument {String} label
	/// @argument {Real} [width=0]
	/// @argument {Real} [height=0]
	/// @context ImGui
	/// @return {Bool}
	static Button = function(label, width=0, height=0) {
		gml_pragma("forceinline");
		return __imgui_button(label, width, height);
	}

	/// @function SmallButton(label)
	/// @argument {String} label
	/// @context ImGui
	/// @return {Bool}
	static SmallButton = function(label) {
		gml_pragma("forceinline");
		return __imgui_small_button(label);
	}

	/// @function InvisibleButton(_id, width, height, flags)
	/// @argument {String} _id
	/// @argument {Real} [width=0]
	/// @argument {Real} [height=0]
	/// @argument {Enum.ImGuiButtonFlags} [flags=ImGuiButtonFlags.None]
	/// @context ImGui
	/// @return {Bool}
	static InvisibleButton = function(_id, width=0, height=0, flags=ImGuiButtonFlags.None) {
		gml_pragma("forceinline");
		return __imgui_invisible_button(_id, width, height, flags);
	}

	/// @function ArrowButton(str_id, dir)
	/// @argument {String} str_id
	/// @argument {Real} dir
	/// @context ImGui
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
	/// @context ImGui
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
	/// @context ImGui
	/// @return {Undefined}
	static Surface = function(surface, color=c_white, alpha=1, width=surface_get_width(surface), height=surface_get_height(surface)) {
		gml_pragma("forceinline");
		var _tex = surface_get_texture(surface); texture_set_stage(0, _tex)
		return __imgui_surface(surface, color, alpha, width, height, texture_get_uvs(_tex));
	}

	/// @function Checkbox(label, checked)
	/// @argument {String} label
	/// @argument {Bool} checked
	/// @context ImGui
	/// @return {Bool}
	static Checkbox = function(label, checked) {
		gml_pragma("forceinline");
		return __imgui_checkbox(label, checked);
	}

	/// @function CheckboxFlags(label, flags, flags_value)
	/// @argument {String} label
	/// @argument {Real} flags
	/// @argument {Real} flags_value
	/// @context ImGui
	/// @return {Real}
	static CheckboxFlags = function(label, flags, flags_value) {
		gml_pragma("forceinline");
		return __imgui_checkbox_flags(label, flags, flags_value);
	}

	/// @function RadioButton(label, active)
	/// @argument {String} label
	/// @argument {Bool} active
	/// @context ImGui
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
	/// @context ImGui
	/// @return {Undefined}
	static ProgressBar = function(_frac, width=0, height=0, overlay="") {
		gml_pragma("forceinline");
		return __imgui_progressbar(_frac, width, height, overlay);
	}

	/// @function Bullet()
	/// @context ImGui
	/// @return {Undefined}
	static Bullet = function() {
		gml_pragma("forceinline");
		return __imgui_bullet();
	}

	/// @function Begin(name, open, flags, mask)
	/// @argument {String} name
	/// @argument {Bool} [open=undefined]
	/// @argument {Enum.ImGuiWindowFlags} [flags=ImGuiWindowFlags.None]
	/// @argument {Enum.ImGuiReturnMask} [mask=ImGuiReturnMask.Return]
	/// @context ImGui
	/// @return {Real}
	static Begin = function(name, open=undefined, flags=ImGuiWindowFlags.None, mask=ImGuiReturnMask.Return) {
		gml_pragma("forceinline");
		return __imgui_begin(name, open, flags, mask);
	}

	/// @function End()
	/// @context ImGui
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
	/// @argument {Enum.ImGuiWindowFlags} [flags=ImGuiWindowFlags.None]
	/// @context ImGui
	/// @return {Bool}
	static BeginChild = function(str_id, width=0, height=0, border=false, flags=ImGuiWindowFlags.None) {
		gml_pragma("forceinline");
		return __imgui_begin_child(str_id, width, height, border, flags);
	}

	/// @function EndChild()
	/// @context ImGui
	/// @return {Undefined}
	static EndChild = function() {
		gml_pragma("forceinline");
		return __imgui_end_child();
	}

	/// @function BeginChildFrame(_id, width, height, flags)
	/// @argument {Real} _id
	/// @argument {Real} [width=0]
	/// @argument {Real} [height=0]
	/// @argument {Enum.ImGuiWindowFlags} [flags=ImGuiWindowFlags.None]
	/// @context ImGui
	/// @return {Bool}
	static BeginChildFrame = function(_id, width=0, height=0, flags=ImGuiWindowFlags.None) {
		gml_pragma("forceinline");
		return __imgui_begin_child_frame(_id, width, height, flags);
	}

	/// @function EndChildFrame()
	/// @context ImGui
	/// @return {Undefined}
	static EndChildFrame = function() {
		gml_pragma("forceinline");
		return __imgui_end_child_frame();
	}

	/// @function IsWindowAppearing()
	/// @context ImGui
	/// @return {Bool}
	static IsWindowAppearing = function() {
		gml_pragma("forceinline");
		return __imgui_is_window_appearing();
	}

	/// @function IsWindowCollapsed()
	/// @context ImGui
	/// @return {Bool}
	static IsWindowCollapsed = function() {
		gml_pragma("forceinline");
		return __imgui_is_window_collapsed();
	}

	/// @function IsWindowFocused(flags)
	/// @argument {Enum.ImGuiFocusedFlags} [flags=ImGuiFocusedFlags.None]
	/// @context ImGui
	/// @return {Bool}
	static IsWindowFocused = function(flags=ImGuiFocusedFlags.None) {
		gml_pragma("forceinline");
		return __imgui_is_window_focused(flags);
	}

	/// @function IsWindowHovered(flags)
	/// @argument {Enum.ImGuiHoveredFlags} [flags=ImGuiHoveredFlags.None]
	/// @context ImGui
	/// @return {Bool}
	static IsWindowHovered = function(flags=ImGuiHoveredFlags.None) {
		gml_pragma("forceinline");
		return __imgui_is_window_hovered(flags);
	}

	/// @function GetWindowDpiScale()
	/// @context ImGui
	/// @return {Real}
	static GetWindowDpiScale = function() {
		gml_pragma("forceinline");
		return __imgui_get_window_dpi_scale();
	}

	/// @function GetWindowPosX()
	/// @context ImGui
	/// @return {Real}
	static GetWindowPosX = function() {
		gml_pragma("forceinline");
		return __imgui_get_window_x();
	}

	/// @function GetWindowPosY()
	/// @context ImGui
	/// @return {Real}
	static GetWindowPosY = function() {
		gml_pragma("forceinline");
		return __imgui_get_window_y();
	}

	/// @function GetWindowWidth()
	/// @context ImGui
	/// @return {Real}
	static GetWindowWidth = function() {
		gml_pragma("forceinline");
		return __imgui_get_window_width();
	}

	/// @function GetWindowHeight()
	/// @context ImGui
	/// @return {Real}
	static GetWindowHeight = function() {
		gml_pragma("forceinline");
		return __imgui_get_window_height();
	}

	/// @function SetNextWindowPos(_x, _y, cond, pivot_x, pivot_y)
	/// @argument {Real} _x
	/// @argument {Real} _y
	/// @argument {Enum.ImGuiCond} [cond=ImGuiCond.None]
	/// @argument {Real} [pivot_x=0]
	/// @argument {Real} [pivot_y=0]
	/// @context ImGui
	/// @return {Undefined}
	static SetNextWindowPos = function(_x, _y, cond=ImGuiCond.None, pivot_x=0, pivot_y=0) {
		gml_pragma("forceinline");
		return __imgui_set_next_window_pos(_x, _y, cond, pivot_x, pivot_y);
	}

	/// @function SetNextWindowSize(width, height, cond)
	/// @argument {Real} width
	/// @argument {Real} height
	/// @argument {Enum.ImGuiCond} [cond=ImGuiCond.None]
	/// @context ImGui
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
	/// @context ImGui
	/// @return {Undefined}
	static SetNextWindowSizeConstraints = function(min_width, min_height, max_width, max_height) {
		gml_pragma("forceinline");
		return __imgui_set_next_window_size_constraints(min_width, min_height, max_width, max_height);
	}

	/// @function SetNextWindowContentSize(width, height)
	/// @argument {Real} width
	/// @argument {Real} height
	/// @context ImGui
	/// @return {Undefined}
	static SetNextWindowContentSize = function(width, height) {
		gml_pragma("forceinline");
		return __imgui_set_next_window_content_size(width, height);
	}

	/// @function SetNextWindowCollapsed(collapsed, cond)
	/// @argument {Bool} collapsed
	/// @argument {Enum.ImGuiCond} [cond=ImGuiCond.None]
	/// @context ImGui
	/// @return {Undefined}
	static SetNextWindowCollapsed = function(collapsed, cond=ImGuiCond.None) {
		gml_pragma("forceinline");
		return __imgui_set_next_window_collapsed(collapsed, cond);
	}

	/// @function SetNextWindowFocus()
	/// @context ImGui
	/// @return {Undefined}
	static SetNextWindowFocus = function() {
		gml_pragma("forceinline");
		return __imgui_set_next_window_focus();
	}

	/// @function SetNextWindowScroll(scroll_x, scroll_y)
	/// @argument {Real} scroll_x
	/// @argument {Real} scroll_y
	/// @context ImGui
	/// @return {Undefined}
	static SetNextWindowScroll = function(scroll_x, scroll_y) {
		gml_pragma("forceinline");
		return __imgui_set_next_window_scroll(scroll_x, scroll_y);
	}

	/// @function SetNextWindowBgAlpha(alpha)
	/// @argument {Real} alpha
	/// @context ImGui
	/// @return {Undefined}
	static SetNextWindowBgAlpha = function(alpha) {
		gml_pragma("forceinline");
		return __imgui_set_next_window_bgalpha(alpha);
	}

	/// @function GetScrollX()
	/// @context ImGui
	/// @return {Real}
	static GetScrollX = function() {
		gml_pragma("forceinline");
		return __imgui_get_scroll_x();
	}

	/// @function GetScrollY()
	/// @context ImGui
	/// @return {Real}
	static GetScrollY = function() {
		gml_pragma("forceinline");
		return __imgui_get_scroll_y();
	}

	/// @function SetScrollX(scroll_x)
	/// @argument {Real} scroll_x
	/// @context ImGui
	/// @return {Undefined}
	static SetScrollX = function(scroll_x) {
		gml_pragma("forceinline");
		return __imgui_set_scroll_x(scroll_x);
	}

	/// @function SetScrollY(scroll_y)
	/// @argument {Real} scroll_y
	/// @context ImGui
	/// @return {Undefined}
	static SetScrollY = function(scroll_y) {
		gml_pragma("forceinline");
		return __imgui_set_scroll_y(scroll_y);
	}

	/// @function GetScrollMaxX()
	/// @context ImGui
	/// @return {Real}
	static GetScrollMaxX = function() {
		gml_pragma("forceinline");
		return __imgui_get_scroll_max_x();
	}

	/// @function GetScrollMaxY()
	/// @context ImGui
	/// @return {Real}
	static GetScrollMaxY = function() {
		gml_pragma("forceinline");
		return __imgui_get_scroll_max_y();
	}

	/// @function SetScrollHereX(center_x_ratio)
	/// @argument {Real} [center_x_ratio=0.5]
	/// @context ImGui
	/// @return {Undefined}
	static SetScrollHereX = function(center_x_ratio=0.5) {
		gml_pragma("forceinline");
		return __imgui_set_scroll_here_x(center_x_ratio);
	}

	/// @function SetScrollHereY(center_y_ratio)
	/// @argument {Real} [center_y_ratio=0.5]
	/// @context ImGui
	/// @return {Undefined}
	static SetScrollHereY = function(center_y_ratio=0.5) {
		gml_pragma("forceinline");
		return __imgui_set_scroll_here_y(center_y_ratio);
	}

	/// @function SetScrollFromPosX(local_x, center_x_ratio)
	/// @argument {Real} local_x
	/// @argument {Real} [center_x_ratio=0.5]
	/// @context ImGui
	/// @return {Undefined}
	static SetScrollFromPosX = function(local_x, center_x_ratio=0.5) {
		gml_pragma("forceinline");
		return __imgui_set_scroll_from_pos_x(local_x, center_x_ratio);
	}

	/// @function SetScrollFromPosY(local_y, center_y_ratio)
	/// @argument {Real} local_y
	/// @argument {Real} [center_y_ratio=0.5]
	/// @context ImGui
	/// @return {Undefined}
	static SetScrollFromPosY = function(local_y, center_y_ratio=0.5) {
		gml_pragma("forceinline");
		return __imgui_set_scroll_from_pos_y(local_y, center_y_ratio);
	}

	/// @section Enums
	enum ImGuiWindowFlags {
		None = 0,
		NoTitleBar = 1 << 0,
		NoResize = 1 << 1,
		NoMove = 1 << 2,
		NoScrollbar = 1 << 3,
		NoScrollWithMouse = 1 << 4,
		NoCollapse = 1 << 5,
		AlwaysAutoResize = 1 << 6,
		NoBackground = 1 << 7,
		NoSavedSettings = 1 << 8,
		NoMouseInputs = 1 << 9,
		MenuBar = 1 << 10,
		HorizontalScrollbar = 1 << 11,
		NoFocusOnAppearing = 1 << 12,
		NoBringToFrontOnFocus = 1 << 13,
		AlwaysVerticalScrollbar = 1 << 14,
		AlwaysHorizontalScrollbar = 1 << 15,
		AlwaysUseWindowPadding = 1 << 16,
		NoNavInputs = 1 << 18,
		NoNavFocus = 1 << 19,
		UnsavedDocument = 1 << 20,
		NoDocking = 1 << 21,
		NoNav = ImGuiWindowFlags.NoNavInputs | ImGuiWindowFlags.NoNavFocus,
		NoDecoration = ImGuiWindowFlags.NoTitleBar | ImGuiWindowFlags.NoResize | ImGuiWindowFlags.NoScrollbar | ImGuiWindowFlags.NoCollapse,
		NoInputs = ImGuiWindowFlags.NoMouseInputs | ImGuiWindowFlags.NoNavInputs | ImGuiWindowFlags.NoNavFocus,
		NavFlattened = 1 << 23,
		ChildWindow = 1 << 24,
		Tooltip = 1 << 25,
		Popup = 1 << 26,
		Modal = 1 << 27,
		ChildMenu = 1 << 28,
		DockNodeHost = 1 << 29,
	}

	enum ImGuiInputTextFlags {
		None = 0,
		CharsDecimal = 1 << 0,
		CharsHexadecimal = 1 << 1,
		CharsUppercase = 1 << 2,
		CharsNoBlank = 1 << 3,
		AutoSelectAll = 1 << 4,
		EnterReturnsTrue = 1 << 5,
		CallbackCompletion = 1 << 6,
		CallbackHistory = 1 << 7,
		CallbackAlways = 1 << 8,
		CallbackCharFilter = 1 << 9,
		AllowTabInput = 1 << 10,
		CtrlEnterForNewLine = 1 << 11,
		NoHorizontalScroll = 1 << 12,
		AlwaysOverwrite = 1 << 13,
		ReadOnly = 1 << 14,
		Password = 1 << 15,
		NoUndoRedo = 1 << 16,
		CharsScientific = 1 << 17,
		CallbackResize = 1 << 18,
		CallbackEdit = 1 << 19,
		EscapeClearsAll = 1 << 20,
		AlwaysInsertMode = ImGuiInputTextFlags.AlwaysOverwrite,
	}

	enum ImGuiTreeNodeFlags {
		None = 0,
		Selected = 1 << 0,
		Framed = 1 << 1,
		AllowItemOverlap = 1 << 2,
		NoTreePushOnOpen = 1 << 3,
		NoAutoOpenOnLog = 1 << 4,
		DefaultOpen = 1 << 5,
		OpenOnDoubleClick = 1 << 6,
		OpenOnArrow = 1 << 7,
		Leaf = 1 << 8,
		Bullet = 1 << 9,
		FramePadding = 1 << 10,
		SpanAvailWidth = 1 << 11,
		SpanFullWidth = 1 << 12,
		NavLeftJumpsBackHere = 1 << 13,
		CollapsingHeader = ImGuiTreeNodeFlags.Framed | ImGuiTreeNodeFlags.NoTreePushOnOpen | ImGuiTreeNodeFlags.NoAutoOpenOnLog,
	}

	enum ImGuiPopupFlags {
		None = 0,
		MouseButtonLeft = 0,
		MouseButtonRight = 1,
		MouseButtonMiddle = 2,
		MouseButtonMask_ = 0x1F,
		MouseButtonDefault_ = 1,
		NoOpenOverExistingPopup = 1 << 5,
		NoOpenOverItems = 1 << 6,
		AnyPopupId = 1 << 7,
		AnyPopupLevel = 1 << 8,
		AnyPopup = ImGuiPopupFlags.AnyPopupId | ImGuiPopupFlags.AnyPopupLevel,
	}

	enum ImGuiSelectableFlags {
		None = 0,
		DontClosePopups = 1 << 0,
		SpanAllColumns = 1 << 1,
		AllowDoubleClick = 1 << 2,
		Disabled = 1 << 3,
		AllowItemOverlap = 1 << 4,
	}

	enum ImGuiComboFlags {
		None = 0,
		PopupAlignLeft = 1 << 0,
		HeightSmall = 1 << 1,
		HeightRegular = 1 << 2,
		HeightLarge = 1 << 3,
		HeightLargest = 1 << 4,
		NoArrowButton = 1 << 5,
		NoPreview = 1 << 6,
		HeightMask_ = ImGuiComboFlags.HeightSmall | ImGuiComboFlags.HeightRegular | ImGuiComboFlags.HeightLarge | ImGuiComboFlags.HeightLargest,
	}

	enum ImGuiTabBarFlags {
		None = 0,
		Reorderable = 1 << 0,
		AutoSelectNewTabs = 1 << 1,
		TabListPopupButton = 1 << 2,
		NoCloseWithMiddleMouseButton = 1 << 3,
		NoTabListScrollingButtons = 1 << 4,
		NoTooltip = 1 << 5,
		FittingPolicyResizeDown = 1 << 6,
		FittingPolicyScroll = 1 << 7,
		FittingPolicyMask_ = ImGuiTabBarFlags.FittingPolicyResizeDown | ImGuiTabBarFlags.FittingPolicyScroll,
		FittingPolicyDefault_ = ImGuiTabBarFlags.FittingPolicyResizeDown,
	}

	enum ImGuiTabItemFlags {
		None = 0,
		UnsavedDocument = 1 << 0,
		SetSelected = 1 << 1,
		NoCloseWithMiddleMouseButton = 1 << 2,
		NoPushId = 1 << 3,
		NoTooltip = 1 << 4,
		NoReorder = 1 << 5,
		Leading = 1 << 6,
		Trailing = 1 << 7,
	}

	enum ImGuiTableFlags {
		None = 0,
		Resizable = 1 << 0,
		Reorderable = 1 << 1,
		Hideable = 1 << 2,
		Sortable = 1 << 3,
		NoSavedSettings = 1 << 4,
		ContextMenuInBody = 1 << 5,
		RowBg = 1 << 6,
		BordersInnerH = 1 << 7,
		BordersOuterH = 1 << 8,
		BordersInnerV = 1 << 9,
		BordersOuterV = 1 << 10,
		BordersH = ImGuiTableFlags.BordersInnerH | ImGuiTableFlags.BordersOuterH,
		BordersV = ImGuiTableFlags.BordersInnerV | ImGuiTableFlags.BordersOuterV,
		BordersInner = ImGuiTableFlags.BordersInnerV | ImGuiTableFlags.BordersInnerH,
		BordersOuter = ImGuiTableFlags.BordersOuterV | ImGuiTableFlags.BordersOuterH,
		Borders = ImGuiTableFlags.BordersInner | ImGuiTableFlags.BordersOuter,
		NoBordersInBody = 1 << 11,
		NoBordersInBodyUntilResize = 1 << 12,
		SizingFixedFit = 1 << 13,
		SizingFixedSame = 2 << 13,
		SizingStretchProp = 3 << 13,
		SizingStretchSame = 4 << 13,
		NoHostExtendX = 1 << 16,
		NoHostExtendY = 1 << 17,
		NoKeepColumnsVisible = 1 << 18,
		PreciseWidths = 1 << 19,
		NoClip = 1 << 20,
		PadOuterX = 1 << 21,
		NoPadOuterX = 1 << 22,
		NoPadInnerX = 1 << 23,
		ScrollX = 1 << 24,
		ScrollY = 1 << 25,
		SortMulti = 1 << 26,
		SortTristate = 1 << 27,
		SizingMask_ = ImGuiTableFlags.SizingFixedFit | ImGuiTableFlags.SizingFixedSame | ImGuiTableFlags.SizingStretchProp | ImGuiTableFlags.SizingStretchSame,
	}

	enum ImGuiTableColumnFlags {
		None = 0,
		Disabled = 1 << 0,
		DefaultHide = 1 << 1,
		DefaultSort = 1 << 2,
		WidthStretch = 1 << 3,
		WidthFixed = 1 << 4,
		NoResize = 1 << 5,
		NoReorder = 1 << 6,
		NoHide = 1 << 7,
		NoClip = 1 << 8,
		NoSort = 1 << 9,
		NoSortAscending = 1 << 10,
		NoSortDescending = 1 << 11,
		NoHeaderLabel = 1 << 12,
		NoHeaderWidth = 1 << 13,
		PreferSortAscending = 1 << 14,
		PreferSortDescending = 1 << 15,
		IndentEnable = 1 << 16,
		IndentDisable = 1 << 17,
		IsEnabled = 1 << 24,
		IsVisible = 1 << 25,
		IsSorted = 1 << 26,
		IsHovered = 1 << 27,
		WidthMask_ = ImGuiTableColumnFlags.WidthStretch | ImGuiTableColumnFlags.WidthFixed,
		IndentMask_ = ImGuiTableColumnFlags.IndentEnable | ImGuiTableColumnFlags.IndentDisable,
		StatusMask_ = ImGuiTableColumnFlags.IsEnabled | ImGuiTableColumnFlags.IsVisible | ImGuiTableColumnFlags.IsSorted | ImGuiTableColumnFlags.IsHovered,
		NoDirectResize_ = 1 << 30,
	}

	enum ImGuiTableRowFlags {
		None = 0,
		Headers = 1 << 0,
	}

	enum ImGuiTableBgTarget {
		None = 0,
		RowBg0 = 1,
		RowBg1 = 2,
		CellBg = 3,
	}

	enum ImGuiFocusedFlags {
		None = 0,
		ChildWindows = 1 << 0,
		RootWindow = 1 << 1,
		AnyWindow = 1 << 2,
		NoPopupHierarchy = 1 << 3,
		DockHierarchy = 1 << 4,
		RootAndChildWindows = ImGuiFocusedFlags.RootWindow | ImGuiFocusedFlags.ChildWindows,
	}

	enum ImGuiHoveredFlags {
		None = 0,
		ChildWindows = 1 << 0,
		RootWindow = 1 << 1,
		AnyWindow = 1 << 2,
		NoPopupHierarchy = 1 << 3,
		DockHierarchy = 1 << 4,
		AllowWhenBlockedByPopup = 1 << 5,
		AllowWhenBlockedByActiveItem = 1 << 7,
		AllowWhenOverlapped = 1 << 8,
		AllowWhenDisabled = 1 << 9,
		NoNavOverride = 1 << 10,
		RectOnly = ImGuiHoveredFlags.AllowWhenBlockedByPopup | ImGuiHoveredFlags.AllowWhenBlockedByActiveItem | ImGuiHoveredFlags.AllowWhenOverlapped,
		RootAndChildWindows = ImGuiHoveredFlags.RootWindow | ImGuiHoveredFlags.ChildWindows,
		DelayNormal = 1 << 11,
		DelayShort = 1 << 12,
		NoSharedDelay = 1 << 13,
	}

	enum ImGuiDockNodeFlags {
		None = 0,
		KeepAliveOnly = 1 << 0,
		NoDockingInCentralNode = 1 << 2,
		PassthruCentralNode = 1 << 3,
		NoSplit = 1 << 4,
		NoResize = 1 << 5,
		AutoHideTabBar = 1 << 6,
	}

	enum ImGuiDragDropFlags {
		None = 0,
		SourceNoPreviewTooltip = 1 << 0,
		SourceNoDisableHover = 1 << 1,
		SourceNoHoldToOpenOthers = 1 << 2,
		SourceAllowNullID = 1 << 3,
		SourceExtern = 1 << 4,
		SourceAutoExpirePayload = 1 << 5,
		AcceptBeforeDelivery = 1 << 10,
		AcceptNoDrawDefaultRect = 1 << 11,
		AcceptNoPreviewTooltip = 1 << 12,
		AcceptPeekOnly = ImGuiDragDropFlags.AcceptBeforeDelivery | ImGuiDragDropFlags.AcceptNoDrawDefaultRect,
	}

	enum ImGuiDataType {
		S8,
		U8,
		S16,
		U16,
		S32,
		U32,
		S64,
		U64,
		Float,
		Double,
	}

	enum ImGuiDir {
		None = -1,
		Left = 0,
		Right = 1,
		Up = 2,
		Down = 3,
	}

	enum ImGuiSortDirection {
		None = 0,
		Ascending = 1,
		Descending = 2,
	}

	enum ImGuiInputFlags {
		None = 0,
		Repeat = 1 << 0,
		RouteFocused = 1 << 8,
		RouteGlobalLow = 1 << 9,
		RouteGlobal = 1 << 10,
		RouteGlobalHigh = 1 << 11,
		RouteAlways = 1 << 12,
		RouteUnlessBgFocused = 1 << 13,
	}

	enum ImGuiNavInput {
		Activate,
		Cancel,
		Input,
		Menu,
		DpadLeft,
		DpadRight,
		DpadUp,
		DpadDown,
		LStickLeft,
		LStickRight,
		LStickUp,
		LStickDown,
		FocusPrev,
		FocusNext,
		TweakSlow,
		TweakFast,
		COUNT,
	}

	enum ImGuiConfigFlags {
		None = 0,
		NavEnableKeyboard = 1 << 0,
		NavEnableGamepad = 1 << 1,
		NavEnableSetMousePos = 1 << 2,
		NavNoCaptureKeyboard = 1 << 3,
		NoMouse = 1 << 4,
		NoMouseCursorChange = 1 << 5,
		DockingEnable = 1 << 6,
		ViewportsEnable = 1 << 10,
		DpiEnableScaleViewports = 1 << 14,
		DpiEnableScaleFonts = 1 << 15,
		IsSRGB = 1 << 20,
		IsTouchScreen = 1 << 21,
	}

	enum ImGuiBackendFlags {
		None = 0,
		HasGamepad = 1 << 0,
		HasMouseCursors = 1 << 1,
		HasSetMousePos = 1 << 2,
		RendererHasVtxOffset = 1 << 3,
		PlatformHasViewports = 1 << 10,
		HasMouseHoveredViewport = 1 << 11,
		RendererHasViewports = 1 << 12,
	}

	enum ImGuiCol {
		Text,
		TextDisabled,
		WindowBg,
		ChildBg,
		PopupBg,
		Border,
		BorderShadow,
		FrameBg,
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
		Header,
		HeaderHovered,
		HeaderActive,
		Separator,
		SeparatorHovered,
		SeparatorActive,
		ResizeGrip,
		ResizeGripHovered,
		ResizeGripActive,
		Tab,
		TabHovered,
		TabActive,
		TabUnfocused,
		TabUnfocusedActive,
		DockingPreview,
		DockingEmptyBg,
		PlotLines,
		PlotLinesHovered,
		PlotHistogram,
		PlotHistogramHovered,
		TableHeaderBg,
		TableBorderStrong,
		TableBorderLight,
		TableRowBg,
		TableRowBgAlt,
		TextSelectedBg,
		DragDropTarget,
		NavHighlight,
		NavWindowingHighlight,
		NavWindowingDimBg,
		ModalWindowDimBg,
	}

	enum ImGuiStyleVar {
		Alpha,
		DisabledAlpha,
		WindowPadding,
		WindowRounding,
		WindowBorderSize,
		WindowMinSize,
		WindowTitleAlign,
		ChildRounding,
		ChildBorderSize,
		PopupRounding,
		PopupBorderSize,
		FramePadding,
		FrameRounding,
		FrameBorderSize,
		ItemSpacing,
		ItemInnerSpacing,
		IndentSpacing,
		CellPadding,
		ScrollbarSize,
		ScrollbarRounding,
		GrabMinSize,
		GrabRounding,
		TabRounding,
		ButtonTextAlign,
		SelectableTextAlign,
	}

	enum ImGuiButtonFlags {
		None = 0,
		MouseButtonLeft = 1 << 0,
		MouseButtonRight = 1 << 1,
		MouseButtonMiddle = 1 << 2,
		MouseButtonMask_ = ImGuiButtonFlags.MouseButtonLeft | ImGuiButtonFlags.MouseButtonRight | ImGuiButtonFlags.MouseButtonMiddle,
		MouseButtonDefault_ = ImGuiButtonFlags.MouseButtonLeft,
	}

	enum ImGuiColorEditFlags {
		None = 0,
		NoAlpha = 1 << 1,
		NoPicker = 1 << 2,
		NoOptions = 1 << 3,
		NoSmallPreview = 1 << 4,
		NoInputs = 1 << 5,
		NoTooltip = 1 << 6,
		NoLabel = 1 << 7,
		NoSidePreview = 1 << 8,
		NoDragDrop = 1 << 9,
		NoBorder = 1 << 10,
		AlphaBar = 1 << 16,
		AlphaPreview = 1 << 17,
		AlphaPreviewHalf = 1 << 18,
		HDR = 1 << 19,
		DisplayRGB = 1 << 20,
		DisplayHSV = 1 << 21,
		DisplayHex = 1 << 22,
		Uint8 = 1 << 23,
		Float = 1 << 24,
		PickerHueBar = 1 << 25,
		PickerHueWheel = 1 << 26,
		InputRGB = 1 << 27,
		InputHSV = 1 << 28,
		DefaultOptions_ = ImGuiColorEditFlags.Uint8 | ImGuiColorEditFlags.DisplayRGB | ImGuiColorEditFlags.InputRGB | ImGuiColorEditFlags.PickerHueBar,
		DisplayMask_ = ImGuiColorEditFlags.DisplayRGB | ImGuiColorEditFlags.DisplayHSV | ImGuiColorEditFlags.DisplayHex,
		DataTypeMask_ = ImGuiColorEditFlags.Uint8 | ImGuiColorEditFlags.Float,
		PickerMask_ = ImGuiColorEditFlags.PickerHueWheel | ImGuiColorEditFlags.PickerHueBar,
		InputMask_ = ImGuiColorEditFlags.InputRGB | ImGuiColorEditFlags.InputHSV,
	}

	enum ImGuiSliderFlags {
		None = 0,
		AlwaysClamp = 1 << 4,
		Logarithmic = 1 << 5,
		NoRoundToFormat = 1 << 6,
		NoInput = 1 << 7,
		InvalidMask_ = 0x7000000F,
		ClampOnInput = ImGuiSliderFlags.AlwaysClamp,
	}

	enum ImGuiMouseButton {
		Left = 0,
		Right = 1,
		Middle = 2,
		COUNT = 5,
	}

	enum ImGuiMouseCursor {
		None = -1,
		Arrow = 0,
		TextInput,
		ResizeAll,
		ResizeNS,
		ResizeEW,
		ResizeNESW,
		ResizeNWSE,
		Hand,
		NotAllowed,
	}

	enum ImGuiCond {
		None = 0,
		Always = 1 << 0,
		Once = 1 << 1,
		FirstUseEver = 1 << 2,
		Appearing = 1 << 3,
	}

	enum ImDrawFlags {
		None = 0,
		Closed = 1 << 0,
		RoundCornersTopLeft = 1 << 4,
		RoundCornersTopRight = 1 << 5,
		RoundCornersBottomLeft = 1 << 6,
		RoundCornersBottomRight = 1 << 7,
		RoundCornersNone = 1 << 8,
		RoundCornersTop = ImDrawFlags.RoundCornersTopLeft | ImDrawFlags.RoundCornersTopRight,
		RoundCornersBottom = ImDrawFlags.RoundCornersBottomLeft | ImDrawFlags.RoundCornersBottomRight,
		RoundCornersLeft = ImDrawFlags.RoundCornersBottomLeft | ImDrawFlags.RoundCornersTopLeft,
		RoundCornersRight = ImDrawFlags.RoundCornersBottomRight | ImDrawFlags.RoundCornersTopRight,
		RoundCornersAll = ImDrawFlags.RoundCornersTopLeft | ImDrawFlags.RoundCornersTopRight | ImDrawFlags.RoundCornersBottomLeft | ImDrawFlags.RoundCornersBottomRight,
		RoundCornersDefault_ = ImDrawFlags.RoundCornersAll,
		RoundCornersMask_ = ImDrawFlags.RoundCornersAll | ImDrawFlags.RoundCornersNone,
	}

	enum ImDrawListFlags {
		None = 0,
		AntiAliasedLines = 1 << 0,
		AntiAliasedLinesUseTex = 1 << 1,
		AntiAliasedFill = 1 << 2,
		AllowVtxOffset = 1 << 3,
	}

	enum ImFontAtlasFlags {
		None = 0,
		NoPowerOfTwoHeight = 1 << 0,
		NoMouseCursors = 1 << 1,
		NoBakedLines = 1 << 2,
	}

	enum ImGuiViewportFlags {
		None = 0,
		IsPlatformWindow = 1 << 0,
		IsPlatformMonitor = 1 << 1,
		OwnedByApp = 1 << 2,
		NoDecoration = 1 << 3,
		NoTaskBarIcon = 1 << 4,
		NoFocusOnAppearing = 1 << 5,
		NoFocusOnClick = 1 << 6,
		NoInputs = 1 << 7,
		NoRendererClear = 1 << 8,
		TopMost = 1 << 9,
		Minimized = 1 << 10,
		NoAutoMerge = 1 << 11,
		CanHostOtherWindows = 1 << 12,
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
			Context: info[? "video_d3d11_context"],
			Handle: window_handle()
		};
		ds_map_destroy(info);
		return __imgui_initialize(pointers);
	}
	
	static __Update = function() {
		var _w = window_get_width(), _h = window_get_height();
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
};