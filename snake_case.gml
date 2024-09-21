/**
*  This script includes snake_case function defintions for ImGui_GM, as an alternative to the namespaced convention
*  To use, just drop this script into your project with ImGui_GM
*  Generated at 9/23/2024, 9:45:45 PM
*/

/// @function imgui_initialize
function imgui_initialize() {
	return ImGui.__Initialize();
}

/// @function imgui_update
function imgui_update() {
	return ImGui.__Update();
}

/// @function imgui_render
function imgui_render() {
	return ImGui.__Render();
}

/// @function CreateContext()
/// @return {Pointer}
static CreateContext = function() {
	return __imgui_create_context();
}

/// @function DestroyContext(ctx)
/// @argument {Pointer} ctx
/// @return {Undefined}
static DestroyContext = function(ctx) {
	return __imgui_destroy_context(ctx);
}

/// @function GetCurrentContext()
/// @return {Pointer}
static GetCurrentContext = function() {
	return __imgui_get_current_context();
}

/// @function SetCurrentContext(ctx)
/// @argument {Pointer} ctx
/// @return {Undefined}
static SetCurrentContext = function(ctx) {
	return __imgui_set_current_context(ctx);
}

/// @function ShowDemoWindow(open)
/// @argument {Bool} [open=undefined]
/// @return {Bool}
static ShowDemoWindow = function(open=undefined) {
	return __imgui_show_demo_window(open);
}

/// @function ShowMetricsWindow(open)
/// @argument {Bool} [open=undefined]
/// @return {Bool}
static ShowMetricsWindow = function(open=undefined) {
	return __imgui_show_metrics_window(open);
}

/// @function ShowDebugLogWindow(open)
/// @argument {Bool} [open=undefined]
/// @return {Bool}
static ShowDebugLogWindow = function(open=undefined) {
	return __imgui_show_debug_log_window(open);
}

/// @function ShowIDStackToolWindow(open)
/// @argument {Bool} [open=undefined]
/// @return {Bool}
static ShowIDStackToolWindow = function(open=undefined) {
	return __imgui_show_stack_tool_window(open);
}

/// @function ShowAboutWindow(open)
/// @argument {Bool} [open=undefined]
/// @return {Bool}
static ShowAboutWindow = function(open=undefined) {
	return __imgui_show_about_window(open);
}

/// @function ShowStyleEditor()
/// @return {Undefined}
static ShowStyleEditor = function() {
	return __imgui_show_style_editor();
}

/// @function ShowStyleSelector(label)
/// @argument {String} label
/// @return {Bool}
static ShowStyleSelector = function(label) {
	return __imgui_show_style_selector(label);
}

/// @function ShowFontSelector(label)
/// @argument {String} label
/// @return {Undefined}
static ShowFontSelector = function(label) {
	return __imgui_show_font_selector(label);
}

/// @function ShowUserGuide()
/// @return {Undefined}
static ShowUserGuide = function() {
	return __imgui_show_user_guide();
}

/// @function GetVersion()
/// @return {String}
static GetVersion = function() {
	return __imgui_get_version();
}

/// @function PushID(_id)
/// @argument {String|Real} _id
/// @return {Undefined}
static PushID = function(_id) {
	return __imgui_push_id(_id);
}

/// @function PopID()
/// @return {Undefined}
static PopID = function() {
	return __imgui_pop_id();
}

/// @function GetID(str_id)
/// @argument {String} str_id
/// @return {Real}
static GetID = function(str_id) {
	return __imgui_get_id(str_id);
}

/// @function PushItemFlag(item_flag, enabled)
/// @argument {ImGuiItemFlags} item_flag
/// @argument {Bool} enabled
/// @return {Undefined}
static PushItemFlag = function(item_flag, enabled) {
	return __imgui_push_item_flag(item_flag, enabled);
}

/// @function PopItemFlag()
/// @return {Undefined}
static PopItemFlag = function() {
	return __imgui_pop_item_flag();
}

/// @function BeginDisabled(disabled)
/// @argument {Bool} [disabled=true]
/// @return {Undefined}
static BeginDisabled = function(disabled=true) {
	return __imgui_begin_disabled(disabled);
}

/// @function EndDisabled()
/// @return {Undefined}
static EndDisabled = function() {
	return __imgui_end_disabled();
}

/// @function IsItemHovered(flags)
/// @argument {Real} [flags=ImGuiHoveredFlags.None]
/// @return {Bool}
static IsItemHovered = function(flags=ImGuiHoveredFlags.None) {
	return __imgui_is_item_hovered(flags);
}

/// @function IsItemActive()
/// @return {Bool}
static IsItemActive = function() {
	return __imgui_is_item_active();
}

/// @function IsItemFocused()
/// @return {Bool}
static IsItemFocused = function() {
	return __imgui_is_item_focused();
}

/// @function IsItemClicked(mouse_button)
/// @argument {Real} [mouse_button=ImGuiMouseButton.Left]
/// @return {Bool}
static IsItemClicked = function(mouse_button=ImGuiMouseButton.Left) {
	return __imgui_is_item_clicked(mouse_button);
}

/// @function IsItemVisible()
/// @return {Bool}
static IsItemVisible = function() {
	return __imgui_is_item_visible();
}

/// @function IsItemEdited()
/// @return {Bool}
static IsItemEdited = function() {
	return __imgui_is_item_edited();
}

/// @function IsItemActivated()
/// @return {Bool}
static IsItemActivated = function() {
	return __imgui_is_item_activated();
}

/// @function IsItemDeactivated()
/// @return {Bool}
static IsItemDeactivated = function() {
	return __imgui_is_item_deactivated();
}

/// @function IsItemDeactivatedAfterEdit()
/// @return {Bool}
static IsItemDeactivatedAfterEdit = function() {
	return __imgui_is_item_deactivated_after_edit();
}

/// @function IsItemToggledOpen()
/// @return {Bool}
static IsItemToggledOpen = function() {
	return __imgui_is_item_toggled_open();
}

/// @function IsAnyItemHovered()
/// @return {Bool}
static IsAnyItemHovered = function() {
	return __imgui_is_any_item_hovered();
}

/// @function IsAnyItemActive()
/// @return {Bool}
static IsAnyItemActive = function() {
	return __imgui_is_any_item_active();
}

/// @function IsAnyItemFocused()
/// @return {Bool}
static IsAnyItemFocused = function() {
	return __imgui_is_any_item_focused();
}

/// @function GetItemID()
/// @return {Real}
static GetItemID = function() {
	return __imgui_get_item_id();
}

/// @function GetItemRectMinX()
/// @return {Real}
static GetItemRectMinX = function() {
	return __imgui_get_item_rect_min_x();
}

/// @function GetItemRectMinY()
/// @return {Real}
static GetItemRectMinY = function() {
	return __imgui_get_item_rect_min_y();
}

/// @function GetItemRectMaxX()
/// @return {Real}
static GetItemRectMaxX = function() {
	return __imgui_get_item_rect_max_x();
}

/// @function GetItemRectMaxY()
/// @return {Real}
static GetItemRectMaxY = function() {
	return __imgui_get_item_rect_max_y();
}

/// @function GetItemRectSizeWidth()
/// @return {Real}
static GetItemRectSizeWidth = function() {
	return __imgui_get_item_rect_size_width();
}

/// @function GetItemRectSizeHeight()
/// @return {Real}
static GetItemRectSizeHeight = function() {
	return __imgui_get_item_rect_size_height();
}

/// @function SetNextItemAllowOverlap()
/// @return {Undefined}
static SetNextItemAllowOverlap = function() {
	return __imgui_set_next_item_allow_overlap();
}

/// @function BeginItemTooltip()
/// @return {Bool}
static BeginItemTooltip = function() {
	return __imgui_begin_item_tooltip();
}

/// @function SetItemTooltip(text)
/// @argument {String} text
/// @return {Undefined}
static SetItemTooltip = function(text) {
	return __imgui_set_item_tooltip(text);
}

/// @function IsRectVisible(x1, y1, x2, y2)
/// @argument {Real} x1
/// @argument {Real} y1
/// @argument {Real} x2
/// @argument {Real} y2
/// @return {Bool}
static IsRectVisible = function(x1, y1, x2, y2) {
	return __imgui_is_rect_visible(x1, y1, x2, y2);
}

/// @function GetTime()
/// @return {Real}
static GetTime = function() {
	return __imgui_get_time();
}

/// @function GetFrameCount()
/// @return {Real}
static GetFrameCount = function() {
	return __imgui_get_frame_count();
}

/// @function CalcTextWidth(text, hide_text_after_double_hash, wrap_width)
/// @argument {String} text
/// @argument {Bool} [hide_text_after_double_hash=false]
/// @argument {Real} [wrap_width=-1]
/// @return {Real}
static CalcTextWidth = function(text, hide_text_after_double_hash=false, wrap_width=-1) {
	return __imgui_calc_text_width(text, hide_text_after_double_hash, wrap_width);
}

/// @function CalcTextHeight(text, hide_text_after_double_hash, wrap_width)
/// @argument {String} text
/// @argument {Bool} [hide_text_after_double_hash=false]
/// @argument {Real} [wrap_width=-1]
/// @return {Real}
static CalcTextHeight = function(text, hide_text_after_double_hash=false, wrap_width=-1) {
	return __imgui_calc_text_height(text, hide_text_after_double_hash, wrap_width);
}

/// @function PushAllowKeyboardFocus(allow_keyboard_focus)
/// @argument {Bool} allow_keyboard_focus
/// @return {Undefined}
static PushAllowKeyboardFocus = function(allow_keyboard_focus) {
	return __imgui_push_allow_keyboard_focus(allow_keyboard_focus);
}

/// @function PopAllowKeyboardFocus()
/// @return {Undefined}
static PopAllowKeyboardFocus = function() {
	return __imgui_pop_allow_keyboard_focus();
}

/// @function SetKeyboardFocusHere(offset)
/// @argument {Real} [offset=0]
/// @return {Undefined}
static SetKeyboardFocusHere = function(offset=0) {
	return __imgui_set_keyboard_focus_here(offset);
}

/// @function PushButtonRepeat(_repeat)
/// @argument {Bool} _repeat
/// @return {Undefined}
static PushButtonRepeat = function(_repeat) {
	return __imgui_push_button_repeat(_repeat);
}

/// @function PopButtonRepeat()
/// @return {Undefined}
static PopButtonRepeat = function() {
	return __imgui_pop_button_repeat();
}

/// @function SetItemDefaultFocus()
/// @return {Undefined}
static SetItemDefaultFocus = function() {
	return __imgui_set_item_default_focus();
}

/// @function ConfigFlagsGet()
/// @return {Real}
static ConfigFlagsGet = function() {
	return __imgui_config_flags_get();
}

/// @function IniFilename(val)
/// @argument {String} [val=undefined]
/// @return {String}
static IniFilename = function(val="undefined") {
	return __imgui_ini_filename(val);
}

/// @function WantSaveIniSettings(val)
/// @argument {Bool} [val=undefined]
/// @return {Bool}
static WantSaveIniSettings = function(val=undefined) {
	return __imgui_want_save_ini_settings(val);
}

/// @function LoadIniSettingsFromDisk(ini_filename)
/// @argument {String} [ini_filename=undefined]
/// @return {Undefined}
static LoadIniSettingsFromDisk = function(ini_filename="undefined") {
	return __imgui_load_ini_settings_from_disk(ini_filename);
}

/// @function LoadIniSettingsFromMemory(ini_data)
/// @argument {String} [ini_data=undefined]
/// @return {Undefined}
static LoadIniSettingsFromMemory = function(ini_data="undefined") {
	return __imgui_load_ini_settings_from_memory(ini_data);
}

/// @function SaveIniSettingsToDisk(ini_filename)
/// @argument {String} [ini_filename=undefined]
/// @return {Undefined}
static SaveIniSettingsToDisk = function(ini_filename="undefined") {
	return __imgui_save_ini_settings_to_disk(ini_filename);
}

/// @function SaveIniSettingsToMemory()
/// @return {String}
static SaveIniSettingsToMemory = function() {
	return __imgui_save_ini_settings_to_memory();
}

/// @function ClearIniSettings()
/// @return {Undefined}
static ClearIniSettings = function() {
	return __imgui_clear_ini_settings();
}

/// @function ConfigFlagsSet(flags)
/// @argument {Real} flags
/// @return {Unknown<unset>}
static ConfigFlagsSet = function(flags) {
	return __imgui_config_flags_set(flags);
}

/// @function ConfigFlagToggle(flag)
/// @argument {Real} flag
/// @return {Bool}
static ConfigFlagToggle = function(flag) {
	return __imgui_config_flag_toggle(flag);
}

/// @function GetMainViewport()
/// @return {Pointer}
static GetMainViewport = function() {
	return __imgui_get_main_viewport();
}

/// @function GetViewportID(vp)
/// @argument {ImGuiViewport} vp
/// @return {ImGuiID}
static GetViewportID = function(vp) {
	return __imgui_get_viewport_id(vp);
}

/// @function LogText(text)
/// @argument {String} text
/// @return {Undefined}
static LogText = function(text) {
	return __imgui_log_text(text);
}

/// @function SetNextFrameWantCaptureKeyboard(val)
/// @argument {Bool} [val=undefined]
/// @return {Undefined}
static SetNextFrameWantCaptureKeyboard = function(val=undefined) {
	return __imgui_set_next_frame_want_capture_keyboard(val);
}

/// @function SetNextFrameWantCaptureMouse(val)
/// @argument {Bool} [val=undefined]
/// @return {Undefined}
static SetNextFrameWantCaptureMouse = function(val=undefined) {
	return __imgui_set_next_frame_want_capture_mouse(val);
}

/// @function WantKeyboardCapture(val)
/// @argument {Bool} [val=undefined]
/// @return {Bool}
static WantKeyboardCapture = function(val=undefined) {
	return __imgui_want_keyboard_capture(val);
}

/// @function WantMouseCapture(val)
/// @argument {Bool} [val=undefined]
/// @return {Bool}
static WantMouseCapture = function(val=undefined) {
	return __imgui_want_mouse_capture(val);
}

/// @function WantTextInput(val)
/// @argument {Bool} [val=undefined]
/// @return {Bool}
static WantTextInput = function(val=undefined) {
	return __imgui_want_text_input(val);
}

/// @function WantMouseCaptureUnlessPopupClose(val)
/// @argument {Bool} [val=undefined]
/// @return {Bool}
static WantMouseCaptureUnlessPopupClose = function(val=undefined) {
	return __imgui_want_mouse_unless_popup_close(val);
}

/// @function ColorEdit3(label, col, flags)
/// @argument {String} label
/// @argument {Real} col
/// @argument {Real} [flags=ImGuiColorEditFlags.None]
/// @return {Real}
static ColorEdit3 = function(label, col, flags=ImGuiColorEditFlags.None) {
	return __imgui_color_edit3(label, col, flags);
}

/// @function ColorPicker3(label, col, flags)
/// @argument {String} label
/// @argument {Real} col
/// @argument {Real} [flags=ImGuiColorEditFlags.None]
/// @return {Real}
static ColorPicker3 = function(label, col, flags=ImGuiColorEditFlags.None) {
	return __imgui_color_picker3(label, col, flags);
}

/// @function ColorEdit4(label, col, flags)
/// @argument {String} label
/// @argument {ImColor} col
/// @argument {Real} [flags=ImGuiColorEditFlags.None]
/// @return {Bool}
static ColorEdit4 = function(label, col, flags=ImGuiColorEditFlags.None) {
	return __imgui_color_edit4(label, col, flags);
}

/// @function ColorPicker4(label, col, flags)
/// @argument {String} label
/// @argument {ImColor} col
/// @argument {Real} [flags=ImGuiColorEditFlags.None]
/// @return {Bool}
static ColorPicker4 = function(label, col, flags=ImGuiColorEditFlags.None) {
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
	return __imgui_color_button(desc_id, color, alpha, flags, width, height);
}

/// @function SetColorEditOptions(flags)
/// @argument {Real} [flags=ImGuiColorEditFlags.None]
/// @return {Undefined}
static SetColorEditOptions = function(flags=ImGuiColorEditFlags.None) {
	return __imgui_set_color_edit_options(flags);
}

/// @function BeginCombo(label, preview, flags)
/// @argument {String} label
/// @argument {String} preview
/// @argument {Real} flags
/// @return {Bool}
static BeginCombo = function(label, preview, flags) {
	return __imgui_begin_combo(label, preview, flags);
}

/// @function EndCombo()
/// @return {Undefined}
static EndCombo = function() {
	return __imgui_end_combo();
}

/// @function Combo()
/// @return {Unknown<unset>}
static Combo = function() {
	return __imgui_combo();
}

/// @function DockSpace(_id, width, height, flags, window_class)
/// @argument {Real} _id
/// @argument {Real} [width=0]
/// @argument {Real} [height=0]
/// @argument {ImGuiDockNodeFlags} [flags=ImGuiDockNodeFlags.None]
/// @argument {ImGuiWindowClass} [window_class=undefined]
/// @return {Real}
static DockSpace = function(_id, width=0, height=0, flags=ImGuiDockNodeFlags.None, window_class=undefined) {
	return __imgui_dock_space(_id, width, height, flags, window_class);
}

/// @function FindViewportByID(_id)
/// @argument {Real} _id
/// @return {ImGuiViewport}
static FindViewportByID = function(_id) {
	return __imgui_find_viewport_by_id(_id);
}

/// @function FindViewportByPlatformHandle(platform_handle)
/// @argument {HWND} platform_handle
/// @return {ImGuiViewport}
static FindViewportByPlatformHandle = function(platform_handle) {
	return __imgui_find_viewport_by_platform_handle(platform_handle);
}

/// @function DockSpaceOverViewport(dockspace_id, viewport_id, flags, window_class)
/// @argument {Any} [dockspace_id=0]
/// @argument {Real} [viewport_id=0]
/// @argument {Real} [flags=ImGuiDockNodeFlags.None]
/// @argument {ImGuiWindowClass} [window_class=undefined]
/// @return {Real}
static DockSpaceOverViewport = function(dockspace_id=0, viewport_id=0, flags=ImGuiDockNodeFlags.None, window_class=undefined) {
	return __imgui_dock_space_over_viewport(dockspace_id, viewport_id, flags, window_class);
}

/// @function SetNextWindowDockID(dock_id, cond)
/// @argument {Real} dock_id
/// @argument {Real} [cond=ImGuiCond.None]
/// @return {Undefined}
static SetNextWindowDockID = function(dock_id, cond=ImGuiCond.None) {
	return __imgui_set_next_window_dock_id(dock_id, cond);
}

/// @function SetNextWindowClass(window_class)
/// @argument {ImGuiWindowClass} window_class
/// @return {Undefined}
static SetNextWindowClass = function(window_class) {
	return __imgui_set_next_window_class(window_class);
}

/// @function GetWindowDockID()
/// @return {Real}
static GetWindowDockID = function() {
	return __imgui_get_window_dock_id();
}

/// @function IsWindowDocked()
/// @return {Bool}
static IsWindowDocked = function() {
	return __imgui_is_window_docked();
}

/// @function DockBuilderDockWindow(window_name, node_id)
/// @argument {String} window_name
/// @argument {Real} node_id
/// @return {Undefined}
static DockBuilderDockWindow = function(window_name, node_id) {
	return __imgui_dockbuilder_dock_window(window_name, node_id);
}

/// @function DockBuilderGetNode(node_id)
/// @argument {Real} node_id
/// @return {Pointer}
static DockBuilderGetNode = function(node_id) {
	return __imgui_dockbuilder_get_node(node_id);
}

/// @function DockBuilderGetCentralNode(node_id)
/// @argument {Real} node_id
/// @return {Pointer}
static DockBuilderGetCentralNode = function(node_id) {
	return __imgui_dockbuilder_get_central_node(node_id);
}

/// @function DockBuilderAddNode(node_id, flags)
/// @argument {Real} [node_id=0]
/// @argument {Real} [flags=ImGuiDockNodeFlags.None]
/// @return {Real}
static DockBuilderAddNode = function(node_id=0, flags=ImGuiDockNodeFlags.None) {
	return __imgui_dockbuilder_add_node(node_id, flags);
}

/// @function DockBuilderRemoveNode(node_id)
/// @argument {Real} node_id
/// @return {Undefined}
static DockBuilderRemoveNode = function(node_id) {
	return __imgui_dockbuilder_remove_node(node_id);
}

/// @function DockBuilderRemoveNodeDockedWindows(node_id, clear_settings_refs)
/// @argument {Real} node_id
/// @argument {Bool} [clear_settings_refs=true]
/// @return {Undefined}
static DockBuilderRemoveNodeDockedWindows = function(node_id, clear_settings_refs=true) {
	return __imgui_dockbuilder_remove_node_docked_windows(node_id, clear_settings_refs);
}

/// @function DockBuilderRemoveNodeChildNodes(node_id)
/// @argument {Real} node_id
/// @return {Undefined}
static DockBuilderRemoveNodeChildNodes = function(node_id) {
	return __imgui_dockbuilder_remove_node_child_nodes(node_id);
}

/// @function DockBuilderSetNodePos(node_id, _x, _y)
/// @argument {Real} node_id
/// @argument {Real} _x
/// @argument {Real} _y
/// @return {Undefined}
static DockBuilderSetNodePos = function(node_id, _x, _y) {
	return __imgui_dockbuilder_set_node_pos(node_id, _x, _y);
}

/// @function DockBuilderSetNodeSize(node_id, width, height)
/// @argument {Real} node_id
/// @argument {Real} width
/// @argument {Real} height
/// @return {Undefined}
static DockBuilderSetNodeSize = function(node_id, width, height) {
	return __imgui_dockbuilder_set_node_size(node_id, width, height);
}

/// @function DockBuilderSplitNode(node_id, split_dir, size_ratio_for_node_at_dir)
/// @argument {Real} node_id
/// @argument {Real} split_dir
/// @argument {Real} size_ratio_for_node_at_dir
/// @return {Array<ImGuiID>}
static DockBuilderSplitNode = function(node_id, split_dir, size_ratio_for_node_at_dir) {
	return __imgui_dockbuilder_split_node(node_id, split_dir, size_ratio_for_node_at_dir);
}

/// @function DockBuilderCopyDockSpace(src_dockspace_id, dst_dockspace_id, window_remap_pairs)
/// @argument {Real} src_dockspace_id
/// @argument {Real} dst_dockspace_id
/// @argument {Any} window_remap_pairs
/// @return {Undefined}
static DockBuilderCopyDockSpace = function(src_dockspace_id, dst_dockspace_id, window_remap_pairs) {
	return __imgui_dockbuilder_copy_dock_space(src_dockspace_id, dst_dockspace_id, window_remap_pairs);
}

/// @function DockBuilderCopyNode(src_node_id, dst_node_id, node_remap_pairs)
/// @argument {Real} src_node_id
/// @argument {Real} dst_node_id
/// @argument {Any} node_remap_pairs
/// @return {Unknown<unset>}
static DockBuilderCopyNode = function(src_node_id, dst_node_id, node_remap_pairs) {
	return __imgui_dockbuilder_copy_node(src_node_id, dst_node_id, node_remap_pairs);
}

/// @function DockBuilderCopyWindowSettings(src_name, dst_name)
/// @argument {String} src_name
/// @argument {String} dst_name
/// @return {Undefined}
static DockBuilderCopyWindowSettings = function(src_name, dst_name) {
	return __imgui_dockbuilder_copy_window_settings(src_name, dst_name);
}

/// @function DockBuilderFinish(node_id)
/// @argument {Real} node_id
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
/// @argument {Real} [flags=ImGuiSliderFlags.None]
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
/// @argument {Real} [flags=ImGuiSliderFlags.None]
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
/// @argument {Real} [flags=ImGuiSliderFlags.None]
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
/// @argument {Real} [flags=ImGuiSliderFlags.None]
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
/// @argument {Real} [flags=ImGuiSliderFlags.None]
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
/// @argument {Real} [flags=ImGuiSliderFlags.None]
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
/// @argument {Real} [flags=ImGuiSliderFlags.None]
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
/// @argument {Real} [flags=ImGuiSliderFlags.None]
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
/// @argument {Real} [flags=ImGuiSliderFlags.None]
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
/// @argument {Real} [flags=ImGuiSliderFlags.None]
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
/// @argument {Real} [flags=ImGuiSliderFlags.None]
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
/// @argument {Real} [flags=ImGuiSliderFlags.None]
/// @return {Bool}
static DragIntRange2 = function(label, v, v_current_max, v_speed=1, v_min=0, v_max=0, format_max="%d", flags=ImGuiSliderFlags.None) {
	return __imgui_drag_int_range2(label, v, v_current_max, v_speed, v_min, v_max, format_max, flags);
}

/// @function GetBackgroundDrawList(viewport)
/// @argument {Pointer} [viewport=undefined]
/// @return {Pointer}
static GetBackgroundDrawList = function(viewport=undefined) {
	return __imgui_get_background_drawlist(viewport);
}

/// @function GetForegroundDrawList(viewport)
/// @argument {Pointer} [viewport=undefined]
/// @return {Pointer}
static GetForegroundDrawList = function(viewport=undefined) {
	return __imgui_get_foreground_drawlist(viewport);
}

/// @function GetWindowDrawList()
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
/// @argument {Real} [flags=ImDrawFlags.None]
/// @argument {Real} [thickness=1]
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
/// @argument {Real} [flags=ImDrawFlags.None]
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
/// @return {Undefined}
static DrawListAddPolyline = function(list, positions, col, flags, thickness) {
	return __imgui_drawlist_add_polyline(list, positions, col, flags, thickness, array_length(positions));
}

/// @function DrawListAddConvexPolyFilled(list, positions, col)
/// @argument {Pointer} list
/// @argument {Array<Real>} positions
/// @argument {Real} col
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
/// @return {Undefined}
static DrawListAddBezierQuadratic = function(list, x1, y1, x2, y2, x3, y3, col, thickness, num_segments=0) {
	return __imgui_drawlist_add_bezier_quadratic(list, x1, y1, x2, y2, x3, y3, col, thickness, num_segments);
}

/// @function DrawListPathFillConvex(list, col)
/// @argument {Pointer} list
/// @argument {Real} col
/// @return {Undefined}
static DrawListPathFillConvex = function(list, col) {
	return __imgui_drawlist_path_fill_convex(list, col);
}

/// @function DrawListPathStroke(list, col, flags, thickness)
/// @argument {Pointer} list
/// @argument {Real} col
/// @argument {Real} [flags=ImDrawFlags.None]
/// @argument {Real} [thickness=1]
/// @return {Undefined}
static DrawListPathStroke = function(list, col, flags=ImDrawFlags.None, thickness=1) {
	return __imgui_drawlist_path_stroke(list, col, flags, thickness);
}

/// @function DrawListPathClear(list)
/// @argument {Pointer} list
/// @return {Undefined}
static DrawListPathClear = function(list) {
	return __imgui_drawlist_path_clear(list);
}

/// @function DrawListPathLineTo(list, _x, _y)
/// @argument {Pointer} list
/// @argument {Real} _x
/// @argument {Real} _y
/// @return {Undefined}
static DrawListPathLineTo = function(list, _x, _y) {
	return __imgui_drawlist_path_line_to(list, _x, _y);
}

/// @function DrawListPathLineToMergeDuplicate(list, _x, _y)
/// @argument {Pointer} list
/// @argument {Real} _x
/// @argument {Real} _y
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
/// @argument {Real} [flags=ImDrawFlags.None]
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
/// @return {Undefined}
static DrawListAddImage = function(list, sprite, subimg, x1, y1, x2, y2, col=c_white) {
	if (!(ImGui.__ExtFlags & ImGuiExtFlags.RENDERER_GM)) texture_set_stage(0, sprite_get_texture(sprite, subimg)); 
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
/// @return {Undefined}
static DrawListAddImageRounded = function(list, sprite, subimg, x1, y1, x2, y2, col, rounding, flags) {
	if (!(ImGui.__ExtFlags & ImGuiExtFlags.RENDERER_GM)) texture_set_stage(0, sprite_get_texture(sprite, subimg)); 
	return __imgui_drawlist_add_image_rounded(list, sprite, subimg, x1, y1, x2, y2, col, rounding, flags, sprite_get_uvs(sprite, subimg));
}

/// @function DrawListPushClipRect(list, clip_min_x, clip_min_y, clip_max_x, clip_max_y, intersect_with_current_clip_rect)
/// @argument {Pointer} list
/// @argument {Real} clip_min_x
/// @argument {Real} clip_min_y
/// @argument {Real} clip_max_x
/// @argument {Real} clip_max_y
/// @argument {Bool} intersect_with_current_clip_rect
/// @return {Undefined}
static DrawListPushClipRect = function(list, clip_min_x, clip_min_y, clip_max_x, clip_max_y, intersect_with_current_clip_rect) {
	return __imgui_drawlist_push_clip_rect(list, clip_min_x, clip_min_y, clip_max_x, clip_max_y, intersect_with_current_clip_rect);
}

/// @function DrawlistPushClipRectFullscreen(list)
/// @argument {Pointer} list
/// @return {Undefined}
static DrawlistPushClipRectFullscreen = function(list) {
	return __imgui_drawlist_push_clip_rect_fullscreen(list);
}

/// @function DrawListPopClipRect(list)
/// @argument {Pointer} list
/// @return {Undefined}
static DrawListPopClipRect = function(list) {
	return __imgui_drawlist_pop_clip_rect(list);
}

/// @function DrawListPushTextureID(list, sprite, subimg)
/// @argument {Pointer} list
/// @argument {Real} sprite
/// @argument {Real} subimg
/// @return {Undefined}
static DrawListPushTextureID = function(list, sprite, subimg) {
	if (!(ImGui.__ExtFlags & ImGuiExtFlags.RENDERER_GM)) texture_set_stage(0, sprite_get_texture(sprite, subimg)); 
	return __imgui_drawlist_push_textureid(list, sprite, subimg);
}

/// @function DrawListPopTextureID(list)
/// @argument {Pointer} list
/// @return {Undefined}
static DrawListPopTextureID = function(list) {
	return __imgui_drawlist_pop_textureid(list);
}

/// @function DrawListFlagsGet(list)
/// @argument {Pointer} list
/// @return {Real}
static DrawListFlagsGet = function(list) {
	return __imgui_drawlist_flags_get(list);
}

/// @function DrawListFlagsSet(list, flags)
/// @argument {Pointer} list
/// @argument {Real} flags
/// @return {Undefined}
static DrawListFlagsSet = function(list, flags) {
	return __imgui_drawlist_flags_set(list, flags);
}

/// @function DrawListFlagToggle(list, flag)
/// @argument {Pointer} list
/// @argument {Real} flag
/// @return {Bool}
static DrawListFlagToggle = function(list, flag) {
	return __imgui_drawlist_flag_toggle(list, flag);
}

/// @function MemoryEditorShowWindow(title, buffer, offset, size)
/// @argument {String} title
/// @argument {Real} buffer
/// @argument {Real} [offset=0]
/// @argument {Real} [size=buffer_get_size⌊buffer⌉]
/// @return {Undefined}
static MemoryEditorShowWindow = function(title, buffer, offset=0, size=buffer_get_size(buffer)) {
	return __imgui_memory_editor_window(title, buffer, offset, size);
}

/// @function MemoryEditorDrawContents(buffer, offset, size)
/// @argument {Real} buffer
/// @argument {Real} [offset=0]
/// @argument {Real} [size=buffer_get_size⌊buffer⌉]
/// @return {Undefined}
static MemoryEditorDrawContents = function(buffer, offset=0, size=buffer_get_size(buffer)) {
	return __imgui_memory_editor_contents(buffer, offset, size);
}

/// @function GetFont()
/// @return {Pointer}
static GetFont = function() {
	return __imgui_get_font();
}

/// @function PushFont(ptr)
/// @argument {Any} [ptr=undefined]
/// @return {Undefined}
static PushFont = function(ptr=undefined) {
	return __imgui_push_font(ptr);
}

/// @function PopFont()
/// @return {Undefined}
static PopFont = function() {
	return __imgui_pop_font();
}

/// @function AddFontFromFile(file, size)
/// @argument {String} file
/// @argument {Real} size
/// @return {Pointer|Undefined}
static AddFontFromFile = function(file, size) {
	return __imgui_add_font_from_file(file, size);
}

/// @function AddFontDefault()
/// @return {Unknown<unset>}
static AddFontDefault = function() {
	return __imgui_add_font_default();
}

/// @function GetFontSize()
/// @return {Real}
static GetFontSize = function() {
	return __imgui_get_font_size();
}

/// @function InputText(label, val, flags)
/// @argument {String} label
/// @argument {String} val
/// @argument {Real} [flags=ImGuiInputTextFlags.None]
/// @return {String}
static InputText = function(label, val, flags=ImGuiInputTextFlags.None) {
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
	return __imgui_input_textmultiline(label, val, width, height, flags);
}

/// @function InputTextWithHint(label, hint, val, flags)
/// @argument {String} label
/// @argument {String} hint
/// @argument {String} val
/// @argument {Real} [flags=ImGuiInputTextFlags.None]
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
/// @argument {Real} [flags=ImGuiInputTextFlags.None]
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
/// @argument {Real} [flags=ImGuiInputTextFlags.None]
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
/// @argument {Real} [flags=ImGuiInputTextFlags.None]
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
/// @argument {Real} [flags=ImGuiInputTextFlags.None]
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
/// @argument {Real} [flags=ImGuiInputTextFlags.None]
/// @return {Bool}
static InputFloatN = function(label, v, step=0, step_fast=0, format="%.3f", flags=ImGuiInputTextFlags.None) {
	return __imgui_input_floatn(label, v, step, step_fast, format, flags, array_length(v));
}

/// @function InputInt(label, v, step, step_fast, flags)
/// @argument {String} label
/// @argument {Real} v
/// @argument {Real} [step=0]
/// @argument {Real} [step_fast=0]
/// @argument {Real} [flags=ImGuiInputTextFlags.None]
/// @return {Real}
static InputInt = function(label, v, step=0, step_fast=0, flags=ImGuiInputTextFlags.None) {
	return __imgui_input_int(label, v, step, step_fast, flags);
}

/// @function InputInt2(label, v, flags)
/// @argument {String} label
/// @argument {Array<Real>} v
/// @argument {Real} [flags=ImGuiInputTextFlags.None]
/// @return {Bool}
static InputInt2 = function(label, v, flags=ImGuiInputTextFlags.None) {
	return __imgui_input_int2(label, v, flags);
}

/// @function InputInt3(label, v, flags)
/// @argument {String} label
/// @argument {Array<Real>} v
/// @argument {Real} [flags=ImGuiInputTextFlags.None]
/// @return {Bool}
static InputInt3 = function(label, v, flags=ImGuiInputTextFlags.None) {
	return __imgui_input_int3(label, v, flags);
}

/// @function InputInt4(label, v, flags)
/// @argument {String} label
/// @argument {Array<Real>} v
/// @argument {Real} [flags=ImGuiInputTextFlags.None]
/// @return {Bool}
static InputInt4 = function(label, v, flags=ImGuiInputTextFlags.None) {
	return __imgui_input_int4(label, v, flags);
}

/// @function InputIntN(label, v, flags)
/// @argument {String} label
/// @argument {Array<Real>} v
/// @argument {Real} [flags=ImGuiInputTextFlags.None]
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
/// @argument {Real} [flags=ImGuiInputTextFlags.None]
/// @return {Real}
static InputDouble = function(label, v, step=0, step_fast=0, format="%.6f", flags=ImGuiInputTextFlags.None) {
	return __imgui_input_double(label, v, step, step_fast, format, flags);
}

/// @function Spacing()
/// @return {Undefined}
static Spacing = function() {
	return __imgui_spacing();
}

/// @function Dummy(width, height)
/// @argument {Real} width
/// @argument {Real} height
/// @return {Undefined}
static Dummy = function(width, height) {
	return __imgui_dummy(width, height);
}

/// @function NewLine()
/// @return {Undefined}
static NewLine = function() {
	return __imgui_newline();
}

/// @function AlignTextToFramePadding()
/// @return {Undefined}
static AlignTextToFramePadding = function() {
	return __imgui_align_text_to_frame_padding();
}

/// @function Separator()
/// @return {Undefined}
static Separator = function() {
	return __imgui_separator();
}

/// @function SeparatorText(label)
/// @argument {String} label
/// @return {Undefined}
static SeparatorText = function(label) {
	return __imgui_separator_text(label);
}

/// @function Indent(indent_w)
/// @argument {Real} [indent_w=0]
/// @return {Undefined}
static Indent = function(indent_w=0) {
	return __imgui_indent(indent_w);
}

/// @function Unindent(indent_w)
/// @argument {Real} [indent_w=0]
/// @return {Undefined}
static Unindent = function(indent_w=0) {
	return __imgui_unindent(indent_w);
}

/// @function SameLine(offset_from_start_x, spacing)
/// @argument {Real} [offset_from_start_x=0]
/// @argument {Real} [spacing=-1]
/// @return {Undefined}
static SameLine = function(offset_from_start_x=0, spacing=-1) {
	return __imgui_sameline(offset_from_start_x, spacing);
}

/// @function BeginGroup()
/// @return {Undefined}
static BeginGroup = function() {
	return __imgui_begin_group();
}

/// @function EndGroup()
/// @return {Undefined}
static EndGroup = function() {
	return __imgui_end_group();
}

/// @function GetCursorPosX()
/// @return {Real}
static GetCursorPosX = function() {
	return __imgui_get_cursor_pos_x();
}

/// @function GetCursorPosY()
/// @return {Real}
static GetCursorPosY = function() {
	return __imgui_get_cursor_pos_y();
}

/// @function GetCursorStartPosX()
/// @return {Real}
static GetCursorStartPosX = function() {
	return __imgui_get_cursor_start_pos_x();
}

/// @function GetCursorStartPosY()
/// @return {Real}
static GetCursorStartPosY = function() {
	return __imgui_get_cursor_start_pos_y();
}

/// @function GetCursorScreenPosX()
/// @return {Real}
static GetCursorScreenPosX = function() {
	return __imgui_get_cursor_screen_pos_x();
}

/// @function GetCursorScreenPosY()
/// @return {Real}
static GetCursorScreenPosY = function() {
	return __imgui_get_cursor_screen_pos_y();
}

/// @function SetCursorScreenPos(_x, _y)
/// @argument {Real} _x
/// @argument {Real} _y
/// @return {Undefined}
static SetCursorScreenPos = function(_x, _y) {
	return __imgui_set_cursor_screen_pos(_x, _y);
}

/// @function SetCursorPos(local_x, local_y)
/// @argument {Real} local_x
/// @argument {Real} local_y
/// @return {Undefined}
static SetCursorPos = function(local_x, local_y) {
	return __imgui_set_cursor_pos(local_x, local_y);
}

/// @function SetCursorPosX(local_x)
/// @argument {Real} local_x
/// @return {Undefined}
static SetCursorPosX = function(local_x) {
	return __imgui_set_cursor_pos_x(local_x);
}

/// @function SetCursorPosY(local_y)
/// @argument {Real} local_y
/// @return {Undefined}
static SetCursorPosY = function(local_y) {
	return __imgui_set_cursor_pos_y(local_y);
}

/// @function GetTextLineHeight()
/// @return {Real}
static GetTextLineHeight = function() {
	return __imgui_get_text_line_height();
}

/// @function GetTextLineHeightWithSpacing()
/// @return {Real}
static GetTextLineHeightWithSpacing = function() {
	return __imgui_get_text_line_height_with_spacing();
}

/// @function GetFrameHeight()
/// @return {Real}
static GetFrameHeight = function() {
	return __imgui_get_frame_height();
}

/// @function GetFrameHeightWithSpacing()
/// @return {Real}
static GetFrameHeightWithSpacing = function() {
	return __imgui_get_frame_height_with_spacing();
}

/// @function GetContentRegionAvailX()
/// @return {Real}
static GetContentRegionAvailX = function() {
	return __imgui_get_content_region_avail_x();
}

/// @function GetContentRegionAvailY()
/// @return {Real}
static GetContentRegionAvailY = function() {
	return __imgui_get_content_region_avail_y();
}

/// @function GetContentRegionMaxX()
/// @return {Real}
static GetContentRegionMaxX = function() {
	return __imgui_get_content_region_max_x();
}

/// @function GetContentRegionMaxY()
/// @return {Real}
static GetContentRegionMaxY = function() {
	return __imgui_get_content_region_max_y();
}

/// @function GetWindowContentRegionMinX()
/// @return {Real}
static GetWindowContentRegionMinX = function() {
	return __imgui_get_window_content_region_min_x();
}

/// @function GetWindowContentRegionMinY()
/// @return {Real}
static GetWindowContentRegionMinY = function() {
	return __imgui_get_window_content_region_min_y();
}

/// @function GetWindowContentRegionMaxX()
/// @return {Real}
static GetWindowContentRegionMaxX = function() {
	return __imgui_get_window_content_region_max_x();
}

/// @function GetWindowContentRegionMaxY()
/// @return {Real}
static GetWindowContentRegionMaxY = function() {
	return __imgui_get_window_content_region_max_y();
}

/// @function PushItemWidth(item_width)
/// @argument {Real} item_width
/// @return {Undefined}
static PushItemWidth = function(item_width) {
	return __imgui_push_item_width(item_width);
}

/// @function PopItemWidth()
/// @return {Undefined}
static PopItemWidth = function() {
	return __imgui_pop_item_width();
}

/// @function SetNextItemWidth(item_width)
/// @argument {Real} item_width
/// @return {Undefined}
static SetNextItemWidth = function(item_width) {
	return __imgui_set_next_item_width(item_width);
}

/// @function CalcItemWidth()
/// @return {Real}
static CalcItemWidth = function() {
	return __imgui_calc_item_width();
}

/// @function PushTextWrapPos(wrap_local_pos_x)
/// @argument {Real} [wrap_local_pos_x=0]
/// @return {Undefined}
static PushTextWrapPos = function(wrap_local_pos_x=0) {
	return __imgui_push_text_wrap_pos(wrap_local_pos_x);
}

/// @function PopTextWrapPos()
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
/// @return {Undefined}
static PushClipRect = function(clip_min_x, clip_min_y, clip_max_x, clip_max_y, intersect_with_current_clip_rect) {
	return __imgui_push_clip_rect(clip_min_x, clip_min_y, clip_max_x, clip_max_y, intersect_with_current_clip_rect);
}

/// @function PopClipRect()
/// @return {Undefined}
static PopClipRect = function() {
	return __imgui_pop_clip_rect();
}

/// @function BeginListBox(label, width, height)
/// @argument {String} label
/// @argument {Real} [width=0]
/// @argument {Real} [height=0]
/// @return {Bool}
static BeginListBox = function(label, width=0, height=0) {
	return __imgui_begin_listbox(label, width, height);
}

/// @function EndListBox()
/// @return {Undefined}
static EndListBox = function() {
	return __imgui_end_listbox();
}

/// @function ListBox()
/// @return {Unknown<unset>}
static ListBox = function() {
	return __imgui_listbox();
}

/// @function BeginMenuBar()
/// @return {Bool}
static BeginMenuBar = function() {
	return __imgui_begin_menubar();
}

/// @function EndMenuBar()
/// @return {Undefined}
static EndMenuBar = function() {
	return __imgui_end_menubar();
}

/// @function BeginMainMenuBar()
/// @return {Bool}
static BeginMainMenuBar = function() {
	return __imgui_begin_mainmenubar();
}

/// @function EndMainMenuBar()
/// @return {Undefined}
static EndMainMenuBar = function() {
	return __imgui_end_mainmenubar();
}

/// @function BeginMenu(label, enabled)
/// @argument {String} label
/// @argument {Bool} [enabled=true]
/// @return {Bool}
static BeginMenu = function(label, enabled=true) {
	return __imgui_begin_menu(label, enabled);
}

/// @function EndMenu()
/// @return {Undefined}
static EndMenu = function() {
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
	return __imgui_menu_item(label, shortcut, selected, enabled, mask);
}

/// @function BeginDragDropSource(flags)
/// @argument {Real} [flags=ImGuiDragDropFlags.None]
/// @return {Bool}
static BeginDragDropSource = function(flags=ImGuiDragDropFlags.None) {
	return __imgui_begin_drag_drop_source(flags);
}

/// @function EndDragDropSource()
/// @return {Undefined}
static EndDragDropSource = function() {
	return __imgui_end_drag_drop_source();
}

/// @function BeginDragDropTarget()
/// @return {Bool}
static BeginDragDropTarget = function() {
	return __imgui_begin_drag_drop_target();
}

/// @function EndDragDropTarget()
/// @return {Undefined}
static EndDragDropTarget = function() {
	return __imgui_end_drag_drop_target();
}

/// @function SetDragDropPayload(type, data, cond)
/// @argument {String} type
/// @argument {Any} data
/// @argument {Real} [cond=ImGuiCond.None]
/// @return {Bool}
static SetDragDropPayload = function(type, data, cond=ImGuiCond.None) {
	return __imgui_set_drag_drop_payload(type, data, cond);
}

/// @function AcceptDragDropPayload(type, flags)
/// @argument {String} type
/// @argument {Real} [flags=ImGuiDragDropFlags.None]
/// @return {Any|Undefined}
static AcceptDragDropPayload = function(type, flags=ImGuiDragDropFlags.None) {
	return __imgui_accept_drag_drop_payload(type, flags);
}

/// @function GetDragDropPayload()
/// @return {Any|Undefined}
static GetDragDropPayload = function() {
	return __imgui_get_drag_drop_payload();
}

/// @function GetDragDropPayloadType()
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
/// @return {Undefined}
static PlotHistogram = function(label, values, values_offset=0, overlay_text="", scale_min=0, scale_max=0, graph_width=0, graph_height=0) {
	return __imgui_plot_histogram(label, values, values_offset, overlay_text, scale_min, scale_max, graph_width, graph_height, array_length(values));
}

/// @function BeginPopup(str_id, flags)
/// @argument {String} str_id
/// @argument {Real} [flags=ImGuiWindowFlags.None]
/// @return {Bool}
static BeginPopup = function(str_id, flags=ImGuiWindowFlags.None) {
	return __imgui_begin_popup(str_id, flags);
}

/// @function BeginPopupModal(name, open, flags, mask)
/// @argument {String} name
/// @argument {Bool} [open=undefined]
/// @argument {Real} [flags=ImGuiWindowFlags.None]
/// @argument {Real} [mask=ImGuiReturnMask.Return]
/// @return {Real}
static BeginPopupModal = function(name, open=undefined, flags=ImGuiWindowFlags.None, mask=ImGuiReturnMask.Return) {
	return __imgui_begin_popup_modal(name, open, flags, mask);
}

/// @function EndPopup()
/// @return {Undefined}
static EndPopup = function() {
	return __imgui_end_popup();
}

/// @function OpenPopup(str_id, flags)
/// @argument {String} str_id
/// @argument {Real} [flags=ImGuiPopupFlags.None]
/// @return {Undefined}
static OpenPopup = function(str_id, flags=ImGuiPopupFlags.None) {
	return __imgui_open_popup(str_id, flags);
}

/// @function OpenPopupOnItemClick(str_id, flags)
/// @argument {String} [str_id=undefined]
/// @argument {Real} [flags=ImGuiPopupFlags.MouseButtonRight]
/// @return {Undefined}
static OpenPopupOnItemClick = function(str_id="undefined", flags=ImGuiPopupFlags.MouseButtonRight) {
	return __imgui_open_popup_on_item_click(str_id, flags);
}

/// @function CloseCurrentPopup()
/// @return {Undefined}
static CloseCurrentPopup = function() {
	return __imgui_close_current_popup();
}

/// @function BeginPopupContextItem(str_id, flags)
/// @argument {String} [str_id=undefined]
/// @argument {Real} [flags=ImGuiPopupFlags.MouseButtonRight]
/// @return {Bool}
static BeginPopupContextItem = function(str_id="undefined", flags=ImGuiPopupFlags.MouseButtonRight) {
	return __imgui_begin_popup_context_item(str_id, flags);
}

/// @function BeginPopupContextWindow(str_id, flags)
/// @argument {String} [str_id=undefined]
/// @argument {Real} [flags=ImGuiPopupFlags.MouseButtonRight]
/// @return {Bool}
static BeginPopupContextWindow = function(str_id="undefined", flags=ImGuiPopupFlags.MouseButtonRight) {
	return __imgui_begin_popup_context_window(str_id, flags);
}

/// @function BeginPopupContextVoid(str_id, flags)
/// @argument {String} [str_id=undefined]
/// @argument {Real} [flags=ImGuiPopupFlags.MouseButtonRight]
/// @return {Bool}
static BeginPopupContextVoid = function(str_id="undefined", flags=ImGuiPopupFlags.MouseButtonRight) {
	return __imgui_begin_popup_context_void(str_id, flags);
}

/// @function IsPopupOpen(str_id, flags)
/// @argument {String} str_id
/// @argument {Real} [flags=ImGuiPopupFlags.None]
/// @return {Bool}
static IsPopupOpen = function(str_id, flags=ImGuiPopupFlags.None) {
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
	return __imgui_selectable(label, selected, flags, width, height);
}

/// @function _(yystruct)
/// @argument {Struct} yystruct
/// @return {Pointer}
static _ = function(yystruct) {
	return __imgui_create_multi_select_basic_storage(yystruct);
}

/// @function _(storage_ptr)
/// @argument {Pointer} storage_ptr
/// @return {Undefined}
static _ = function(storage_ptr) {
	return __imgui_destroy_multi_select_basic_storage(storage_ptr);
}

/// @function BeginMultiSelect(flags, size, items_count)
/// @argument {ImGuiMultiSelectFlags} flags
/// @argument {Real} size
/// @argument {Real} items_count
/// @return {ImGuiMultiSelectIO}
static BeginMultiSelect = function(flags, size, items_count) {
	return __imgui_begin_multi_select(flags, size, items_count);
}

/// @function SelectionStorageApplyRequests(selection, ms_io)
/// @argument {ImGuiSelectionBasicStorage} selection
/// @argument {ImGuiMultiSelectIO} ms_io
/// @return {Undefined}
static SelectionStorageApplyRequests = function(selection, ms_io) {
	return __imgui_selection_storage_apply_requests(selection, ms_io);
}

/// @function EndMultiSelect()
/// @return {ImGuiMultiSelectIO}
static EndMultiSelect = function() {
	return __imgui_end_multi_select();
}

/// @function SetNextItemSelectionUserData(idx)
/// @argument {Real} idx
/// @return {Unknown<unset>}
static SetNextItemSelectionUserData = function(idx) {
	return __imgui_set_next_item_selection_user_data(idx);
}

/// @function _(selection, idx)
/// @argument {ImGuiSelectionBasicStorage} selection
/// @argument {Real} idx
/// @return {Bool}
static _ = function(selection, idx) {
	return __imgui_selection_storage_contains(selection, idx);
}

/// @function _(selection, value)
/// @argument {ImGuiSelectionBasicStorage} selection
/// @argument {Any} [value=undefined]
/// @return {Real}
static _ = function(selection, value=undefined) {
	return __imgui_selection_storage_size(selection, value);
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
	return __imgui_slider_float4(label, v, v_min, v_max, format, flags);
}

/// @function SliderFloatN(label, v, v_speed, v_min, v_max, format, flags)
/// @argument {String} label
/// @argument {Array<Real>} v
/// @argument {Real} [v_speed=1]
/// @argument {Real} [v_min=0]
/// @argument {Real} [v_max=0]
/// @argument {String} [format=%.3f]
/// @argument {Real} [flags=ImGuiSliderFlags.None]
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
/// @argument {Real} [flags=ImGuiSliderFlags.None]
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
/// @argument {Real} [flags=ImGuiSliderFlags.None]
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
/// @argument {Real} [flags=ImGuiSliderFlags.None]
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
/// @argument {Real} [flags=ImGuiSliderFlags.None]
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
/// @argument {Real} [flags=ImGuiSliderFlags.None]
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
/// @argument {Real} [flags=ImGuiSliderFlags.None]
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
/// @argument {Real} [flags=ImGuiSliderFlags.None]
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
/// @argument {Real} [flags=ImGuiSliderFlags.None]
/// @return {Real}
static SliderAngle = function(label, v_rad, v_degrees_min=0, v_degrees_max=0, format="%d", flags=ImGuiSliderFlags.None) {
	return __imgui_slider_angle(label, v_rad, v_degrees_min, v_degrees_max, format, flags);
}

/// @function StyleColorsDark()
/// @return {Undefined}
static StyleColorsDark = function() {
	return __imgui_style_colors_dark();
}

/// @function StyleColorsLight()
/// @return {Undefined}
static StyleColorsLight = function() {
	return __imgui_style_colors_light();
}

/// @function StyleColorsClassic()
/// @return {Undefined}
static StyleColorsClassic = function() {
	return __imgui_style_colors_classic();
}

/// @function PushStyleColor(idx, col, alpha)
/// @argument {Real} idx
/// @argument {Real} col
/// @argument {Real} alpha
/// @return {Undefined}
static PushStyleColor = function(idx, col, alpha) {
	return __imgui_push_style_color(idx, col, alpha);
}

/// @function PopStyleColor(count)
/// @argument {Real} [count=1]
/// @return {Undefined}
static PopStyleColor = function(count=1) {
	return __imgui_pop_style_color(count);
}

/// @function PushStyleVar(idx, val, val2)
/// @argument {Real} idx
/// @argument {Real} val
/// @argument {Any} [val2=undefined]
/// @return {Undefined}
static PushStyleVar = function(idx, val, val2=undefined) {
	return __imgui_push_style_var(idx, val, val2);
}

/// @function PushStyleVarX(idx, val_x)
/// @argument {Real} idx
/// @argument {Real} val_x
/// @return {Undefined}
static PushStyleVarX = function(idx, val_x) {
	return __imgui_push_style_var_x(idx, val_x);
}

/// @function PushStyleVarY(idx, val_y)
/// @argument {Real} idx
/// @argument {Real} val_y
/// @return {Undefined}
static PushStyleVarY = function(idx, val_y) {
	return __imgui_push_style_var_y(idx, val_y);
}

/// @function PopStyleVar(count)
/// @argument {Real} [count=1]
/// @return {Undefined}
static PopStyleVar = function(count=1) {
	return __imgui_pop_style_var(count);
}

/// @function GetStyleColor(idx)
/// @argument {Real} idx
/// @return {Real}
static GetStyleColor = function(idx) {
	return __imgui_get_style_color(idx);
}

/// @function GetStyleColorName(idx)
/// @argument {Real} idx
/// @return {String}
static GetStyleColorName = function(idx) {
	return __imgui_get_style_color_name(idx);
}

/// @function BeginTable(str_id, column, flags, outer_width, outer_height, inner_width)
/// @argument {String} str_id
/// @argument {Real} column
/// @argument {Real} [flags=ImGuiTableFlags.None]
/// @argument {Real} [outer_width=0]
/// @argument {Real} [outer_height=0]
/// @argument {Real} [inner_width=0]
/// @return {Bool}
static BeginTable = function(str_id, column, flags=ImGuiTableFlags.None, outer_width=0, outer_height=0, inner_width=0) {
	return __imgui_begin_table(str_id, column, flags, outer_width, outer_height, inner_width);
}

/// @function EndTable()
/// @return {Undefined}
static EndTable = function() {
	return __imgui_end_table();
}

/// @function TableNextRow(row_flags, min_row_height)
/// @argument {Real} [row_flags=ImGuiTableRowFlags.None]
/// @argument {Real} [min_row_height=0]
/// @return {Undefined}
static TableNextRow = function(row_flags=ImGuiTableRowFlags.None, min_row_height=0) {
	return __imgui_table_next_row(row_flags, min_row_height);
}

/// @function TableNextColumn()
/// @return {Bool}
static TableNextColumn = function() {
	return __imgui_table_next_column();
}

/// @function TableSetColumnIndex(column_n)
/// @argument {Real} column_n
/// @return {Bool}
static TableSetColumnIndex = function(column_n) {
	return __imgui_table_set_column_index(column_n);
}

/// @function TableSetupColumn(label, flags, user_id)
/// @argument {String} label
/// @argument {Real} [flags=ImGuiTableColumnFlags.None]
/// @argument {Real} [user_id=0]
/// @return {Undefined}
static TableSetupColumn = function(label, flags=ImGuiTableColumnFlags.None, user_id=0) {
	return __imgui_table_setup_column(label, flags, user_id);
}

/// @function TableSetupScrollFreeze(cols, rows)
/// @argument {Real} cols
/// @argument {Real} rows
/// @return {Undefined}
static TableSetupScrollFreeze = function(cols, rows) {
	return __imgui_table_setup_scroll_freeze(cols, rows);
}

/// @function TableHeadersRow()
/// @return {Undefined}
static TableHeadersRow = function() {
	return __imgui_table_headers_row();
}

/// @function TableAngledHeadersRow()
/// @return {Undefined}
static TableAngledHeadersRow = function() {
	return __imgui_table_angled_headers_row();
}

/// @function TableHeader(label)
/// @argument {String} label
/// @return {Undefined}
static TableHeader = function(label) {
	return __imgui_table_header(label);
}

/// @function TableGetColumnCount()
/// @return {Real}
static TableGetColumnCount = function() {
	return __imgui_table_get_column_count();
}

/// @function TableGetColumnIndex()
/// @return {Real}
static TableGetColumnIndex = function() {
	return __imgui_table_get_column_index();
}

/// @function TableGetColumnName(column_n)
/// @argument {Real} [column_n=-1]
/// @return {String}
static TableGetColumnName = function(column_n=-1) {
	return __imgui_table_get_column_name(column_n);
}

/// @function TableGetColumnFlags(column_n)
/// @argument {Real} [column_n=-1]
/// @return {Real}
static TableGetColumnFlags = function(column_n=-1) {
	return __imgui_table_get_column_flags(column_n);
}

/// @function TableGetRowIndex()
/// @return {Real}
static TableGetRowIndex = function() {
	return __imgui_table_get_row_index();
}

/// @function TableSetColumnEnabled(column_n, v)
/// @argument {Real} column_n
/// @argument {Bool} v
/// @return {Undefined}
static TableSetColumnEnabled = function(column_n, v) {
	return __imgui_table_set_column_enabled(column_n, v);
}

/// @function TableSetBgColor(target, col, column_n)
/// @argument {Real} target
/// @argument {Real} col
/// @argument {Real} [column_n=-1]
/// @return {Undefined}
static TableSetBgColor = function(target, col, column_n=-1) {
	return __imgui_table_set_bg_color(target, col, column_n);
}

/// @function Columns(count, _id, border)
/// @argument {Real} [count=1]
/// @argument {String} [_id=]
/// @argument {Bool} [border=true]
/// @return {Undefined}
static Columns = function(count=1, _id="", border=true) {
	return __imgui_columns(count, _id, border);
}

/// @function NextColumn()
/// @return {Undefined}
static NextColumn = function() {
	return __imgui_next_column();
}

/// @function GetColumnIndex()
/// @return {Real}
static GetColumnIndex = function() {
	return __imgui_get_column_index();
}

/// @function GetColumnWidth(column_index)
/// @argument {Real} [column_index=-1]
/// @return {Real}
static GetColumnWidth = function(column_index=-1) {
	return __imgui_get_column_width(column_index);
}

/// @function SetColumnWidth(column_index, width)
/// @argument {Real} column_index
/// @argument {Real} width
/// @return {Undefined}
static SetColumnWidth = function(column_index, width) {
	return __imgui_set_column_width(column_index, width);
}

/// @function GetColumnOffset(column_index)
/// @argument {Real} [column_index=-1]
/// @return {Real}
static GetColumnOffset = function(column_index=-1) {
	return __imgui_get_column_offset(column_index);
}

/// @function SetColumnOffset(column_index, offset_x)
/// @argument {Real} column_index
/// @argument {Real} offset_x
/// @return {Undefined}
static SetColumnOffset = function(column_index, offset_x) {
	return __imgui_set_column_offset(column_index, offset_x);
}

/// @function GetColumnsCount()
/// @return {Real}
static GetColumnsCount = function() {
	return __imgui_get_columns_count();
}

/// @function BeginTabBar(str_id, flags)
/// @argument {String} str_id
/// @argument {Real} [flags=ImGuiTabBarFlags.None]
/// @return {Bool}
static BeginTabBar = function(str_id, flags=ImGuiTabBarFlags.None) {
	return __imgui_begin_tab_bar(str_id, flags);
}

/// @function EndTabBar()
/// @return {Undefined}
static EndTabBar = function() {
	return __imgui_end_tab_bar();
}

/// @function BeginTabItem(label, open, flags, mask)
/// @argument {String} label
/// @argument {Bool} [open=undefined]
/// @argument {Real} [flags=ImGuiTabItemFlags.None]
/// @argument {Real} [mask=ImGuiReturnMask.Return]
/// @return {Real}
static BeginTabItem = function(label, open=undefined, flags=ImGuiTabItemFlags.None, mask=ImGuiReturnMask.Return) {
	return __imgui_begin_tab_item(label, open, flags, mask);
}

/// @function EndTabItem()
/// @return {Undefined}
static EndTabItem = function() {
	return __imgui_end_tab_item();
}

/// @function TabItemButton(label, flags)
/// @argument {String} label
/// @argument {Real} [flags=ImGuiTabItemFlags.None]
/// @return {Bool}
static TabItemButton = function(label, flags=ImGuiTabItemFlags.None) {
	return __imgui_tab_item_button(label, flags);
}

/// @function SetTabItemClosed(tab_or_docked_window_label)
/// @argument {String} tab_or_docked_window_label
/// @return {Undefined}
static SetTabItemClosed = function(tab_or_docked_window_label) {
	return __imgui_set_tab_item_closed(tab_or_docked_window_label);
}

/// @function TextUnformatted(text)
/// @argument {String} text
/// @return {Undefined}
static TextUnformatted = function(text) {
	return __imgui_text_unformatted(text);
}

/// @function Text(val)
/// @argument {String} val
/// @return {Undefined}
static Text = function(val) {
	return __imgui_text(val);
}

/// @function TextColored(val, color, alpha)
/// @argument {String} val
/// @argument {Real} color
/// @argument {Real} [alpha=1]
/// @return {Undefined}
static TextColored = function(val, color, alpha=1) {
	return __imgui_text_colored(val, color, alpha);
}

/// @function TextDisabled(val)
/// @argument {String} val
/// @return {Undefined}
static TextDisabled = function(val) {
	return __imgui_text_disabled(val);
}

/// @function TextWrapped(val)
/// @argument {String} val
/// @return {Undefined}
static TextWrapped = function(val) {
	return __imgui_text_wrapped(val);
}

/// @function LabelText(label, val)
/// @argument {String} label
/// @argument {String} val
/// @return {Undefined}
static LabelText = function(label, val) {
	return __imgui_label_text(label, val);
}

/// @function BulletText(val)
/// @argument {String} val
/// @return {Undefined}
static BulletText = function(val) {
	return __imgui_bullet_text(val);
}

/// @function Value()
/// @return {Unknown<unset>}
static Value = function() {
	return __imgui_value();
}

/// @function BeginTooltip()
/// @return {Undefined}
static BeginTooltip = function() {
	return __imgui_begin_tooltip();
}

/// @function EndTooltip()
/// @return {Undefined}
static EndTooltip = function() {
	return __imgui_end_tooltip();
}

/// @function SetTooltip(val)
/// @argument {String} val
/// @return {Undefined}
static SetTooltip = function(val) {
	return __imgui_set_tooltip(val);
}

/// @function TreeNode(label)
/// @argument {String} label
/// @return {Bool}
static TreeNode = function(label) {
	return __imgui_tree_node(label);
}

/// @function TreeNodeEx(label, flags)
/// @argument {String} label
/// @argument {Real} [flags=ImGuiTreeNodeFlags.None]
/// @return {Bool}
static TreeNodeEx = function(label, flags=ImGuiTreeNodeFlags.None) {
	return __imgui_tree_node_ex(label, flags);
}

/// @function TreePush(str_id)
/// @argument {String} str_id
/// @return {Undefined}
static TreePush = function(str_id) {
	return __imgui_tree_push(str_id);
}

/// @function TreePop()
/// @return {Undefined}
static TreePop = function() {
	return __imgui_tree_pop();
}

/// @function GetTreeNodeToLabelSpacing()
/// @return {Real}
static GetTreeNodeToLabelSpacing = function() {
	return __imgui_get_tree_node_to_label_spacing();
}

/// @function SetNextItemOpen(is_open, cond)
/// @argument {Bool} is_open
/// @argument {Real} [cond=ImGuiCond.None]
/// @return {Undefined}
static SetNextItemOpen = function(is_open, cond=ImGuiCond.None) {
	return __imgui_set_next_item_open(is_open, cond);
}

/// @function CollapsingHeader(label, _visible, flags, mask)
/// @argument {String} label
/// @argument {Bool} [_visible=undefined]
/// @argument {Real} [flags=ImGuiTreeNodeFlags.None]
/// @argument {Real} [mask=ImGuiReturnMask.Return]
/// @return {Real}
static CollapsingHeader = function(label, _visible=undefined, flags=ImGuiTreeNodeFlags.None, mask=ImGuiReturnMask.Return) {
	return __imgui_collapsing_header(label, _visible, flags, mask);
}

/// @function Button(label, width, height)
/// @argument {String} label
/// @argument {Real} [width=0]
/// @argument {Real} [height=0]
/// @return {Bool}
static Button = function(label, width=0, height=0) {
	return __imgui_button(label, width, height);
}

/// @function SmallButton(label)
/// @argument {String} label
/// @return {Bool}
static SmallButton = function(label) {
	return __imgui_small_button(label);
}

/// @function InvisibleButton(_id, width, height, flags)
/// @argument {String} _id
/// @argument {Real} [width=0]
/// @argument {Real} [height=0]
/// @argument {Real} [flags=ImGuiButtonFlags.None]
/// @return {Bool}
static InvisibleButton = function(_id, width=0, height=0, flags=ImGuiButtonFlags.None) {
	return __imgui_invisible_button(_id, width, height, flags);
}

/// @function ArrowButton(str_id)
/// @argument {String} str_id
/// @return {Bool}
static ArrowButton = function(str_id) {
	return __imgui_arrow_button(str_id);
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
	if (!(ImGui.__ExtFlags & ImGuiExtFlags.RENDERER_GM)) texture_set_stage(0, sprite_get_texture(sprite, subimg)); 
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
/// @return {Bool}
static ImageButton = function(str_id, sprite, subimg, color, alpha, bg_color, bg_alpha, width=sprite_get_width(sprite), height=sprite_get_height(sprite)) {
	if (!(ImGui.__ExtFlags & ImGuiExtFlags.RENDERER_GM)) texture_set_stage(0, sprite_get_texture(sprite, subimg)); 
	return __imgui_image_button(str_id, sprite, subimg, color, alpha, bg_color, bg_alpha, width, height, sprite_get_uvs(sprite, subimg));
}

/// @function Surface(surface, color, alpha, width, height)
/// @argument {Real} surface
/// @argument {Real} [color=c_white]
/// @argument {Real} [alpha=1]
/// @argument {Real} [width=surface_get_width⌊surface⌉]
/// @argument {Real} [height=surface_get_height⌊surface⌉]
/// @return {Undefined}
static Surface = function(surface, color=c_white, alpha=1, width=surface_get_width(surface), height=surface_get_height(surface)) {
	var _tex = surface_get_texture(surface); if (!(ImGui.__ExtFlags & ImGuiExtFlags.RENDERER_GM)) {texture_set_stage(0, _tex);};
	return __imgui_surface(surface, color, alpha, width, height, texture_get_uvs(_tex));
}

/// @function Checkbox(label, checked)
/// @argument {String} label
/// @argument {Bool} checked
/// @return {Bool}
static Checkbox = function(label, checked) {
	return __imgui_checkbox(label, checked);
}

/// @function CheckboxFlags(label, flags, flags_value)
/// @argument {String} label
/// @argument {Real} flags
/// @argument {Real} flags_value
/// @return {Real}
static CheckboxFlags = function(label, flags, flags_value) {
	return __imgui_checkbox_flags(label, flags, flags_value);
}

/// @function RadioButton(label, active)
/// @argument {String} label
/// @argument {Bool} active
/// @return {Bool}
static RadioButton = function(label, active) {
	return __imgui_radio_button(label, active);
}

/// @function ProgressBar(_frac, width, height, overlay)
/// @argument {Real} _frac
/// @argument {Real} [width=0]
/// @argument {Real} [height=0]
/// @argument {String} [overlay=]
/// @return {Undefined}
static ProgressBar = function(_frac, width=0, height=0, overlay="") {
	return __imgui_progressbar(_frac, width, height, overlay);
}

/// @function Bullet()
/// @return {Undefined}
static Bullet = function() {
	return __imgui_bullet();
}

/// @function TextLink(label)
/// @argument {String} label
/// @return {Undefined}
static TextLink = function(label) {
	return __imgui_text_link(label);
}

/// @function TextLinkOpenURL(label, url)
/// @argument {String} label
/// @argument {String} url
/// @return {Undefined}
static TextLinkOpenURL = function(label, url) {
	return __imgui_text_link_open_url(label, url);
}

/// @function Begin(name, open, flags, mask)
/// @argument {String} name
/// @argument {Bool} [open=undefined]
/// @argument {Real} [flags=ImGuiWindowFlags.None]
/// @argument {Real} [mask=ImGuiReturnMask.Return]
/// @return {Real}
static Begin = function(name, open=undefined, flags=ImGuiWindowFlags.None, mask=ImGuiReturnMask.Return) {
	return __imgui_begin(name, open, flags, mask);
}

/// @function End()
/// @return {Undefined}
static End = function() {
	return __imgui_end();
}

/// @function BeginChild(str_id, width, height, child_flags, window_flags)
/// @argument {String} str_id
/// @argument {Real} [width=0]
/// @argument {Real} [height=0]
/// @argument {Real} [child_flags=ImGuiChildFlags.None]
/// @argument {Real} [window_flags=ImGuiWindowFlags.None]
/// @return {Bool}
static BeginChild = function(str_id, width=0, height=0, child_flags=ImGuiChildFlags.None, window_flags=ImGuiWindowFlags.None) {
	return __imgui_begin_child(str_id, width, height, child_flags, window_flags);
}

/// @function EndChild()
/// @return {Undefined}
static EndChild = function() {
	return __imgui_end_child();
}

/// @function BeginChildFrame(_id, width, height, flags)
/// @argument {Real} _id
/// @argument {Real} [width=0]
/// @argument {Real} [height=0]
/// @argument {Real} [flags=ImGuiWindowFlags.None]
/// @return {Bool}
static BeginChildFrame = function(_id, width=0, height=0, flags=ImGuiWindowFlags.None) {
	return __imgui_begin_child_frame(_id, width, height, flags);
}

/// @function EndChildFrame()
/// @return {Undefined}
static EndChildFrame = function() {
	return __imgui_end_child_frame();
}

/// @function IsWindowAppearing()
/// @return {Bool}
static IsWindowAppearing = function() {
	return __imgui_is_window_appearing();
}

/// @function IsWindowCollapsed()
/// @return {Bool}
static IsWindowCollapsed = function() {
	return __imgui_is_window_collapsed();
}

/// @function IsWindowFocused(flags)
/// @argument {Real} [flags=ImGuiFocusedFlags.None]
/// @return {Bool}
static IsWindowFocused = function(flags=ImGuiFocusedFlags.None) {
	return __imgui_is_window_focused(flags);
}

/// @function IsWindowHovered(flags)
/// @argument {Real} [flags=ImGuiHoveredFlags.None]
/// @return {Bool}
static IsWindowHovered = function(flags=ImGuiHoveredFlags.None) {
	return __imgui_is_window_hovered(flags);
}

/// @function GetWindowDpiScale()
/// @return {Real}
static GetWindowDpiScale = function() {
	return __imgui_get_window_dpi_scale();
}

/// @function GetWindowPosX()
/// @return {Real}
static GetWindowPosX = function() {
	return __imgui_get_window_x();
}

/// @function GetWindowPosY()
/// @return {Real}
static GetWindowPosY = function() {
	return __imgui_get_window_y();
}

/// @function GetWindowWidth()
/// @return {Real}
static GetWindowWidth = function() {
	return __imgui_get_window_width();
}

/// @function GetWindowHeight()
/// @return {Real}
static GetWindowHeight = function() {
	return __imgui_get_window_height();
}

/// @function GetWindowViewport()
/// @return {Pointer}
static GetWindowViewport = function() {
	return __imgui_get_window_viewport();
}

/// @function SetWindowFontScale(scale)
/// @argument {Real} scale
/// @return {Undefined}
static SetWindowFontScale = function(scale) {
	return __imgui_set_window_font_scale(scale);
}

/// @function SetNextWindowViewport(_id)
/// @argument {Real} _id
/// @return {Undefined}
static SetNextWindowViewport = function(_id) {
	return __imgui_set_next_window_viewport(_id);
}

/// @function SetNextWindowPos(_x, _y, cond, pivot_x, pivot_y)
/// @argument {Real} _x
/// @argument {Real} _y
/// @argument {Real} [cond=ImGuiCond.None]
/// @argument {Real} [pivot_x=0]
/// @argument {Real} [pivot_y=0]
/// @return {Undefined}
static SetNextWindowPos = function(_x, _y, cond=ImGuiCond.None, pivot_x=0, pivot_y=0) {
	return __imgui_set_next_window_pos(_x, _y, cond, pivot_x, pivot_y);
}

/// @function SetNextWindowSize(width, height, cond)
/// @argument {Real} width
/// @argument {Real} height
/// @argument {Real} [cond=ImGuiCond.None]
/// @return {Undefined}
static SetNextWindowSize = function(width, height, cond=ImGuiCond.None) {
	return __imgui_set_next_window_size(width, height, cond);
}

/// @function SetNextWindowSizeConstraints(min_width, min_height, max_width, max_height)
/// @argument {Real} min_width
/// @argument {Real} min_height
/// @argument {Real} max_width
/// @argument {Real} max_height
/// @return {Undefined}
static SetNextWindowSizeConstraints = function(min_width, min_height, max_width, max_height) {
	return __imgui_set_next_window_size_constraints(min_width, min_height, max_width, max_height);
}

/// @function SetNextWindowContentSize(width, height)
/// @argument {Real} width
/// @argument {Real} height
/// @return {Undefined}
static SetNextWindowContentSize = function(width, height) {
	return __imgui_set_next_window_content_size(width, height);
}

/// @function SetNextWindowCollapsed(collapsed, cond)
/// @argument {Bool} collapsed
/// @argument {Real} [cond=ImGuiCond.None]
/// @return {Undefined}
static SetNextWindowCollapsed = function(collapsed, cond=ImGuiCond.None) {
	return __imgui_set_next_window_collapsed(collapsed, cond);
}

/// @function SetNextWindowFocus()
/// @return {Undefined}
static SetNextWindowFocus = function() {
	return __imgui_set_next_window_focus();
}

/// @function SetNextWindowScroll(scroll_x, scroll_y)
/// @argument {Real} scroll_x
/// @argument {Real} scroll_y
/// @return {Undefined}
static SetNextWindowScroll = function(scroll_x, scroll_y) {
	return __imgui_set_next_window_scroll(scroll_x, scroll_y);
}

/// @function SetNextWindowBgAlpha(alpha)
/// @argument {Real} alpha
/// @return {Undefined}
static SetNextWindowBgAlpha = function(alpha) {
	return __imgui_set_next_window_bgalpha(alpha);
}

/// @function GetScrollX()
/// @return {Real}
static GetScrollX = function() {
	return __imgui_get_scroll_x();
}

/// @function GetScrollY()
/// @return {Real}
static GetScrollY = function() {
	return __imgui_get_scroll_y();
}

/// @function SetScrollX(scroll_x)
/// @argument {Real} scroll_x
/// @return {Undefined}
static SetScrollX = function(scroll_x) {
	return __imgui_set_scroll_x(scroll_x);
}

/// @function SetScrollY(scroll_y)
/// @argument {Real} scroll_y
/// @return {Undefined}
static SetScrollY = function(scroll_y) {
	return __imgui_set_scroll_y(scroll_y);
}

/// @function GetScrollMaxX()
/// @return {Real}
static GetScrollMaxX = function() {
	return __imgui_get_scroll_max_x();
}

/// @function GetScrollMaxY()
/// @return {Real}
static GetScrollMaxY = function() {
	return __imgui_get_scroll_max_y();
}

/// @function SetScrollHereX(center_x_ratio)
/// @argument {Real} [center_x_ratio=0.5]
/// @return {Undefined}
static SetScrollHereX = function(center_x_ratio=0.5) {
	return __imgui_set_scroll_here_x(center_x_ratio);
}

/// @function SetScrollHereY(center_y_ratio)
/// @argument {Real} [center_y_ratio=0.5]
/// @return {Undefined}
static SetScrollHereY = function(center_y_ratio=0.5) {
	return __imgui_set_scroll_here_y(center_y_ratio);
}

/// @function SetScrollFromPosX(local_x, center_x_ratio)
/// @argument {Real} local_x
/// @argument {Real} [center_x_ratio=0.5]
/// @return {Undefined}
static SetScrollFromPosX = function(local_x, center_x_ratio=0.5) {
	return __imgui_set_scroll_from_pos_x(local_x, center_x_ratio);
}

/// @function SetScrollFromPosY(local_y, center_y_ratio)
/// @argument {Real} local_y
/// @argument {Real} [center_y_ratio=0.5]
/// @return {Undefined}
static SetScrollFromPosY = function(local_y, center_y_ratio=0.5) {
	return __imgui_set_scroll_from_pos_y(local_y, center_y_ratio);
}

/// @function SetWindowPos(_x, _y, cond)
/// @argument {Real} _x
/// @argument {Real} _y
/// @argument {Real} [cond=ImGuiCond.None]
/// @return {Undefined}
static SetWindowPos = function(_x, _y, cond=ImGuiCond.None) {
	return __imgui_set_window_pos(_x, _y, cond);
}

/// @function SetWindowSize(name, width, height, cond)
/// @argument {String} [name=]
/// @argument {Real} width
/// @argument {Real} height
/// @argument {Real} [cond=ImGuiCond.None]
/// @return {Undefined}
static SetWindowSize = function(name="", width, height, cond=ImGuiCond.None) {
	return __imgui_set_window_size(name, width, height, cond);
}

/// @function SetWindowCollapsed(name, collapsed, cond)
/// @argument {String} [name=]
/// @argument {Bool} collapsed
/// @argument {Real} [cond=ImGuiCond.None]
/// @return {Undefined}
static SetWindowCollapsed = function(name="", collapsed, cond=ImGuiCond.None) {
	return __imgui_set_window_collapsed(name, collapsed, cond);
}

/// @function SetWindowFocus(name)
/// @argument {String} [name=]
/// @return {Undefined}
static SetWindowFocus = function(name="") {
	return __imgui_set_window_focus(name);
}

