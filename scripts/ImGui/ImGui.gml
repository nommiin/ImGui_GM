function ImGui() constructor {
	/// @section Binds
	/// @function CreateContext()
	/// @context ImGui
	/// @return {Pointer}
	static CreateContext = function() {
		return __imgui_create_context();
	}

	/// @function DestroyContext(ctx)
	/// @argument {Pointer} ctx
	/// @context ImGui
	/// @return {Undefined}
	static DestroyContext = function(ctx) {
		return __imgui_destroy_context(ctx);
	}

	/// @function GetCurrentContext()
	/// @context ImGui
	/// @return {Pointer}
	static GetCurrentContext = function() {
		return __imgui_get_current_context();
	}

	/// @function SetCurrentContext(ctx)
	/// @argument {Pointer} ctx
	/// @context ImGui
	/// @return {Undefined}
	static SetCurrentContext = function(ctx) {
		return __imgui_set_current_context(ctx);
	}

	/// @function ShowDemoWindow(open)
	/// @argument {Bool} [open=undefined]
	/// @context ImGui
	/// @return {Bool}
	static ShowDemoWindow = function(open=undefined) {
		return __imgui_show_demo_window(open);
	}

	/// @function ShowMetricsWindow(open)
	/// @argument {Bool} [open=undefined]
	/// @context ImGui
	/// @return {Bool}
	static ShowMetricsWindow = function(open=undefined) {
		return __imgui_show_metrics_window(open);
	}

	/// @function ShowDebugLogWindow(open)
	/// @argument {Bool} [open=undefined]
	/// @context ImGui
	/// @return {Bool}
	static ShowDebugLogWindow = function(open=undefined) {
		return __imgui_show_debug_log_window(open);
	}

	/// @function ShowStackToolWindow(open)
	/// @argument {Bool} [open=undefined]
	/// @context ImGui
	/// @return {Bool}
	static ShowStackToolWindow = function(open=undefined) {
		return __imgui_show_stack_tool_window(open);
	}

	/// @function ShowAboutWindow(open)
	/// @argument {Bool} [open=undefined]
	/// @context ImGui
	/// @return {Bool}
	static ShowAboutWindow = function(open=undefined) {
		return __imgui_show_about_window(open);
	}

	/// @function ShowStyleEditor()
	/// @context ImGui
	/// @return {Undefined}
	static ShowStyleEditor = function() {
		return __imgui_show_style_editor();
	}

	/// @function ShowStyleSelector(label)
	/// @argument {String} label
	/// @context ImGui
	/// @return {Bool}
	static ShowStyleSelector = function(label) {
		return __imgui_show_style_selector(label);
	}

	/// @function ShowFontSelector(label)
	/// @argument {String} label
	/// @context ImGui
	/// @return {Undefined}
	static ShowFontSelector = function(label) {
		return __imgui_show_font_selector(label);
	}

	/// @function ShowUserGuide()
	/// @context ImGui
	/// @return {Undefined}
	static ShowUserGuide = function() {
		return __imgui_show_user_guide();
	}

	/// @function GetVersion()
	/// @context ImGui
	/// @return {String}
	static GetVersion = function() {
		return __imgui_get_version();
	}

	/// @function PushID(_id)
	/// @argument {String|Real} _id
	/// @context ImGui
	/// @return {Undefined}
	static PushID = function(_id) {
		return __imgui_push_id(_id);
	}

	/// @function PopID()
	/// @context ImGui
	/// @return {Undefined}
	static PopID = function() {
		return __imgui_pop_id();
	}

	/// @function GetID(str_id)
	/// @argument {String} str_id
	/// @context ImGui
	/// @return {Real}
	static GetID = function(str_id) {
		return __imgui_get_id(str_id);
	}

	/// @function BeginDisabled(disabled)
	/// @argument {Bool} [disabled=true]
	/// @context ImGui
	/// @return {Undefined}
	static BeginDisabled = function(disabled=true) {
		return __imgui_begin_disabled(disabled);
	}

	/// @function EndDisabled()
	/// @context ImGui
	/// @return {Undefined}
	static EndDisabled = function() {
		return __imgui_end_disabled();
	}

	/// @function IsItemHovered(flags)
	/// @argument {Enum.ImGuiHoveredFlags} [flags=ImGuiHoveredFlags.None]
	/// @context ImGui
	/// @return {Bool}
	static IsItemHovered = function(flags=ImGuiHoveredFlags.None) {
		return __imgui_is_item_hovered(flags);
	}

	/// @function IsItemActive()
	/// @context ImGui
	/// @return {Bool}
	static IsItemActive = function() {
		return __imgui_is_item_active();
	}

	/// @function IsItemFocused()
	/// @context ImGui
	/// @return {Bool}
	static IsItemFocused = function() {
		return __imgui_is_item_focused();
	}

	/// @function IsItemClicked(mouse_button)
	/// @argument {Enum.ImGuiMouseButton} [mouse_button=ImGuiMouseButton.Left]
	/// @context ImGui
	/// @return {Bool}
	static IsItemClicked = function(mouse_button=ImGuiMouseButton.Left) {
		return __imgui_is_item_clicked(mouse_button);
	}

	/// @function IsItemVisible()
	/// @context ImGui
	/// @return {Bool}
	static IsItemVisible = function() {
		return __imgui_is_item_visible();
	}

	/// @function IsItemEdited()
	/// @context ImGui
	/// @return {Bool}
	static IsItemEdited = function() {
		return __imgui_is_item_edited();
	}

	/// @function IsItemActivated()
	/// @context ImGui
	/// @return {Bool}
	static IsItemActivated = function() {
		return __imgui_is_item_activated();
	}

	/// @function IsItemDeactivated()
	/// @context ImGui
	/// @return {Bool}
	static IsItemDeactivated = function() {
		return __imgui_is_item_deactivated();
	}

	/// @function IsItemDeactivatedAfterEdit()
	/// @context ImGui
	/// @return {Bool}
	static IsItemDeactivatedAfterEdit = function() {
		return __imgui_is_item_deactivated_after_edit();
	}

	/// @function IsItemToggledOpen()
	/// @context ImGui
	/// @return {Bool}
	static IsItemToggledOpen = function() {
		return __imgui_is_item_toggled_open();
	}

	/// @function IsAnyItemHovered()
	/// @context ImGui
	/// @return {Bool}
	static IsAnyItemHovered = function() {
		return __imgui_is_any_item_hovered();
	}

	/// @function IsAnyItemActive()
	/// @context ImGui
	/// @return {Bool}
	static IsAnyItemActive = function() {
		return __imgui_is_any_item_active();
	}

	/// @function IsAnyItemFocused()
	/// @context ImGui
	/// @return {Bool}
	static IsAnyItemFocused = function() {
		return __imgui_is_any_item_focused();
	}

	/// @function GetItemID()
	/// @context ImGui
	/// @return {Real}
	static GetItemID = function() {
		return __imgui_get_item_id();
	}

	/// @function GetItemRectMinX()
	/// @context ImGui
	/// @return {Real}
	static GetItemRectMinX = function() {
		return __imgui_get_item_rect_min_x();
	}

	/// @function GetItemRectMinY()
	/// @context ImGui
	/// @return {Real}
	static GetItemRectMinY = function() {
		return __imgui_get_item_rect_min_y();
	}

	/// @function GetItemRectMaxX()
	/// @context ImGui
	/// @return {Real}
	static GetItemRectMaxX = function() {
		return __imgui_get_item_rect_max_x();
	}

	/// @function GetItemRectMaxY()
	/// @context ImGui
	/// @return {Real}
	static GetItemRectMaxY = function() {
		return __imgui_get_item_rect_max_y();
	}

	/// @function GetItemRectSizeX()
	/// @context ImGui
	/// @return {Real}
	static GetItemRectSizeX = function() {
		return __imgui_get_item_rect_size_x();
	}

	/// @function GetItemRectSizeY()
	/// @context ImGui
	/// @return {Real}
	static GetItemRectSizeY = function() {
		return __imgui_get_item_rect_size_y();
	}

	/// @function SetItemAllowOverlap()
	/// @context ImGui
	/// @return {Undefined}
	static SetItemAllowOverlap = function() {
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
		return __imgui_is_rect_visible(x1, y1, x2, y2);
	}

	/// @function GetTime()
	/// @context ImGui
	/// @return {Real}
	static GetTime = function() {
		return __imgui_get_time();
	}

	/// @function GetFrameCount()
	/// @context ImGui
	/// @return {Real}
	static GetFrameCount = function() {
		return __imgui_get_frame_count();
	}

	/// @function CalcTextWidth(text, hide_text_after_double_hash, wrap_width)
	/// @argument {String} text
	/// @argument {Bool} [hide_text_after_double_hash=false]
	/// @argument {Real} [wrap_width=-1]
	/// @context ImGui
	/// @return {Real}
	static CalcTextWidth = function(text, hide_text_after_double_hash=false, wrap_width=-1) {
		return __imgui_calc_text_width(text, hide_text_after_double_hash, wrap_width);
	}

	/// @function CalcTextHeight(text, hide_text_after_double_hash, wrap_width)
	/// @argument {String} text
	/// @argument {Bool} [hide_text_after_double_hash=false]
	/// @argument {Real} [wrap_width=-1]
	/// @context ImGui
	/// @return {Real}
	static CalcTextHeight = function(text, hide_text_after_double_hash=false, wrap_width=-1) {
		return __imgui_calc_text_height(text, hide_text_after_double_hash, wrap_width);
	}

	/// @function PushAllowKeyboardFocus(allow_keyboard_focus)
	/// @argument {Bool} allow_keyboard_focus
	/// @context ImGui
	/// @return {Undefined}
	static PushAllowKeyboardFocus = function(allow_keyboard_focus) {
		return __imgui_push_allow_keyboard_focus(allow_keyboard_focus);
	}

	/// @function PopAllowKeyboardFocus()
	/// @context ImGui
	/// @return {Undefined}
	static PopAllowKeyboardFocus = function() {
		return __imgui_pop_allow_keyboard_focus();
	}

	/// @function SetKeyboardFocusHere(offset)
	/// @argument {Real} [offset=0]
	/// @context ImGui
	/// @return {Undefined}
	static SetKeyboardFocusHere = function(offset=0) {
		return __imgui_set_keyboard_focus_here(offset);
	}

	/// @function PushButtonRepeat(_repeat)
	/// @argument {Bool} _repeat
	/// @context ImGui
	/// @return {Undefined}
	static PushButtonRepeat = function(_repeat) {
		return __imgui_push_button_repeat(_repeat);
	}

	/// @function PopButtonRepeat()
	/// @context ImGui
	/// @return {Undefined}
	static PopButtonRepeat = function() {
		return __imgui_pop_button_repeat();
	}

	/// @function SetItemDefaultFocus()
	/// @context ImGui
	/// @return {Undefined}
	static SetItemDefaultFocus = function() {
		return __imgui_set_item_default_focus();
	}

	/// @function ConfigFlagsGet()
	/// @context ImGui
	/// @return {Real}
	static ConfigFlagsGet = function() {
		return __imgui_config_flags_get();
	}

	/// @function ConfigFlagsSet(flags)
	/// @argument {Real} flags
	/// @context ImGui
	/// @return {Unknown<unset>}
	static ConfigFlagsSet = function(flags) {
		return __imgui_config_flags_set(flags);
	}

	/// @function ConfigFlagToggle(flag)
	/// @argument {Real} flag
	/// @context ImGui
	/// @return {Bool}
	static ConfigFlagToggle = function(flag) {
		return __imgui_config_flag_toggle(flag);
	}

	/// @function GetMainViewport()
	/// @context ImGui
	/// @return {Pointer}
	static GetMainViewport = function() {
		return __imgui_get_main_viewport();
	}

	/// @function LogText(text)
	/// @argument {String} text
	/// @context ImGui
	/// @return {Undefined}
	static LogText = function(text) {
		return __imgui_log_text(text);
	}

	/// @function WantKeyboardCapture(val)
	/// @argument {Bool} [val=undefined]
	/// @context ImGui
	/// @return {Bool}
	static WantKeyboardCapture = function(val=undefined) {
		return __imgui_want_keyboard_capture(val);
	}

	/// @function WantMouseCapture(val)
	/// @argument {Bool} [val=undefined]
	/// @context ImGui
	/// @return {Bool}
	static WantMouseCapture = function(val=undefined) {
		return __imgui_want_mouse_capture(val);
	}

	/// @function WantTextInput(val)
	/// @argument {Bool} [val=undefined]
	/// @context ImGui
	/// @return {Bool}
	static WantTextInput = function(val=undefined) {
		return __imgui_want_text_input(val);
	}

	/// @function WantMouseCaptureUnlessPopupClose(val)
	/// @argument {Bool} [val=undefined]
	/// @context ImGui
	/// @return {Bool}
	static WantMouseCaptureUnlessPopupClose = function(val=undefined) {
		return __imgui_want_mouse_unless_popup_close(val);
	}

	/// @function ColorEdit3(label, col, flags)
	/// @argument {String} label
	/// @argument {Real} col
	/// @argument {Enum.ImGuiCol} [flags=ImGuiColorEditFlags.None]
	/// @context ImGui
	/// @return {Real}
	static ColorEdit3 = function(label, col, flags=ImGuiColorEditFlags.None) {
		return __imgui_color_edit3(label, col, flags);
	}

	/// @function ColorPicker3(label, col, flags)
	/// @argument {String} label
	/// @argument {Real} col
	/// @argument {Enum.ImGuiCol} [flags=ImGuiColorEditFlags.None]
	/// @context ImGui
	/// @return {Real}
	static ColorPicker3 = function(label, col, flags=ImGuiColorEditFlags.None) {
		return __imgui_color_picker3(label, col, flags);
	}

	/// @function ColorEdit4(label, col, flags)
	/// @argument {String} label
	/// @argument {ImColor} col
	/// @argument {Enum.ImGuiCol} [flags=ImGuiColorEditFlags.None]
	/// @context ImGui
	/// @return {Bool}
	static ColorEdit4 = function(label, col, flags=ImGuiColorEditFlags.None) {
		return __imgui_color_edit4(label, col, flags);
	}

	/// @function ColorPicker4(label, col, flags)
	/// @argument {String} label
	/// @argument {ImColor} col
	/// @argument {Enum.ImGuiCol} [flags=ImGuiColorEditFlags.None]
	/// @context ImGui
	/// @return {Bool}
	static ColorPicker4 = function(label, col, flags=ImGuiColorEditFlags.None) {
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
		return __imgui_color_button(desc_id, color, alpha, flags, width, height);
	}

	/// @function SetColorEditOptions(flags)
	/// @argument {Enum.ImGuiCol} [flags=ImGuiColorEditFlags.None]
	/// @context ImGui
	/// @return {Undefined}
	static SetColorEditOptions = function(flags=ImGuiColorEditFlags.None) {
		return __imgui_set_color_edit_options(flags);
	}

	/// @function BeginCombo(label, preview, flags)
	/// @argument {String} label
	/// @argument {String} preview
	/// @argument {Real} flags
	/// @context ImGui
	/// @return {Bool}
	static BeginCombo = function(label, preview, flags) {
		return __imgui_begin_combo(label, preview, flags);
	}

	/// @function EndCombo()
	/// @context ImGui
	/// @return {Undefined}
	static EndCombo = function() {
		return __imgui_end_combo();
	}

	/// @function Combo()
	/// @context ImGui
	/// @return {Unknown<unset>}
	static Combo = function() {
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
		return __imgui_dock_space(_id, width, height, flags);
	}

	/// @function DockSpaceOverViewport(flags)
	/// @argument {Enum.ImGuiDockNodeFlags} [flags=ImGuiDockNodeFlags.None]
	/// @context ImGui
	/// @return {Real}
	static DockSpaceOverViewport = function(flags=ImGuiDockNodeFlags.None) {
		return __imgui_dock_space_over_viewport(flags);
	}

	/// @function SetNextWindowDockID(dock_id, cond)
	/// @argument {Real} dock_id
	/// @argument {Real} cond
	/// @context ImGui
	/// @return {Undefined}
	static SetNextWindowDockID = function(dock_id, cond) {
		return __imgui_set_next_window_dock_id(dock_id, cond);
	}

	/// @function SetNextWindowClass()
	/// @context ImGui
	/// @return {Unknown<unset>}
	static SetNextWindowClass = function() {
		return __imgui_set_next_window_class();
	}

	/// @function GetWindowDockID()
	/// @context ImGui
	/// @return {Real}
	static GetWindowDockID = function() {
		return __imgui_get_window_dock_id();
	}

	/// @function IsWindowDocked()
	/// @context ImGui
	/// @return {Bool}
	static IsWindowDocked = function() {
		return __imgui_is_window_docked();
	}

	/// @function DockBuilderDockWindow(window_name, node_id)
	/// @argument {String} window_name
	/// @argument {Real} node_id
	/// @context ImGui
	/// @return {Undefined}
	static DockBuilderDockWindow = function(window_name, node_id) {
		return __imgui_dockbuilder_dock_window(window_name, node_id);
	}

	/// @function DockBuilderGetNode(node_id)
	/// @argument {Real} node_id
	/// @context ImGui
	/// @return {Pointer}
	static DockBuilderGetNode = function(node_id) {
		return __imgui_dockbuilder_get_node(node_id);
	}

	/// @function DockBuilderGetCentralNode(node_id)
	/// @argument {Real} node_id
	/// @context ImGui
	/// @return {Pointer}
	static DockBuilderGetCentralNode = function(node_id) {
		return __imgui_dockbuilder_get_central_node(node_id);
	}

	/// @function DockBuilderAddNode(node_id, flags)
	/// @argument {Real} [node_id=0]
	/// @argument {Enum.ImGuiDockNodeFlags} [flags=ImGuiDockNodeFlags.None]
	/// @context ImGui
	/// @return {Real}
	static DockBuilderAddNode = function(node_id=0, flags=ImGuiDockNodeFlags.None) {
		return __imgui_dockbuilder_add_node(node_id, flags);
	}

	/// @function DockBuilderRemoveNode(node_id)
	/// @argument {Real} node_id
	/// @context ImGui
	/// @return {Undefined}
	static DockBuilderRemoveNode = function(node_id) {
		return __imgui_dockbuilder_remove_node(node_id);
	}

	/// @function DockBuilderRemoveNodeDockedWindows(node_id, clear_settings_refs)
	/// @argument {Real} node_id
	/// @argument {Bool} [clear_settings_refs=true]
	/// @context ImGui
	/// @return {Undefined}
	static DockBuilderRemoveNodeDockedWindows = function(node_id, clear_settings_refs=true) {
		return __imgui_dockbuilder_remove_node_docked_windows(node_id, clear_settings_refs);
	}

	/// @function DockBuilderRemoveNodeChildNodes(node_id)
	/// @argument {Real} node_id
	/// @context ImGui
	/// @return {Undefined}
	static DockBuilderRemoveNodeChildNodes = function(node_id) {
		return __imgui_dockbuilder_remove_node_child_nodes(node_id);
	}

	/// @function DockBuilderSetNodePos(node_id, _x, _y)
	/// @argument {Real} node_id
	/// @argument {Real} _x
	/// @argument {Real} _y
	/// @context ImGui
	/// @return {Undefined}
	static DockBuilderSetNodePos = function(node_id, _x, _y) {
		return __imgui_dockbuilder_set_node_pos(node_id, _x, _y);
	}

	/// @function DockBuilderSetNodeSize(node_id, width, height)
	/// @argument {Real} node_id
	/// @argument {Real} width
	/// @argument {Real} height
	/// @context ImGui
	/// @return {Undefined}
	static DockBuilderSetNodeSize = function(node_id, width, height) {
		return __imgui_dockbuilder_set_node_size(node_id, width, height);
	}

	/// @function DockBuilderSplitNode(node_id, split_dir, size_ratio_for_node_at_dir)
	/// @argument {Real} node_id
	/// @argument {Real} split_dir
	/// @argument {Real} size_ratio_for_node_at_dir
	/// @context ImGui
	/// @return {Array<ImGuiID>}
	static DockBuilderSplitNode = function(node_id, split_dir, size_ratio_for_node_at_dir) {
		return __imgui_dockbuilder_split_node(node_id, split_dir, size_ratio_for_node_at_dir);
	}

	/// @function DockBuilderCopyDockSpace()
	/// @context ImGui
	/// @return {Unknown<unset>}
	static DockBuilderCopyDockSpace = function() {
		return __imgui_dockbuilder_copy_dock_space();
	}

	/// @function DockBuilderCopyDockNode()
	/// @context ImGui
	/// @return {Unknown<unset>}
	static DockBuilderCopyDockNode = function() {
		return __imgui_dockbuilder_copy_node();
	}

	/// @function DockBuilderCopyWindowSettings(src_name, dst_name)
	/// @argument {String} src_name
	/// @argument {String} dst_name
	/// @context ImGui
	/// @return {Undefined}
	static DockBuilderCopyWindowSettings = function(src_name, dst_name) {
		return __imgui_dockbuilder_copy_window_settings(src_name, dst_name);
	}

	/// @function DockBuilderFinish(node_id)
	/// @argument {Real} node_id
	/// @context ImGui
	/// @return {Undefined}
	static DockBuilderFinish = function(node_id) {
		return __imgui_dockbuilder_finish(node_id);
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
		return __imgui_drag_int_range2(label, v, v_current_max, v_speed, v_min, v_max, format_max, flags);
	}

	/// @function GetBackgroundDrawList(viewport)
	/// @argument {Pointer} [viewport=undefined]
	/// @context ImGui
	/// @return {Pointer}
	static GetBackgroundDrawList = function(viewport=undefined) {
		return __imgui_get_background_drawlist(viewport);
	}

	/// @function GetForegroundDrawList(viewport)
	/// @argument {Pointer} [viewport=undefined]
	/// @context ImGui
	/// @return {Pointer}
	static GetForegroundDrawList = function(viewport=undefined) {
		return __imgui_get_foreground_drawlist(viewport);
	}

	/// @function GetWindowDrawList()
	/// @context ImGui
	/// @return {Pointer}
	static GetWindowDrawList = function() {
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
		return __imgui_drawlist_add_polyline(list, positions, col, flags, thickness, array_length(positions));
	}

	/// @function DrawListAddConvexPolyFilled(list, positions, col)
	/// @argument {Pointer} list
	/// @argument {Array<Real>} positions
	/// @argument {Real} col
	/// @context ImGui
	/// @return {Undefined}
	static DrawListAddConvexPolyFilled = function(list, positions, col) {
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
		return __imgui_drawlist_add_bezier_quadratic(list, x1, y1, x2, y2, x3, y3, col, thickness, num_segments);
	}

	/// @function DrawListPathFillConvex(list, col)
	/// @argument {Pointer} list
	/// @argument {Real} col
	/// @context ImGui
	/// @return {Undefined}
	static DrawListPathFillConvex = function(list, col) {
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
		return __imgui_drawlist_path_stroke(list, col, flags, thickness);
	}

	/// @function DrawListPathClear(list)
	/// @argument {Pointer} list
	/// @context ImGui
	/// @return {Undefined}
	static DrawListPathClear = function(list) {
		return __imgui_drawlist_path_clear(list);
	}

	/// @function DrawListPathLineTo(list, _x, _y)
	/// @argument {Pointer} list
	/// @argument {Real} _x
	/// @argument {Real} _y
	/// @context ImGui
	/// @return {Undefined}
	static DrawListPathLineTo = function(list, _x, _y) {
		return __imgui_drawlist_path_line_to(list, _x, _y);
	}

	/// @function DrawListPathLineToMergeDuplicate(list, _x, _y)
	/// @argument {Pointer} list
	/// @argument {Real} _x
	/// @argument {Real} _y
	/// @context ImGui
	/// @return {Undefined}
	static DrawListPathLineToMergeDuplicate = function(list, _x, _y) {
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
		return __imgui_drawlist_push_clip_rect(list, clip_min_x, clip_min_y, clip_max_x, clip_max_y, intersect_with_current_clip_rect);
	}

	/// @function DrawlistPushClipRectFullscreen(list)
	/// @argument {Pointer} list
	/// @context ImGui
	/// @return {Undefined}
	static DrawlistPushClipRectFullscreen = function(list) {
		return __imgui_drawlist_push_clip_rect_fullscreen(list);
	}

	/// @function DrawListPopClipRect(list)
	/// @argument {Pointer} list
	/// @context ImGui
	/// @return {Undefined}
	static DrawListPopClipRect = function(list) {
		return __imgui_drawlist_pop_clip_rect(list);
	}

	/// @function DrawListPushTextureID(list, sprite, subimg)
	/// @argument {Pointer} list
	/// @argument {Real} sprite
	/// @argument {Real} subimg
	/// @context ImGui
	/// @return {Undefined}
	static DrawListPushTextureID = function(list, sprite, subimg) {
		return __imgui_drawlist_push_textureid(list, sprite, subimg);
	}

	/// @function DrawListPopTextureID(list)
	/// @argument {Pointer} list
	/// @context ImGui
	/// @return {Undefined}
	static DrawListPopTextureID = function(list) {
		return __imgui_drawlist_pop_textureid(list);
	}

	/// @function DrawListFlagsGet(list)
	/// @argument {Pointer} list
	/// @context ImGui
	/// @return {Real}
	static DrawListFlagsGet = function(list) {
		return __imgui_drawlist_flags_get(list);
	}

	/// @function DrawListFlagsSet(list, flags)
	/// @argument {Pointer} list
	/// @argument {Real} flags
	/// @context ImGui
	/// @return {Undefined}
	static DrawListFlagsSet = function(list, flags) {
		return __imgui_drawlist_flags_set(list, flags);
	}

	/// @function DrawListFlagToggle(list, flag)
	/// @argument {Pointer} list
	/// @argument {Real} flag
	/// @context ImGui
	/// @return {Bool}
	static DrawListFlagToggle = function(list, flag) {
		return __imgui_drawlist_flag_toggle(list, flag);
	}

	/// @function MemoryEditorShowWindow(title, buffer, offset, size)
	/// @argument {String} title
	/// @argument {Real} buffer
	/// @argument {Real} [offset=0]
	/// @argument {Real} [size=buffer_get_size⌊buffer⌉]
	/// @context ImGui
	/// @return {Undefined}
	static MemoryEditorShowWindow = function(title, buffer, offset=0, size=buffer_get_size(buffer)) {
		return __imgui_memory_editor_window(title, buffer, offset, size);
	}

	/// @function MemoryEditorDrawContents(buffer, offset, size)
	/// @argument {Real} buffer
	/// @argument {Real} [offset=0]
	/// @argument {Real} [size=buffer_get_size⌊buffer⌉]
	/// @context ImGui
	/// @return {Undefined}
	static MemoryEditorDrawContents = function(buffer, offset=0, size=buffer_get_size(buffer)) {
		return __imgui_memory_editor_contents(buffer, offset, size);
	}

	/// @function GetFont()
	/// @context ImGui
	/// @return {Pointer}
	static GetFont = function() {
		return __imgui_get_font();
	}

	/// @function GetFontSize()
	/// @context ImGui
	/// @return {Real}
	static GetFontSize = function() {
		return __imgui_get_font_size();
	}

	/// @function PushFont(_ptr)
	/// @argument {Any} [_ptr=undefined]
	/// @context ImGui
	/// @return {Undefined}
	static PushFont = function(_ptr=undefined) {
		return __imgui_push_font(_ptr);
	}

	/// @function PopFont()
	/// @context ImGui
	/// @return {Undefined}
	static PopFont = function() {
		return __imgui_pop_font();
	}

	/// @function AddFontFromFile(file, size)
	/// @argument {String} file
	/// @argument {Real} size
	/// @context ImGui
	/// @return {Pointer|Undefined}
	static AddFontFromFile = function(file, size) {
		return __imgui_add_font_from_file(file, size);
	}

	/// @function AddFontDefault()
	/// @context ImGui
	/// @return {Unknown<unset>}
	static AddFontDefault = function() {
		return __imgui_add_font_default();
	}

	/// @function InputText(label, val, flags)
	/// @argument {String} label
	/// @argument {String} val
	/// @argument {Enum.ImGuiInputTextFlags} [flags=ImGuiInputTextFlags.None]
	/// @context ImGui
	/// @return {String}
	static InputText = function(label, val, flags=ImGuiInputTextFlags.None) {
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
		return __imgui_input_int(label, v, step, step_fast, flags);
	}

	/// @function InputInt2(label, v, flags)
	/// @argument {String} label
	/// @argument {Array<Real>} v
	/// @argument {Enum.ImGuiInputTextFlags} [flags=ImGuiInputTextFlags.None]
	/// @context ImGui
	/// @return {Bool}
	static InputInt2 = function(label, v, flags=ImGuiInputTextFlags.None) {
		return __imgui_input_int2(label, v, flags);
	}

	/// @function InputInt3(label, v, flags)
	/// @argument {String} label
	/// @argument {Array<Real>} v
	/// @argument {Enum.ImGuiInputTextFlags} [flags=ImGuiInputTextFlags.None]
	/// @context ImGui
	/// @return {Bool}
	static InputInt3 = function(label, v, flags=ImGuiInputTextFlags.None) {
		return __imgui_input_int3(label, v, flags);
	}

	/// @function InputInt4(label, v, flags)
	/// @argument {String} label
	/// @argument {Array<Real>} v
	/// @argument {Enum.ImGuiInputTextFlags} [flags=ImGuiInputTextFlags.None]
	/// @context ImGui
	/// @return {Bool}
	static InputInt4 = function(label, v, flags=ImGuiInputTextFlags.None) {
		return __imgui_input_int4(label, v, flags);
	}

	/// @function InputIntN(label, v, flags)
	/// @argument {String} label
	/// @argument {Array<Real>} v
	/// @argument {Enum.ImGuiInputTextFlags} [flags=ImGuiInputTextFlags.None]
	/// @context ImGui
	/// @return {Bool}
	static InputIntN = function(label, v, flags=ImGuiInputTextFlags.None) {
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
		return __imgui_input_double(label, v, step, step_fast, format, flags);
	}

	/// @function Spacing()
	/// @context ImGui
	/// @return {Undefined}
	static Spacing = function() {
		return __imgui_spacing();
	}

	/// @function Dummy(width, height)
	/// @argument {Real} width
	/// @argument {Real} height
	/// @context ImGui
	/// @return {Undefined}
	static Dummy = function(width, height) {
		return __imgui_dummy(width, height);
	}

	/// @function NewLine()
	/// @context ImGui
	/// @return {Undefined}
	static NewLine = function() {
		return __imgui_newline();
	}

	/// @function AlignTextToFramePadding()
	/// @context ImGui
	/// @return {Undefined}
	static AlignTextToFramePadding = function() {
		return __imgui_align_text_to_frame_padding();
	}

	/// @function Separator()
	/// @context ImGui
	/// @return {Undefined}
	static Separator = function() {
		return __imgui_separator();
	}

	/// @function Indent(indent_w)
	/// @argument {Real} [indent_w=0]
	/// @context ImGui
	/// @return {Undefined}
	static Indent = function(indent_w=0) {
		return __imgui_indent(indent_w);
	}

	/// @function Unindent(indent_w)
	/// @argument {Real} [indent_w=0]
	/// @context ImGui
	/// @return {Undefined}
	static Unindent = function(indent_w=0) {
		return __imgui_unindent(indent_w);
	}

	/// @function SameLine(offset_from_start_x, spacing)
	/// @argument {Real} [offset_from_start_x=0]
	/// @argument {Real} [spacing=-1]
	/// @context ImGui
	/// @return {Undefined}
	static SameLine = function(offset_from_start_x=0, spacing=-1) {
		return __imgui_sameline(offset_from_start_x, spacing);
	}

	/// @function BeginGroup()
	/// @context ImGui
	/// @return {Undefined}
	static BeginGroup = function() {
		return __imgui_begin_group();
	}

	/// @function EndGroup()
	/// @context ImGui
	/// @return {Undefined}
	static EndGroup = function() {
		return __imgui_end_group();
	}

	/// @function GetCursorPosX()
	/// @context ImGui
	/// @return {Real}
	static GetCursorPosX = function() {
		return __imgui_get_cursor_pos_x();
	}

	/// @function GetCursorPosY()
	/// @context ImGui
	/// @return {Real}
	static GetCursorPosY = function() {
		return __imgui_get_cursor_pos_y();
	}

	/// @function GetCursorStartPosX()
	/// @context ImGui
	/// @return {Real}
	static GetCursorStartPosX = function() {
		return __imgui_get_cursor_start_pos_x();
	}

	/// @function GetCursorStartPosY()
	/// @context ImGui
	/// @return {Real}
	static GetCursorStartPosY = function() {
		return __imgui_get_cursor_start_pos_y();
	}

	/// @function GetCursorScreenPosX()
	/// @context ImGui
	/// @return {Real}
	static GetCursorScreenPosX = function() {
		return __imgui_get_cursor_screen_pos_x();
	}

	/// @function GetCursorScreenPosY()
	/// @context ImGui
	/// @return {Real}
	static GetCursorScreenPosY = function() {
		return __imgui_get_cursor_screen_pos_y();
	}

	/// @function SetCursorScreenPos(_x, _y)
	/// @argument {Real} _x
	/// @argument {Real} _y
	/// @context ImGui
	/// @return {Undefined}
	static SetCursorScreenPos = function(_x, _y) {
		return __imgui_set_cursor_screen_pos(_x, _y);
	}

	/// @function SetCursorPos(local_x, local_y)
	/// @argument {Real} local_x
	/// @argument {Real} local_y
	/// @context ImGui
	/// @return {Undefined}
	static SetCursorPos = function(local_x, local_y) {
		return __imgui_set_cursor_pos(local_x, local_y);
	}

	/// @function SetCursorPosX(local_x)
	/// @argument {Real} local_x
	/// @context ImGui
	/// @return {Undefined}
	static SetCursorPosX = function(local_x) {
		return __imgui_set_cursor_pos_x(local_x);
	}

	/// @function SetCursorPosY(local_y)
	/// @argument {Real} local_y
	/// @context ImGui
	/// @return {Undefined}
	static SetCursorPosY = function(local_y) {
		return __imgui_set_cursor_pos_y(local_y);
	}

	/// @function GetTextLineHeight()
	/// @context ImGui
	/// @return {Real}
	static GetTextLineHeight = function() {
		return __imgui_get_text_line_height();
	}

	/// @function GetTextLineHeightWithSpacing()
	/// @context ImGui
	/// @return {Real}
	static GetTextLineHeightWithSpacing = function() {
		return __imgui_get_text_line_height_with_spacing();
	}

	/// @function GetFrameHeight()
	/// @context ImGui
	/// @return {Real}
	static GetFrameHeight = function() {
		return __imgui_get_frame_height();
	}

	/// @function GetFrameHeightWithSpacing()
	/// @context ImGui
	/// @return {Real}
	static GetFrameHeightWithSpacing = function() {
		return __imgui_get_frame_height_with_spacing();
	}

	/// @function GetContentRegionAvailX()
	/// @context ImGui
	/// @return {Real}
	static GetContentRegionAvailX = function() {
		return __imgui_get_content_region_avail_x();
	}

	/// @function GetContentRegionAvailY()
	/// @context ImGui
	/// @return {Real}
	static GetContentRegionAvailY = function() {
		return __imgui_get_content_region_avail_y();
	}

	/// @function GetContentRegionMaxX()
	/// @context ImGui
	/// @return {Real}
	static GetContentRegionMaxX = function() {
		return __imgui_get_content_region_max_x();
	}

	/// @function GetContentRegionMaxY()
	/// @context ImGui
	/// @return {Real}
	static GetContentRegionMaxY = function() {
		return __imgui_get_content_region_max_y();
	}

	/// @function GetWindowContentRegionMinX()
	/// @context ImGui
	/// @return {Real}
	static GetWindowContentRegionMinX = function() {
		return __imgui_get_window_content_region_min_x();
	}

	/// @function GetWindowContentRegionMinY()
	/// @context ImGui
	/// @return {Real}
	static GetWindowContentRegionMinY = function() {
		return __imgui_get_window_content_region_min_y();
	}

	/// @function GetWindowContentRegionMaxX()
	/// @context ImGui
	/// @return {Real}
	static GetWindowContentRegionMaxX = function() {
		return __imgui_get_window_content_region_max_x();
	}

	/// @function GetWindowContentRegionMaxY()
	/// @context ImGui
	/// @return {Real}
	static GetWindowContentRegionMaxY = function() {
		return __imgui_get_window_content_region_max_y();
	}

	/// @function PushItemWidth(item_width)
	/// @argument {Real} item_width
	/// @context ImGui
	/// @return {Undefined}
	static PushItemWidth = function(item_width) {
		return __imgui_push_item_width(item_width);
	}

	/// @function PopItemWidth()
	/// @context ImGui
	/// @return {Undefined}
	static PopItemWidth = function() {
		return __imgui_pop_item_width();
	}

	/// @function SetNextItemWidth(item_width)
	/// @argument {Real} item_width
	/// @context ImGui
	/// @return {Undefined}
	static SetNextItemWidth = function(item_width) {
		return __imgui_set_next_item_width(item_width);
	}

	/// @function CalcItemWidth()
	/// @context ImGui
	/// @return {Real}
	static CalcItemWidth = function() {
		return __imgui_calc_item_width();
	}

	/// @function PushTextWrapPos(wrap_local_pos_x)
	/// @argument {Real} [wrap_local_pos_x=0]
	/// @context ImGui
	/// @return {Undefined}
	static PushTextWrapPos = function(wrap_local_pos_x=0) {
		return __imgui_push_text_wrap_pos(wrap_local_pos_x);
	}

	/// @function PopTextWrapPos()
	/// @context ImGui
	/// @return {Undefined}
	static PopTextWrapPos = function() {
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
		return __imgui_push_clip_rect(clip_min_x, clip_min_y, clip_max_x, clip_max_y, intersect_with_current_clip_rect);
	}

	/// @function PopClipRect()
	/// @context ImGui
	/// @return {Undefined}
	static PopClipRect = function() {
		return __imgui_pop_clip_rect();
	}

	/// @function BeginListBox(label, width, height)
	/// @argument {String} label
	/// @argument {Real} [width=0]
	/// @argument {Real} [height=0]
	/// @context ImGui
	/// @return {Bool}
	static BeginListBox = function(label, width=0, height=0) {
		return __imgui_begin_listbox(label, width, height);
	}

	/// @function EndListBox()
	/// @context ImGui
	/// @return {Undefined}
	static EndListBox = function() {
		return __imgui_end_listbox();
	}

	/// @function ListBox()
	/// @context ImGui
	/// @return {Unknown<unset>}
	static ListBox = function() {
		return __imgui_listbox();
	}

	/// @function BeginMenuBar()
	/// @context ImGui
	/// @return {Bool}
	static BeginMenuBar = function() {
		return __imgui_begin_menubar();
	}

	/// @function EndMenuBar()
	/// @context ImGui
	/// @return {Undefined}
	static EndMenuBar = function() {
		return __imgui_end_menubar();
	}

	/// @function BeginMainMenuBar()
	/// @context ImGui
	/// @return {Bool}
	static BeginMainMenuBar = function() {
		return __imgui_begin_mainmenubar();
	}

	/// @function EndMainMenuBar()
	/// @context ImGui
	/// @return {Undefined}
	static EndMainMenuBar = function() {
		return __imgui_end_mainmenubar();
	}

	/// @function BeginMenu(label, enabled)
	/// @argument {String} label
	/// @argument {Bool} [enabled=true]
	/// @context ImGui
	/// @return {Bool}
	static BeginMenu = function(label, enabled=true) {
		return __imgui_begin_menu(label, enabled);
	}

	/// @function EndMenu()
	/// @context ImGui
	/// @return {Undefined}
	static EndMenu = function() {
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
		return __imgui_menu_item(label, shortcut, selected, enabled, mask);
	}

	/// @function BeginDragDropSource(flags)
	/// @argument {Enum.ImGuiDragDropFlags} [flags=ImGuiDragDropFlags.None]
	/// @context ImGui
	/// @return {Bool}
	static BeginDragDropSource = function(flags=ImGuiDragDropFlags.None) {
		return __imgui_begin_drag_drop_source(flags);
	}

	/// @function EndDragDropSource()
	/// @context ImGui
	/// @return {Undefined}
	static EndDragDropSource = function() {
		return __imgui_end_drag_drop_source();
	}

	/// @function BeginDragDropTarget()
	/// @context ImGui
	/// @return {Bool}
	static BeginDragDropTarget = function() {
		return __imgui_begin_drag_drop_target();
	}

	/// @function EndDragDropTarget()
	/// @context ImGui
	/// @return {Undefined}
	static EndDragDropTarget = function() {
		return __imgui_end_drag_drop_target();
	}

	/// @function SetDragDropPayload(type, data, cond)
	/// @argument {String} type
	/// @argument {Any} data
	/// @argument {Enum.ImGuiCond} [cond=ImGuiCond.None]
	/// @context ImGui
	/// @return {Bool}
	static SetDragDropPayload = function(type, data, cond=ImGuiCond.None) {
		return __imgui_set_drag_drop_payload(type, data, cond);
	}

	/// @function AcceptDragDropPayload(type, flags)
	/// @argument {String} type
	/// @argument {Enum.ImGuiDragDropFlags} [flags=ImGuiDragDropFlags.None]
	/// @context ImGui
	/// @return {Any|Undefined}
	static AcceptDragDropPayload = function(type, flags=ImGuiDragDropFlags.None) {
		return __imgui_accept_drag_drop_payload(type, flags);
	}

	/// @function GetDragDropPayload()
	/// @context ImGui
	/// @return {Any|Undefined}
	static GetDragDropPayload = function() {
		return __imgui_get_drag_drop_payload();
	}

	/// @function GetDragDropPayloadType()
	/// @context ImGui
	/// @return {String|Undefined}
	static GetDragDropPayloadType = function() {
		return __imgui_get_payload_type();
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
		return __imgui_plot_histogram(label, values, values_offset, overlay_text, scale_min, scale_max, graph_width, graph_height, array_length(values));
	}

	/// @function BeginPopup(str_id, flags)
	/// @argument {String} str_id
	/// @argument {Enum.ImGuiWindowFlags} [flags=ImGuiWindowFlags.None]
	/// @context ImGui
	/// @return {Bool}
	static BeginPopup = function(str_id, flags=ImGuiWindowFlags.None) {
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
		return __imgui_begin_popup_modal(name, open, flags, mask);
	}

	/// @function EndPopup()
	/// @context ImGui
	/// @return {Undefined}
	static EndPopup = function() {
		return __imgui_end_popup();
	}

	/// @function OpenPopup(str_id, flags)
	/// @argument {String} str_id
	/// @argument {Enum.ImGuiPopupFlags} [flags=ImGuiPopupFlags.None]
	/// @context ImGui
	/// @return {Undefined}
	static OpenPopup = function(str_id, flags=ImGuiPopupFlags.None) {
		return __imgui_open_popup(str_id, flags);
	}

	/// @function OpenPopupOnItemClick(str_id, flags)
	/// @argument {String} [str_id=undefined]
	/// @argument {Enum.ImGuiPopupFlags} [flags=ImGuiPopupFlags.MouseButtonRight]
	/// @context ImGui
	/// @return {Undefined}
	static OpenPopupOnItemClick = function(str_id="undefined", flags=ImGuiPopupFlags.MouseButtonRight) {
		return __imgui_open_popup_on_item_click(str_id, flags);
	}

	/// @function CloseCurrentPopup()
	/// @context ImGui
	/// @return {Undefined}
	static CloseCurrentPopup = function() {
		return __imgui_close_current_popup();
	}

	/// @function BeginPopupContextItem(str_id, flags)
	/// @argument {String} [str_id=undefined]
	/// @argument {Enum.ImGuiPopupFlags} [flags=ImGuiPopupFlags.MouseButtonRight]
	/// @context ImGui
	/// @return {Bool}
	static BeginPopupContextItem = function(str_id="undefined", flags=ImGuiPopupFlags.MouseButtonRight) {
		return __imgui_begin_popup_context_item(str_id, flags);
	}

	/// @function BeginPopupContextWindow(str_id, flags)
	/// @argument {String} [str_id=undefined]
	/// @argument {Enum.ImGuiPopupFlags} [flags=ImGuiPopupFlags.MouseButtonRight]
	/// @context ImGui
	/// @return {Bool}
	static BeginPopupContextWindow = function(str_id="undefined", flags=ImGuiPopupFlags.MouseButtonRight) {
		return __imgui_begin_popup_context_window(str_id, flags);
	}

	/// @function BeginPopupContextVoid(str_id, flags)
	/// @argument {String} [str_id=undefined]
	/// @argument {Enum.ImGuiPopupFlags} [flags=ImGuiPopupFlags.MouseButtonRight]
	/// @context ImGui
	/// @return {Bool}
	static BeginPopupContextVoid = function(str_id="undefined", flags=ImGuiPopupFlags.MouseButtonRight) {
		return __imgui_begin_popup_context_void(str_id, flags);
	}

	/// @function IsPopupOpen(str_id, flags)
	/// @argument {String} str_id
	/// @argument {Enum.ImGuiPopupFlags} [flags=ImGuiPopupFlags.None]
	/// @context ImGui
	/// @return {Bool}
	static IsPopupOpen = function(str_id, flags=ImGuiPopupFlags.None) {
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
		return __imgui_slider_angle(label, v_rad, v_degrees_min, v_degrees_max, format, flags);
	}

	/// @function StyleColorsDark()
	/// @context ImGui
	/// @return {Undefined}
	static StyleColorsDark = function() {
		return __imgui_style_colors_dark();
	}

	/// @function StyleColorsLight()
	/// @context ImGui
	/// @return {Undefined}
	static StyleColorsLight = function() {
		return __imgui_style_colors_light();
	}

	/// @function StyleColorsClassic()
	/// @context ImGui
	/// @return {Undefined}
	static StyleColorsClassic = function() {
		return __imgui_style_colors_classic();
	}

	/// @function PushStyleColor(idx, col, alpha)
	/// @argument {Real} idx
	/// @argument {Real} col
	/// @argument {Real} alpha
	/// @context ImGui
	/// @return {Undefined}
	static PushStyleColor = function(idx, col, alpha) {
		return __imgui_push_style_color(idx, col, alpha);
	}

	/// @function PopStyleColor(count)
	/// @argument {Real} [count=1]
	/// @context ImGui
	/// @return {Undefined}
	static PopStyleColor = function(count=1) {
		return __imgui_pop_style_color(count);
	}

	/// @function PushStyleVar(idx, val, val2)
	/// @argument {Real} idx
	/// @argument {Real} val
	/// @argument {Any} [val2=undefined]
	/// @context ImGui
	/// @return {Undefined}
	static PushStyleVar = function(idx, val, val2=undefined) {
		return __imgui_push_style_var(idx, val, val2);
	}

	/// @function PopStyleVar(count)
	/// @argument {Real} [count=1]
	/// @context ImGui
	/// @return {Undefined}
	static PopStyleVar = function(count=1) {
		return __imgui_pop_style_var(count);
	}

	/// @function GetStyleColor(idx)
	/// @argument {Real} idx
	/// @context ImGui
	/// @return {Real}
	static GetStyleColor = function(idx) {
		return __imgui_get_style_color(idx);
	}

	/// @function GetStyleColorName(idx)
	/// @argument {Real} idx
	/// @context ImGui
	/// @return {String}
	static GetStyleColorName = function(idx) {
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
		return __imgui_begin_table(str_id, column, flags, outer_width, outer_height, inner_width);
	}

	/// @function EndTable()
	/// @context ImGui
	/// @return {Undefined}
	static EndTable = function() {
		return __imgui_end_table();
	}

	/// @function TableNextRow(row_flags, min_row_height)
	/// @argument {Enum.ImGuiTableRowFlags} [row_flags=ImGuiTableRowFlags.None]
	/// @argument {Real} [min_row_height=0]
	/// @context ImGui
	/// @return {Undefined}
	static TableNextRow = function(row_flags=ImGuiTableRowFlags.None, min_row_height=0) {
		return __imgui_table_next_row(row_flags, min_row_height);
	}

	/// @function TableNextColumn()
	/// @context ImGui
	/// @return {Bool}
	static TableNextColumn = function() {
		return __imgui_table_next_column();
	}

	/// @function TableSetColumnIndex(column_n)
	/// @argument {Real} column_n
	/// @context ImGui
	/// @return {Bool}
	static TableSetColumnIndex = function(column_n) {
		return __imgui_table_set_column_index(column_n);
	}

	/// @function TableSetupColumn(label, flags, user_id)
	/// @argument {String} label
	/// @argument {Enum.ImGuiTableColumnFlags} [flags=ImGuiTableColumnFlags.None]
	/// @argument {Real} [user_id=0]
	/// @context ImGui
	/// @return {Undefined}
	static TableSetupColumn = function(label, flags=ImGuiTableColumnFlags.None, user_id=0) {
		return __imgui_table_setup_column(label, flags, user_id);
	}

	/// @function TableSetupScrollFreeze(cols, rows)
	/// @argument {Real} cols
	/// @argument {Real} rows
	/// @context ImGui
	/// @return {Undefined}
	static TableSetupScrollFreeze = function(cols, rows) {
		return __imgui_table_setup_scroll_freeze(cols, rows);
	}

	/// @function TableHeadersRow()
	/// @context ImGui
	/// @return {Undefined}
	static TableHeadersRow = function() {
		return __imgui_table_headers_row();
	}

	/// @function TableHeader(label)
	/// @argument {String} label
	/// @context ImGui
	/// @return {Undefined}
	static TableHeader = function(label) {
		return __imgui_table_header(label);
	}

	/// @function TableGetColumnCount()
	/// @context ImGui
	/// @return {Real}
	static TableGetColumnCount = function() {
		return __imgui_table_get_column_count();
	}

	/// @function TableGetColumnIndex()
	/// @context ImGui
	/// @return {Real}
	static TableGetColumnIndex = function() {
		return __imgui_table_get_column_index();
	}

	/// @function TableGetColumnName(column_n)
	/// @argument {Real} [column_n=-1]
	/// @context ImGui
	/// @return {String}
	static TableGetColumnName = function(column_n=-1) {
		return __imgui_table_get_column_name(column_n);
	}

	/// @function TableGetColumnFlags(column_n)
	/// @argument {Real} [column_n=-1]
	/// @context ImGui
	/// @return {Real}
	static TableGetColumnFlags = function(column_n=-1) {
		return __imgui_table_get_column_flags(column_n);
	}

	/// @function TableGetRowIndex()
	/// @context ImGui
	/// @return {Real}
	static TableGetRowIndex = function() {
		return __imgui_table_get_row_index();
	}

	/// @function TableSetColumnEnabled(column_n, v)
	/// @argument {Real} column_n
	/// @argument {Bool} v
	/// @context ImGui
	/// @return {Undefined}
	static TableSetColumnEnabled = function(column_n, v) {
		return __imgui_table_set_column_enabled(column_n, v);
	}

	/// @function TableSetBgColor(target, col, column_n)
	/// @argument {Real} target
	/// @argument {Real} col
	/// @argument {Real} [column_n=-1]
	/// @context ImGui
	/// @return {Undefined}
	static TableSetBgColor = function(target, col, column_n=-1) {
		return __imgui_table_set_bg_color(target, col, column_n);
	}

	/// @function Columns(count, _id, border)
	/// @argument {Real} [count=1]
	/// @argument {String} [_id=]
	/// @argument {Bool} [border=true]
	/// @context ImGui
	/// @return {Undefined}
	static Columns = function(count=1, _id="", border=true) {
		return __imgui_columns(count, _id, border);
	}

	/// @function NextColumn()
	/// @context ImGui
	/// @return {Undefined}
	static NextColumn = function() {
		return __imgui_next_column();
	}

	/// @function GetColumnIndex()
	/// @context ImGui
	/// @return {Real}
	static GetColumnIndex = function() {
		return __imgui_get_column_index();
	}

	/// @function GetColumnWidth(column_index)
	/// @argument {Real} [column_index=-1]
	/// @context ImGui
	/// @return {Real}
	static GetColumnWidth = function(column_index=-1) {
		return __imgui_get_column_width(column_index);
	}

	/// @function SetColumnWidth(column_index, width)
	/// @argument {Real} column_index
	/// @argument {Real} width
	/// @context ImGui
	/// @return {Undefined}
	static SetColumnWidth = function(column_index, width) {
		return __imgui_set_column_width(column_index, width);
	}

	/// @function GetColumnOffset(column_index)
	/// @argument {Real} [column_index=-1]
	/// @context ImGui
	/// @return {Real}
	static GetColumnOffset = function(column_index=-1) {
		return __imgui_get_column_offset(column_index);
	}

	/// @function SetColumnOffset(column_index, offset_x)
	/// @argument {Real} column_index
	/// @argument {Real} offset_x
	/// @context ImGui
	/// @return {Undefined}
	static SetColumnOffset = function(column_index, offset_x) {
		return __imgui_set_column_offset(column_index, offset_x);
	}

	/// @function GetColumnsCount()
	/// @context ImGui
	/// @return {Real}
	static GetColumnsCount = function() {
		return __imgui_get_columns_count();
	}

	/// @function BeginTabBar(str_id, flags)
	/// @argument {String} str_id
	/// @argument {Enum.ImGuiTabBarFlags} [flags=ImGuiTabBarFlags.None]
	/// @context ImGui
	/// @return {Bool}
	static BeginTabBar = function(str_id, flags=ImGuiTabBarFlags.None) {
		return __imgui_begin_tab_bar(str_id, flags);
	}

	/// @function EndTabBar()
	/// @context ImGui
	/// @return {Undefined}
	static EndTabBar = function() {
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
		return __imgui_begin_tab_item(label, open, flags, mask);
	}

	/// @function EndTabItem()
	/// @context ImGui
	/// @return {Undefined}
	static EndTabItem = function() {
		return __imgui_end_tab_item();
	}

	/// @function TabItemButton(label, flags)
	/// @argument {String} label
	/// @argument {Enum.ImGuiTabItemFlags} [flags=ImGuiTabItemFlags.None]
	/// @context ImGui
	/// @return {Bool}
	static TabItemButton = function(label, flags=ImGuiTabItemFlags.None) {
		return __imgui_tab_item_button(label, flags);
	}

	/// @function SetTabItemClosed(tab_or_docked_window_label)
	/// @argument {String} tab_or_docked_window_label
	/// @context ImGui
	/// @return {Undefined}
	static SetTabItemClosed = function(tab_or_docked_window_label) {
		return __imgui_set_tab_item_closed(tab_or_docked_window_label);
	}

	/// @function TextUnformatted(text)
	/// @argument {String} text
	/// @context ImGui
	/// @return {Undefined}
	static TextUnformatted = function(text) {
		return __imgui_text_unformatted(text);
	}

	/// @function Text(val)
	/// @argument {String} val
	/// @context ImGui
	/// @return {Undefined}
	static Text = function(val) {
		return __imgui_text(val);
	}

	/// @function TextColored(val, color, alpha)
	/// @argument {String} val
	/// @argument {Real} color
	/// @argument {Real} [alpha=1]
	/// @context ImGui
	/// @return {Undefined}
	static TextColored = function(val, color, alpha=1) {
		return __imgui_text_colored(val, color, alpha);
	}

	/// @function TextDisabled(val)
	/// @argument {String} val
	/// @context ImGui
	/// @return {Undefined}
	static TextDisabled = function(val) {
		return __imgui_text_disabled(val);
	}

	/// @function TextWrapped(val)
	/// @argument {String} val
	/// @context ImGui
	/// @return {Undefined}
	static TextWrapped = function(val) {
		return __imgui_text_wrapped(val);
	}

	/// @function LabelText(label, val)
	/// @argument {String} label
	/// @argument {String} val
	/// @context ImGui
	/// @return {Undefined}
	static LabelText = function(label, val) {
		return __imgui_label_text(label, val);
	}

	/// @function BulletText(val)
	/// @argument {String} val
	/// @context ImGui
	/// @return {Undefined}
	static BulletText = function(val) {
		return __imgui_bullet_text(val);
	}

	/// @function Value()
	/// @context ImGui
	/// @return {Unknown<unset>}
	static Value = function() {
		return __imgui_value();
	}

	/// @function BeginTooltip()
	/// @context ImGui
	/// @return {Undefined}
	static BeginTooltip = function() {
		return __imgui_begin_tooltip();
	}

	/// @function EndTooltip()
	/// @context ImGui
	/// @return {Undefined}
	static EndTooltip = function() {
		return __imgui_end_tooltip();
	}

	/// @function SetTooltip(val)
	/// @argument {String} val
	/// @context ImGui
	/// @return {Undefined}
	static SetTooltip = function(val) {
		return __imgui_set_tooltip(val);
	}

	/// @function TreeNode(label)
	/// @argument {String} label
	/// @context ImGui
	/// @return {Bool}
	static TreeNode = function(label) {
		return __imgui_tree_node(label);
	}

	/// @function TreeNodeEx(label, flags)
	/// @argument {String} label
	/// @argument {Enum.ImGuiTreeNodeFlags} [flags=ImGuiTreeNodeFlags.None]
	/// @context ImGui
	/// @return {Bool}
	static TreeNodeEx = function(label, flags=ImGuiTreeNodeFlags.None) {
		return __imgui_tree_node_ex(label, flags);
	}

	/// @function TreePush(str_id)
	/// @argument {String} str_id
	/// @context ImGui
	/// @return {Undefined}
	static TreePush = function(str_id) {
		return __imgui_tree_push(str_id);
	}

	/// @function TreePop()
	/// @context ImGui
	/// @return {Undefined}
	static TreePop = function() {
		return __imgui_tree_pop();
	}

	/// @function GetTreeNodeToLabelSpacing()
	/// @context ImGui
	/// @return {Real}
	static GetTreeNodeToLabelSpacing = function() {
		return __imgui_get_tree_node_to_label_spacing();
	}

	/// @function SetNextItemOpen(is_open, cond)
	/// @argument {Bool} is_open
	/// @argument {Enum.ImGuiCond} [cond=ImGuiCond.None]
	/// @context ImGui
	/// @return {Undefined}
	static SetNextItemOpen = function(is_open, cond=ImGuiCond.None) {
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
		return __imgui_collapsing_header(label, _visible, flags, mask);
	}

	/// @function Button(label, width, height)
	/// @argument {String} label
	/// @argument {Real} [width=0]
	/// @argument {Real} [height=0]
	/// @context ImGui
	/// @return {Bool}
	static Button = function(label, width=0, height=0) {
		return __imgui_button(label, width, height);
	}

	/// @function SmallButton(label)
	/// @argument {String} label
	/// @context ImGui
	/// @return {Bool}
	static SmallButton = function(label) {
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
		return __imgui_invisible_button(_id, width, height, flags);
	}

	/// @function ArrowButton(str_id, dir)
	/// @argument {String} str_id
	/// @argument {Real} dir
	/// @context ImGui
	/// @return {Bool}
	static ArrowButton = function(str_id, dir) {
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
		return __imgui_image(sprite, subimg, color, alpha, width, height, sprite_get_uvs(sprite, subimg));
	}

	/// @function ImageButton(str_id, sprite, subimg, color, alpha, bg_color, bg_alpha, width, height)
	/// @argument {String} str_id
	/// @argument {Real} sprite
	/// @argument {Real} subimg
	/// @argument {Real} color
	/// @argument {Real} alpha
	/// @argument {Real} bg_color
	/// @argument {Real} bg_alpha
	/// @argument {Real} [width=sprite_get_width⌊sprite⌉]
	/// @argument {Real} [height=sprite_get_height⌊sprite⌉]
	/// @context ImGui
	/// @return {Bool}
	static ImageButton = function(str_id, sprite, subimg, color, alpha, bg_color, bg_alpha, width=sprite_get_width(sprite), height=sprite_get_height(sprite)) {
		return __imgui_image_button(str_id, sprite, subimg, color, alpha, bg_color, bg_alpha, width, height, sprite_get_uvs(sprite, subimg));
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
		var _tex = surface_get_texture(surface); 
		return __imgui_surface(surface, color, alpha, width, height, texture_get_uvs(_tex));
	}

	/// @function Checkbox(label, checked)
	/// @argument {String} label
	/// @argument {Bool} checked
	/// @context ImGui
	/// @return {Bool}
	static Checkbox = function(label, checked) {
		return __imgui_checkbox(label, checked);
	}

	/// @function CheckboxFlags(label, flags, flags_value)
	/// @argument {String} label
	/// @argument {Real} flags
	/// @argument {Real} flags_value
	/// @context ImGui
	/// @return {Real}
	static CheckboxFlags = function(label, flags, flags_value) {
		return __imgui_checkbox_flags(label, flags, flags_value);
	}

	/// @function RadioButton(label, active)
	/// @argument {String} label
	/// @argument {Bool} active
	/// @context ImGui
	/// @return {Bool}
	static RadioButton = function(label, active) {
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
		return __imgui_progressbar(_frac, width, height, overlay);
	}

	/// @function Bullet()
	/// @context ImGui
	/// @return {Undefined}
	static Bullet = function() {
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
		return __imgui_begin(name, open, flags, mask);
	}

	/// @function End()
	/// @context ImGui
	/// @return {Undefined}
	static End = function() {
		return __imgui_end();
	}

	/// @function EndFrame()
	/// @context ImGui
	/// @return {Undefined}
	static EndFrame = function() {
		return __imgui_endframe();
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
		return __imgui_begin_child(str_id, width, height, border, flags);
	}

	/// @function EndChild()
	/// @context ImGui
	/// @return {Undefined}
	static EndChild = function() {
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
		return __imgui_begin_child_frame(_id, width, height, flags);
	}

	/// @function EndChildFrame()
	/// @context ImGui
	/// @return {Undefined}
	static EndChildFrame = function() {
		return __imgui_end_child_frame();
	}

	/// @function IsWindowAppearing()
	/// @context ImGui
	/// @return {Bool}
	static IsWindowAppearing = function() {
		return __imgui_is_window_appearing();
	}

	/// @function IsWindowCollapsed()
	/// @context ImGui
	/// @return {Bool}
	static IsWindowCollapsed = function() {
		return __imgui_is_window_collapsed();
	}

	/// @function IsWindowFocused(flags)
	/// @argument {Enum.ImGuiFocusedFlags} [flags=ImGuiFocusedFlags.None]
	/// @context ImGui
	/// @return {Bool}
	static IsWindowFocused = function(flags=ImGuiFocusedFlags.None) {
		return __imgui_is_window_focused(flags);
	}

	/// @function IsWindowHovered(flags)
	/// @argument {Enum.ImGuiHoveredFlags} [flags=ImGuiHoveredFlags.None]
	/// @context ImGui
	/// @return {Bool}
	static IsWindowHovered = function(flags=ImGuiHoveredFlags.None) {
		return __imgui_is_window_hovered(flags);
	}

	/// @function GetWindowDpiScale()
	/// @context ImGui
	/// @return {Real}
	static GetWindowDpiScale = function() {
		return __imgui_get_window_dpi_scale();
	}

	/// @function GetWindowPosX()
	/// @context ImGui
	/// @return {Real}
	static GetWindowPosX = function() {
		return __imgui_get_window_x();
	}

	/// @function GetWindowPosY()
	/// @context ImGui
	/// @return {Real}
	static GetWindowPosY = function() {
		return __imgui_get_window_y();
	}

	/// @function GetWindowWidth()
	/// @context ImGui
	/// @return {Real}
	static GetWindowWidth = function() {
		return __imgui_get_window_width();
	}

	/// @function GetWindowHeight()
	/// @context ImGui
	/// @return {Real}
	static GetWindowHeight = function() {
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
		return __imgui_set_next_window_pos(_x, _y, cond, pivot_x, pivot_y);
	}

	/// @function SetNextWindowSize(width, height, cond)
	/// @argument {Real} width
	/// @argument {Real} height
	/// @argument {Enum.ImGuiCond} [cond=ImGuiCond.None]
	/// @context ImGui
	/// @return {Undefined}
	static SetNextWindowSize = function(width, height, cond=ImGuiCond.None) {
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
		return __imgui_set_next_window_size_constraints(min_width, min_height, max_width, max_height);
	}

	/// @function SetNextWindowContentSize(width, height)
	/// @argument {Real} width
	/// @argument {Real} height
	/// @context ImGui
	/// @return {Undefined}
	static SetNextWindowContentSize = function(width, height) {
		return __imgui_set_next_window_content_size(width, height);
	}

	/// @function SetNextWindowCollapsed(collapsed, cond)
	/// @argument {Bool} collapsed
	/// @argument {Enum.ImGuiCond} [cond=ImGuiCond.None]
	/// @context ImGui
	/// @return {Undefined}
	static SetNextWindowCollapsed = function(collapsed, cond=ImGuiCond.None) {
		return __imgui_set_next_window_collapsed(collapsed, cond);
	}

	/// @function SetNextWindowFocus()
	/// @context ImGui
	/// @return {Undefined}
	static SetNextWindowFocus = function() {
		return __imgui_set_next_window_focus();
	}

	/// @function SetNextWindowScroll(scroll_x, scroll_y)
	/// @argument {Real} scroll_x
	/// @argument {Real} scroll_y
	/// @context ImGui
	/// @return {Undefined}
	static SetNextWindowScroll = function(scroll_x, scroll_y) {
		return __imgui_set_next_window_scroll(scroll_x, scroll_y);
	}

	/// @function SetNextWindowBgAlpha(alpha)
	/// @argument {Real} alpha
	/// @context ImGui
	/// @return {Undefined}
	static SetNextWindowBgAlpha = function(alpha) {
		return __imgui_set_next_window_bgalpha(alpha);
	}

	/// @function GetScrollX()
	/// @context ImGui
	/// @return {Real}
	static GetScrollX = function() {
		return __imgui_get_scroll_x();
	}

	/// @function GetScrollY()
	/// @context ImGui
	/// @return {Real}
	static GetScrollY = function() {
		return __imgui_get_scroll_y();
	}

	/// @function SetScrollX(scroll_x)
	/// @argument {Real} scroll_x
	/// @context ImGui
	/// @return {Undefined}
	static SetScrollX = function(scroll_x) {
		return __imgui_set_scroll_x(scroll_x);
	}

	/// @function SetScrollY(scroll_y)
	/// @argument {Real} scroll_y
	/// @context ImGui
	/// @return {Undefined}
	static SetScrollY = function(scroll_y) {
		return __imgui_set_scroll_y(scroll_y);
	}

	/// @function GetScrollMaxX()
	/// @context ImGui
	/// @return {Real}
	static GetScrollMaxX = function() {
		return __imgui_get_scroll_max_x();
	}

	/// @function GetScrollMaxY()
	/// @context ImGui
	/// @return {Real}
	static GetScrollMaxY = function() {
		return __imgui_get_scroll_max_y();
	}

	/// @function SetScrollHereX(center_x_ratio)
	/// @argument {Real} [center_x_ratio=0.5]
	/// @context ImGui
	/// @return {Undefined}
	static SetScrollHereX = function(center_x_ratio=0.5) {
		return __imgui_set_scroll_here_x(center_x_ratio);
	}

	/// @function SetScrollHereY(center_y_ratio)
	/// @argument {Real} [center_y_ratio=0.5]
	/// @context ImGui
	/// @return {Undefined}
	static SetScrollHereY = function(center_y_ratio=0.5) {
		return __imgui_set_scroll_here_y(center_y_ratio);
	}

	/// @function SetScrollFromPosX(local_x, center_x_ratio)
	/// @argument {Real} local_x
	/// @argument {Real} [center_x_ratio=0.5]
	/// @context ImGui
	/// @return {Undefined}
	static SetScrollFromPosX = function(local_x, center_x_ratio=0.5) {
		return __imgui_set_scroll_from_pos_x(local_x, center_x_ratio);
	}

	/// @function SetScrollFromPosY(local_y, center_y_ratio)
	/// @argument {Real} local_y
	/// @argument {Real} [center_y_ratio=0.5]
	/// @context ImGui
	/// @return {Undefined}
	static SetScrollFromPosY = function(local_y, center_y_ratio=0.5) {
		return __imgui_set_scroll_from_pos_y(local_y, center_y_ratio);
	}

	/// @function SetWindowPos(_x, _y, cond)
	/// @argument {Real} _x
	/// @argument {Real} _y
	/// @argument {Enum.ImGuiCond} [cond=ImGuiCond.None]
	/// @context ImGui
	/// @return {Undefined}
	static SetWindowPos = function(_x, _y, cond=ImGuiCond.None) {
		return __imgui_set_window_pos(_x, _y, cond);
	}

	/// @function SetWindowSize(name, width, height, cond)
	/// @argument {String} [name=]
	/// @argument {Real} width
	/// @argument {Real} height
	/// @argument {Enum.ImGuiCond} [cond=ImGuiCond.None]
	/// @context ImGui
	/// @return {Undefined}
	static SetWindowSize = function(name="", width, height, cond=ImGuiCond.None) {
		return __imgui_set_window_size(name, width, height, cond);
	}

	/// @function SetWindowCollapsed(name, collapsed, cond)
	/// @argument {String} [name=]
	/// @argument {Bool} collapsed
	/// @argument {Enum.ImGuiCond} [cond=ImGuiCond.None]
	/// @context ImGui
	/// @return {Undefined}
	static SetWindowCollapsed = function(name="", collapsed, cond=ImGuiCond.None) {
		return __imgui_set_window_collapsed(name, collapsed, cond);
	}

	/// @function SetWindowFocus(name)
	/// @argument {String} [name=]
	/// @context ImGui
	/// @return {Undefined}
	static SetWindowFocus = function(name="") {
		return __imgui_set_window_focus(name);
	}

	/// @section Enums
	enum ImGuiMouseSource {
		Mouse = 0,
		TouchScreen,
		Pen,
	}

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
	}

	enum ImGuiTreeNodeFlags {
		None = 0,
		Selected = 1 << 0,
		Framed = 1 << 1,
		AllowOverlap = 1 << 2,
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
		AllowItemOverlap = ImGuiTreeNodeFlags.AllowOverlap,
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
		AllowOverlap = 1 << 4,
		AllowItemOverlap = ImGuiSelectableFlags.AllowOverlap,
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
		AllowWhenOverlappedByItem = 1 << 8,
		AllowWhenOverlappedByWindow = 1 << 9,
		AllowWhenDisabled = 1 << 10,
		NoNavOverride = 1 << 11,
		AllowWhenOverlapped = ImGuiHoveredFlags.AllowWhenOverlappedByItem | ImGuiHoveredFlags.AllowWhenOverlappedByWindow,
		RectOnly = ImGuiHoveredFlags.AllowWhenBlockedByPopup | ImGuiHoveredFlags.AllowWhenBlockedByActiveItem | ImGuiHoveredFlags.AllowWhenOverlapped,
		RootAndChildWindows = ImGuiHoveredFlags.RootWindow | ImGuiHoveredFlags.ChildWindows,
		ForTooltip = 1 << 12,
		Stationary = 1 << 13,
		DelayNone = 1 << 14,
		DelayShort = 1 << 15,
		DelayNormal = 1 << 16,
		NoSharedDelay = 1 << 17,
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
		SeparatorTextBorderSize,
		SeparatorTextAlign,
		SeparatorTextPadding,
		DockingSeparatorSize,
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
		NoAutoMerge = 1 << 9,
		TopMost = 1 << 10,
		CanHostOtherWindows = 1 << 11,
		IsMinimized = 1 << 12,
		IsFocused = 1 << 13,
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
	
	static __Scale = 1;
	static __Font = -1;
	static __VtxFormat = undefined;
	static __Uniform = undefined;
	static __Surface = -1;
	
	static __CmdBuffer = -1;
	static __FontBuffer = -1;
	static __VtxBuffer = -1;
	
	static __CursorPrev = -1;
	static __InputRequested = false;
	static __InputStore = undefined;
	
	static __Context = __imgui_create_context();
	static __Initialized = false;
	static __Initialize = function(scale=1) {
		if (__Initialized) {
			return;	
		}
		
		if (__imgui_initialize(window_handle(), __Context, IMGUIGM_BUFFER_SIZE) == pointer_null) {
			show_error("Something failed to initialize with ImGui_GM!", true);
			return;
		}
		
		__Scale = scale;
		__CmdBuffer = __imguigm_command_buffer();
		__FontBuffer = __imguigm_font_buffer();
		__VtxBuffer = vertex_create_buffer();
		__Uniform = shader_get_uniform(shdImGui, "u_ClipRect");
				
		vertex_format_begin();
		vertex_format_add_position();
		vertex_format_add_texcoord();
		vertex_format_add_color();
		__VtxFormat = vertex_format_end();
		__Initialized = true;
		return;
	}

	static __Update = function() {
		var _width = window_get_width(), _height = window_get_height();
		__State.Display.Width = _width;
		__State.Display.Height = _height;
		
		if (!surface_exists(__Surface)) {
			__Surface = surface_create(max(1, _width), max(1, _height));	
		}
		
		__State.Engine.Time = delta_time / 1000000;
		__State.Engine.Framerate = game_get_speed(gamespeed_fps);
		
		if ((_width > 0 && _height > 0) && window_has_focus()) {
			for(var i = ImGuiKey.NamedKey_BEGIN; i < ImGuiKey.NamedKey_END; i++) {
				var key = global.__IMGUI_MAPPING[i];
				if (key > -1) __imgui_key(i, keyboard_check_direct(key));
			}
			__imgui_key(ImGuiKey.ImGuiMod_Ctrl, keyboard_check_direct(vk_lcontrol));
			__imgui_key(ImGuiKey.ImGuiMod_Shift, keyboard_check_direct(vk_lshift));
			__imgui_key(ImGuiKey.ImGuiMod_Alt, keyboard_check_direct(vk_lalt));
			if (__imgui_want_text_input(undefined)) {
				if (!__InputRequested) {
					__InputRequested = true;
					__InputStore = keyboard_string;
					keyboard_string = "";
				}
				if (__imgui_input(keyboard_string)) keyboard_string = "";	
			} else {
				if (__InputRequested) {
					keyboard_string = __InputStore;
					__InputRequested = false;
				}
			}
			
			var _x = window_get_x(), _y = window_get_y();
			if (point_in_rectangle(display_mouse_get_x(), display_mouse_get_y(), _x, _y, _x + _width, _y + _height)) {
				__State.Input.Mouse.X = window_mouse_get_x() / __Scale;
				__State.Input.Mouse.Y = window_mouse_get_y() / __Scale;
				
				for(var i = 0; i < 3; i++) __imgui_mouse(i, device_mouse_check_button(0, i + 1));
				if (mouse_wheel_up()) __imgui_mouse_wheel(0, 1);
				else if (mouse_wheel_down()) __imgui_mouse_wheel(0, -1);
				var _cursor = __imgui_mouse_cursor();
				if (_cursor != __CursorPrev) {
					window_set_cursor(global.__IMGUI_CURSOR[_cursor + 1]);
					__CursorPrev = _cursor;
				}
			}
		}
		
		__imgui_update(__State);
		if (buffer_peek(__FontBuffer, 0, buffer_bool)) {
			if (sprite_exists(__Font)) sprite_delete(__Font);
			var font = surface_create(buffer_peek(__FontBuffer, 1, buffer_u32), buffer_peek(__FontBuffer, 5, buffer_u32));
			buffer_set_surface(__FontBuffer, font, 9);
			__Font = sprite_create_from_surface(font, 0, 0, surface_get_width(font), surface_get_height(font), false, false, 0, 0);
			surface_free(font);
		}
	}
	
	static __Render = function() {
		__imgui_render();
		
		buffer_seek(__CmdBuffer, buffer_seek_start, 0);
		if (buffer_read(__CmdBuffer, buffer_bool)) { // data->Valid
			shader_set(shdImGui);
			surface_set_target(__Surface);
			draw_clear_alpha(0, 0);
			var list_count = buffer_read(__CmdBuffer, buffer_u32);
			for(var i = 0; i < list_count; i++) {
				var cmd_count = buffer_read(__CmdBuffer, buffer_u32);
				for(var j = 0; j < cmd_count; j++) {
					if (!buffer_read(__CmdBuffer, buffer_bool)) { // UserCallback != nullptr
						var tex_data = buffer_read(__CmdBuffer, buffer_u32);
						var tex_id = -1;
						switch (tex_data & 0xF) {
							case ImGuiTextureType.Surface: {
								tex_id = surface_get_texture(tex_data >> 4);
								break;
							}
								
							case ImGuiTextureType.Font: {
								tex_id = sprite_get_texture(__Font, 0);
								break;	
							}
								
							case ImGuiTextureType.Sprite: {
								tex_id = sprite_get_texture((tex_data >> 4) & 0xFF, tex_data >> 12);
								break;	
							}
						}
						
						var clip_x1 = buffer_read(__CmdBuffer, buffer_f32);
						var clip_y1 = buffer_read(__CmdBuffer, buffer_f32);
						var clip_x2 = buffer_read(__CmdBuffer, buffer_f32);
						var clip_y2 = buffer_read(__CmdBuffer, buffer_f32);
						shader_set_uniform_f_array(__Uniform, [clip_x1, clip_y1, clip_x2, clip_y2]);
						var vtx_count = buffer_read(__CmdBuffer, buffer_u32);
						var vtx_buff = vertex_create_buffer_from_buffer_ext(__CmdBuffer, __VtxFormat, buffer_tell(__CmdBuffer), vtx_count);
						vertex_submit(vtx_buff, pr_trianglelist, tex_id);
						buffer_seek(__CmdBuffer, buffer_seek_relative, 20 * vtx_count);
						vertex_delete_buffer(vtx_buff);
					}
				}
			}
			surface_reset_target();
			shader_reset();
			
			var _w = display_get_gui_width(), _h = display_get_gui_height();
			display_set_gui_size(window_get_width(), window_get_height());
			display_set_gui_maximize(__Scale, __Scale, 0, 0);
			draw_surface(__Surface, 0, 0);
			display_set_gui_maximize();
			display_set_gui_size(_w, _h);
		}
	}
	return self;
};

// Version Check
try {
	var _get = static_get(new ImGui());
	show_debug_message("[ImGui_GM - INFO] Successfully passed version check");
} catch(e) {
	var ind = asset_get_index("ImGui_");
	if (ind == -1) {
		if (GM_build_type == "run") {
			if (!file_exists("warning.bin")) {
				var b = buffer_create(2, buffer_fixed, 1);
				buffer_poke(b, 0, buffer_u16, 26984);
				buffer_save(b, "warning.bin");
				buffer_delete(b);
			
				var _msg = "[WARNING]\nIt looks like you're using a version of GameMaker that does not support the \"static_get\" function.\n\nTo effectively use this extension, please rename the \"ImGui\" script and function to \"ImGui_\" and uncomment the ImGui globalvar delcaration below this warning (search: imgui_compat) to properly access the ImGui namespace\n\nThis warning will only appear when running from the IDE, additionally a stub file has been created in your game's save data directory to prevent this warning from displaying again.";
				show_message(_msg);
				game_end();
			}
		}
	} else {
		/*
			NOTE: If using LTS or unsupported runtime, rename this script and constructor to ImGui_ and uncomment the below globalvar delcaration
		*/
		
		// [imgui_compat]
		//globalvar ImGui;
		variable_global_set("ImGui", new ImGui_());
	}
	show_debug_message("[ImGui_GM - WARNING] Failed version check, it is advised that you use a runtime that supports the \"static_get\" function");
}

global.__IMGUI_MAPPING = array_create(ImGuiKey.KeysData_SIZE, -1);
global.__IMGUI_MAPPING[ImGuiKey.None] = vk_nokey;
global.__IMGUI_MAPPING[ImGuiKey.Enter] = vk_enter;
global.__IMGUI_MAPPING[ImGuiKey.Escape] = vk_escape;
global.__IMGUI_MAPPING[ImGuiKey.Space] = vk_space;
global.__IMGUI_MAPPING[ImGuiKey.Backspace] = vk_backspace;
global.__IMGUI_MAPPING[ImGuiKey.Tab] = vk_tab;
global.__IMGUI_MAPPING[ImGuiKey.Pause] = vk_pause;
global.__IMGUI_MAPPING[ImGuiKey.LeftArrow] = vk_left;
global.__IMGUI_MAPPING[ImGuiKey.RightArrow] = vk_right;
global.__IMGUI_MAPPING[ImGuiKey.UpArrow] = vk_up;
global.__IMGUI_MAPPING[ImGuiKey.DownArrow] = vk_down;
global.__IMGUI_MAPPING[ImGuiKey.Home] = vk_home;
global.__IMGUI_MAPPING[ImGuiKey.End] = vk_end;
global.__IMGUI_MAPPING[ImGuiKey.Delete] = vk_delete;
global.__IMGUI_MAPPING[ImGuiKey.Insert] = vk_insert;
global.__IMGUI_MAPPING[ImGuiKey.PageUp] = vk_pageup;
global.__IMGUI_MAPPING[ImGuiKey.PageDown] = vk_pagedown;
global.__IMGUI_MAPPING[ImGuiKey.F1] = vk_f1;
global.__IMGUI_MAPPING[ImGuiKey.F2] = vk_f2;
global.__IMGUI_MAPPING[ImGuiKey.F3] = vk_f3;
global.__IMGUI_MAPPING[ImGuiKey.F4] = vk_f4;
global.__IMGUI_MAPPING[ImGuiKey.F5] = vk_f5;
global.__IMGUI_MAPPING[ImGuiKey.F6] = vk_f6;
global.__IMGUI_MAPPING[ImGuiKey.F7] = vk_f7;
global.__IMGUI_MAPPING[ImGuiKey.F8] = vk_f8;
global.__IMGUI_MAPPING[ImGuiKey.F9] = vk_f9;
global.__IMGUI_MAPPING[ImGuiKey.F10] = vk_f10;
global.__IMGUI_MAPPING[ImGuiKey.F11] = vk_f11;
global.__IMGUI_MAPPING[ImGuiKey.F12] = vk_f12;
global.__IMGUI_MAPPING[ImGuiKey.Keypad0] = vk_numpad0;
global.__IMGUI_MAPPING[ImGuiKey.Keypad1] = vk_numpad1;
global.__IMGUI_MAPPING[ImGuiKey.Keypad2] = vk_numpad2;
global.__IMGUI_MAPPING[ImGuiKey.Keypad3] = vk_numpad3;
global.__IMGUI_MAPPING[ImGuiKey.Keypad4] = vk_numpad4;
global.__IMGUI_MAPPING[ImGuiKey.Keypad5] = vk_numpad5;
global.__IMGUI_MAPPING[ImGuiKey.Keypad6] = vk_numpad6;
global.__IMGUI_MAPPING[ImGuiKey.Keypad7] = vk_numpad7;
global.__IMGUI_MAPPING[ImGuiKey.Keypad8] = vk_numpad8;
global.__IMGUI_MAPPING[ImGuiKey.Keypad9] = vk_numpad9;
global.__IMGUI_MAPPING[ImGuiKey.KeypadDivide] = vk_divide;
global.__IMGUI_MAPPING[ImGuiKey.KeypadMultiply] = vk_multiply;
global.__IMGUI_MAPPING[ImGuiKey.KeypadSubtract] = vk_subtract;
global.__IMGUI_MAPPING[ImGuiKey.KeypadAdd] = vk_add;
global.__IMGUI_MAPPING[ImGuiKey.KeypadDecimal] = vk_decimal;
global.__IMGUI_MAPPING[ImGuiKey.LeftShift] = vk_lshift;
global.__IMGUI_MAPPING[ImGuiKey.LeftCtrl] = vk_lcontrol;
global.__IMGUI_MAPPING[ImGuiKey.LeftAlt] = vk_lalt;
global.__IMGUI_MAPPING[ImGuiKey.RightShift] = vk_rshift;
global.__IMGUI_MAPPING[ImGuiKey.RightCtrl] = vk_rcontrol;
global.__IMGUI_MAPPING[ImGuiKey.RightAlt] = vk_ralt;
global.__IMGUI_MAPPING[ImGuiKey.ImGuiKey_1] = ord("1");
global.__IMGUI_MAPPING[ImGuiKey.ImGuiKey_2] = ord("2");
global.__IMGUI_MAPPING[ImGuiKey.ImGuiKey_3] = ord("3");
global.__IMGUI_MAPPING[ImGuiKey.ImGuiKey_4] = ord("4");
global.__IMGUI_MAPPING[ImGuiKey.ImGuiKey_5] = ord("5");
global.__IMGUI_MAPPING[ImGuiKey.ImGuiKey_6] = ord("6");
global.__IMGUI_MAPPING[ImGuiKey.ImGuiKey_7] = ord("7");
global.__IMGUI_MAPPING[ImGuiKey.ImGuiKey_8] = ord("8");
global.__IMGUI_MAPPING[ImGuiKey.ImGuiKey_9] = ord("9");
global.__IMGUI_MAPPING[ImGuiKey.ImGuiKey_0] = ord("0");
global.__IMGUI_MAPPING[ImGuiKey.A] = ord("A");
global.__IMGUI_MAPPING[ImGuiKey.B] = ord("B");
global.__IMGUI_MAPPING[ImGuiKey.C] = ord("C");
global.__IMGUI_MAPPING[ImGuiKey.D] = ord("D");
global.__IMGUI_MAPPING[ImGuiKey.E] = ord("E");
global.__IMGUI_MAPPING[ImGuiKey.F] = ord("F");
global.__IMGUI_MAPPING[ImGuiKey.G] = ord("G");
global.__IMGUI_MAPPING[ImGuiKey.H] = ord("H");
global.__IMGUI_MAPPING[ImGuiKey.I] = ord("I");
global.__IMGUI_MAPPING[ImGuiKey.J] = ord("J");
global.__IMGUI_MAPPING[ImGuiKey.K] = ord("K");
global.__IMGUI_MAPPING[ImGuiKey.L] = ord("L");
global.__IMGUI_MAPPING[ImGuiKey.M] = ord("M");
global.__IMGUI_MAPPING[ImGuiKey.N] = ord("N");
global.__IMGUI_MAPPING[ImGuiKey.O] = ord("O");
global.__IMGUI_MAPPING[ImGuiKey.P] = ord("P");
global.__IMGUI_MAPPING[ImGuiKey.Q] = ord("Q");
global.__IMGUI_MAPPING[ImGuiKey.R] = ord("R");
global.__IMGUI_MAPPING[ImGuiKey.S] = ord("S");
global.__IMGUI_MAPPING[ImGuiKey.T] = ord("T");
global.__IMGUI_MAPPING[ImGuiKey.U] = ord("U");
global.__IMGUI_MAPPING[ImGuiKey.V] = ord("V");
global.__IMGUI_MAPPING[ImGuiKey.W] = ord("W");
global.__IMGUI_MAPPING[ImGuiKey.X] = ord("X");
global.__IMGUI_MAPPING[ImGuiKey.Y] = ord("Y");
global.__IMGUI_MAPPING[ImGuiKey.Z] = ord("Z");
global.__IMGUI_CURSOR = array_create(ImGuiMouseCursor.NotAllowed + 1, cr_none);
global.__IMGUI_CURSOR[ImGuiMouseCursor.None + 1] = cr_none;
global.__IMGUI_CURSOR[ImGuiMouseCursor.Arrow + 1] = cr_default;
global.__IMGUI_CURSOR[ImGuiMouseCursor.TextInput + 1] = cr_beam;
global.__IMGUI_CURSOR[ImGuiMouseCursor.ResizeAll + 1] = cr_size_all;
global.__IMGUI_CURSOR[ImGuiMouseCursor.ResizeNS + 1] = cr_size_ns;
global.__IMGUI_CURSOR[ImGuiMouseCursor.ResizeEW + 1] = cr_size_we;
global.__IMGUI_CURSOR[ImGuiMouseCursor.ResizeNESW + 1] = cr_size_nesw;
global.__IMGUI_CURSOR[ImGuiMouseCursor.ResizeNWSE + 1] = cr_size_nwse;
global.__IMGUI_CURSOR[ImGuiMouseCursor.Hand + 1] = cr_handpoint;
global.__IMGUI_CURSOR[ImGuiMouseCursor.NotAllowed + 1] = cr_default;