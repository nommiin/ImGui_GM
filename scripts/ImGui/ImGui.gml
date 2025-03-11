function ImGui() constructor {
    /// @section Binds
    /// @function CreateContext
    /// @context ImGui
    /// @return {Pointer}
    static CreateContext = function() {
        return __imgui_create_context();
    }

    /// @function DestroyContext
    /// @param {Pointer} ctx
    /// @context ImGui
    /// @return {Undefined}
    static DestroyContext = function(ctx) {
        return __imgui_destroy_context(ctx);
    }

    /// @function GetCurrentContext
    /// @context ImGui
    /// @return {Pointer}
    static GetCurrentContext = function() {
        return __imgui_get_current_context();
    }

    /// @function SetCurrentContext
    /// @param {Pointer} ctx
    /// @context ImGui
    /// @return {Undefined}
    static SetCurrentContext = function(ctx) {
        return __imgui_set_current_context(ctx);
    }

    /// @function ShowDemoWindow
    /// @param {Bool} [open=undefined]
    /// @context ImGui
    /// @return {Bool}
    static ShowDemoWindow = function(open=undefined) {
        return __imgui_show_demo_window(open);
    }

    /// @function ShowMetricsWindow
    /// @param {Bool} [open=undefined]
    /// @context ImGui
    /// @return {Bool}
    static ShowMetricsWindow = function(open=undefined) {
        return __imgui_show_metrics_window(open);
    }

    /// @function ShowDebugLogWindow
    /// @param {Bool} [open=undefined]
    /// @context ImGui
    /// @return {Bool}
    static ShowDebugLogWindow = function(open=undefined) {
        return __imgui_show_debug_log_window(open);
    }

    /// @function ShowIDStackToolWindow
    /// @param {Bool} [open=undefined]
    /// @context ImGui
    /// @return {Bool}
    static ShowIDStackToolWindow = function(open=undefined) {
        return __imgui_show_stack_tool_window(open);
    }

    /// @function ShowAboutWindow
    /// @param {Bool} [open=undefined]
    /// @context ImGui
    /// @return {Bool}
    static ShowAboutWindow = function(open=undefined) {
        return __imgui_show_about_window(open);
    }

    /// @function ShowStyleEditor
    /// @context ImGui
    /// @return {Undefined}
    static ShowStyleEditor = function() {
        return __imgui_show_style_editor();
    }

    /// @function ShowStyleSelector
    /// @param {String} label
    /// @context ImGui
    /// @return {Bool}
    static ShowStyleSelector = function(label) {
        return __imgui_show_style_selector(label);
    }

    /// @function ShowFontSelector
    /// @param {String} label
    /// @context ImGui
    /// @return {Undefined}
    static ShowFontSelector = function(label) {
        return __imgui_show_font_selector(label);
    }

    /// @function ShowUserGuide
    /// @context ImGui
    /// @return {Undefined}
    static ShowUserGuide = function() {
        return __imgui_show_user_guide();
    }

    /// @function GetVersion
    /// @context ImGui
    /// @return {String}
    static GetVersion = function() {
        return __imgui_get_version();
    }

    /// @function PushID
    /// @param {String|Real} _id
    /// @context ImGui
    /// @return {Undefined}
    static PushID = function(_id) {
        return __imgui_push_id(_id);
    }

    /// @function PopID
    /// @context ImGui
    /// @return {Undefined}
    static PopID = function() {
        return __imgui_pop_id();
    }

    /// @function GetID
    /// @param {String} str_id
    /// @context ImGui
    /// @return {Real}
    static GetID = function(str_id) {
        return __imgui_get_id(str_id);
    }

    /// @function PushItemFlag
    /// @param {ImGuiItemFlags} item_flag
    /// @param {Bool} enabled
    /// @context ImGui
    /// @return {Undefined}
    static PushItemFlag = function(item_flag, enabled) {
        return __imgui_push_item_flag(item_flag, enabled);
    }

    /// @function PopItemFlag
    /// @context ImGui
    /// @return {Undefined}
    static PopItemFlag = function() {
        return __imgui_pop_item_flag();
    }

    /// @function BeginDisabled
    /// @param {Bool} [disabled=true]
    /// @context ImGui
    /// @return {Undefined}
    static BeginDisabled = function(disabled=true) {
        return __imgui_begin_disabled(disabled);
    }

    /// @function EndDisabled
    /// @context ImGui
    /// @return {Undefined}
    static EndDisabled = function() {
        return __imgui_end_disabled();
    }

    /// @function IsItemHovered
    /// @param {Enum.ImGuiHoveredFlags} [flags=ImGuiHoveredFlags.None]
    /// @context ImGui
    /// @return {Bool}
    static IsItemHovered = function(flags=ImGuiHoveredFlags.None) {
        return __imgui_is_item_hovered(flags);
    }

    /// @function IsItemActive
    /// @context ImGui
    /// @return {Bool}
    static IsItemActive = function() {
        return __imgui_is_item_active();
    }

    /// @function IsItemFocused
    /// @context ImGui
    /// @return {Bool}
    static IsItemFocused = function() {
        return __imgui_is_item_focused();
    }

    /// @function IsItemClicked
    /// @param {Enum.ImGuiMouseButton} [mouse_button=ImGuiMouseButton.Left]
    /// @context ImGui
    /// @return {Bool}
    static IsItemClicked = function(mouse_button=ImGuiMouseButton.Left) {
        return __imgui_is_item_clicked(mouse_button);
    }

    /// @function IsItemVisible
    /// @context ImGui
    /// @return {Bool}
    static IsItemVisible = function() {
        return __imgui_is_item_visible();
    }

    /// @function IsItemEdited
    /// @context ImGui
    /// @return {Bool}
    static IsItemEdited = function() {
        return __imgui_is_item_edited();
    }

    /// @function IsItemActivated
    /// @context ImGui
    /// @return {Bool}
    static IsItemActivated = function() {
        return __imgui_is_item_activated();
    }

    /// @function IsItemDeactivated
    /// @context ImGui
    /// @return {Bool}
    static IsItemDeactivated = function() {
        return __imgui_is_item_deactivated();
    }

    /// @function IsItemDeactivatedAfterEdit
    /// @context ImGui
    /// @return {Bool}
    static IsItemDeactivatedAfterEdit = function() {
        return __imgui_is_item_deactivated_after_edit();
    }

    /// @function IsItemToggledOpen
    /// @context ImGui
    /// @return {Bool}
    static IsItemToggledOpen = function() {
        return __imgui_is_item_toggled_open();
    }

    /// @function IsAnyItemHovered
    /// @context ImGui
    /// @return {Bool}
    static IsAnyItemHovered = function() {
        return __imgui_is_any_item_hovered();
    }

    /// @function IsAnyItemActive
    /// @context ImGui
    /// @return {Bool}
    static IsAnyItemActive = function() {
        return __imgui_is_any_item_active();
    }

    /// @function IsAnyItemFocused
    /// @context ImGui
    /// @return {Bool}
    static IsAnyItemFocused = function() {
        return __imgui_is_any_item_focused();
    }

    /// @function GetItemID
    /// @context ImGui
    /// @return {Real}
    static GetItemID = function() {
        return __imgui_get_item_id();
    }

    /// @function GetItemRectMinX
    /// @context ImGui
    /// @return {Real}
    static GetItemRectMinX = function() {
        return __imgui_get_item_rect_min_x();
    }

    /// @function GetItemRectMinY
    /// @context ImGui
    /// @return {Real}
    static GetItemRectMinY = function() {
        return __imgui_get_item_rect_min_y();
    }

    /// @function GetItemRectMaxX
    /// @context ImGui
    /// @return {Real}
    static GetItemRectMaxX = function() {
        return __imgui_get_item_rect_max_x();
    }

    /// @function GetItemRectMaxY
    /// @context ImGui
    /// @return {Real}
    static GetItemRectMaxY = function() {
        return __imgui_get_item_rect_max_y();
    }

    /// @function GetItemRectSizeWidth
    /// @context ImGui
    /// @return {Real}
    static GetItemRectSizeWidth = function() {
        return __imgui_get_item_rect_size_width();
    }

    /// @function GetItemRectSizeHeight
    /// @context ImGui
    /// @return {Real}
    static GetItemRectSizeHeight = function() {
        return __imgui_get_item_rect_size_height();
    }

    /// @function SetNextItemAllowOverlap
    /// @context ImGui
    /// @return {Undefined}
    static SetNextItemAllowOverlap = function() {
        return __imgui_set_next_item_allow_overlap();
    }

    /// @function BeginItemTooltip
    /// @context ImGui
    /// @return {Bool}
    static BeginItemTooltip = function() {
        return __imgui_begin_item_tooltip();
    }

    /// @function SetItemTooltip
    /// @param {String} text
    /// @context ImGui
    /// @return {Undefined}
    static SetItemTooltip = function(text) {
        return __imgui_set_item_tooltip(text);
    }

    /// @function IsRectVisible
    /// @param {Real} x1
    /// @param {Real} y1
    /// @param {Real} x2
    /// @param {Real} y2
    /// @context ImGui
    /// @return {Bool}
    static IsRectVisible = function(x1, y1, x2, y2) {
        return __imgui_is_rect_visible(x1, y1, x2, y2);
    }

    /// @function GetTime
    /// @context ImGui
    /// @return {Real}
    static GetTime = function() {
        return __imgui_get_time();
    }

    /// @function GetFrameCount
    /// @context ImGui
    /// @return {Real}
    static GetFrameCount = function() {
        return __imgui_get_frame_count();
    }

    /// @function CalcTextWidth
    /// @param {String} text
    /// @param {Bool} [hide_text_after_double_hash=false]
    /// @param {Real} [wrap_width=-1]
    /// @context ImGui
    /// @return {Real}
    static CalcTextWidth = function(text, hide_text_after_double_hash=false, wrap_width=-1) {
        return __imgui_calc_text_width(text, hide_text_after_double_hash, wrap_width);
    }

    /// @function CalcTextHeight
    /// @param {String} text
    /// @param {Bool} [hide_text_after_double_hash=false]
    /// @param {Real} [wrap_width=-1]
    /// @context ImGui
    /// @return {Real}
    static CalcTextHeight = function(text, hide_text_after_double_hash=false, wrap_width=-1) {
        return __imgui_calc_text_height(text, hide_text_after_double_hash, wrap_width);
    }

    /// @function PushAllowKeyboardFocus
    /// @param {Bool} allow_keyboard_focus
    /// @context ImGui
    /// @return {Undefined}
    static PushAllowKeyboardFocus = function(allow_keyboard_focus) {
        return __imgui_push_allow_keyboard_focus(allow_keyboard_focus);
    }

    /// @function PopAllowKeyboardFocus
    /// @context ImGui
    /// @return {Undefined}
    static PopAllowKeyboardFocus = function() {
        return __imgui_pop_allow_keyboard_focus();
    }

    /// @function SetKeyboardFocusHere
    /// @param {Real} [offset=0]
    /// @context ImGui
    /// @return {Undefined}
    static SetKeyboardFocusHere = function(offset=0) {
        return __imgui_set_keyboard_focus_here(offset);
    }

    /// @function SetNavCursorVisible
    /// @param {Bool} _visible
    /// @context ImGui
    /// @return {Undefined}
    static SetNavCursorVisible = function(_visible) {
        return __imgui_set_nav_cursor_visible(_visible);
    }

    /// @function PushButtonRepeat
    /// @param {Bool} _repeat
    /// @context ImGui
    /// @return {Undefined}
    static PushButtonRepeat = function(_repeat) {
        return __imgui_push_button_repeat(_repeat);
    }

    /// @function PopButtonRepeat
    /// @context ImGui
    /// @return {Undefined}
    static PopButtonRepeat = function() {
        return __imgui_pop_button_repeat();
    }

    /// @function SetItemDefaultFocus
    /// @context ImGui
    /// @return {Undefined}
    static SetItemDefaultFocus = function() {
        return __imgui_set_item_default_focus();
    }

    /// @function ConfigFlagsGet
    /// @context ImGui
    /// @return {Real}
    static ConfigFlagsGet = function() {
        return __imgui_config_flags_get();
    }

    /// @function IniFilename
    /// @param {String} [val=undefined]
    /// @context ImGui
    /// @return {String}
    static IniFilename = function(val="undefined") {
        return __imgui_ini_filename(val);
    }

    /// @function WantSaveIniSettings
    /// @param {Bool} [val=undefined]
    /// @context ImGui
    /// @return {Bool}
    static WantSaveIniSettings = function(val=undefined) {
        return __imgui_want_save_ini_settings(val);
    }

    /// @function LoadIniSettingsFromDisk
    /// @param {String} [ini_filename=undefined]
    /// @context ImGui
    /// @return {Undefined}
    static LoadIniSettingsFromDisk = function(ini_filename="undefined") {
        return __imgui_load_ini_settings_from_disk(ini_filename);
    }

    /// @function LoadIniSettingsFromMemory
    /// @param {String} [ini_data=undefined]
    /// @context ImGui
    /// @return {Undefined}
    static LoadIniSettingsFromMemory = function(ini_data="undefined") {
        return __imgui_load_ini_settings_from_memory(ini_data);
    }

    /// @function SaveIniSettingsToDisk
    /// @param {String} [ini_filename=undefined]
    /// @context ImGui
    /// @return {Undefined}
    static SaveIniSettingsToDisk = function(ini_filename="undefined") {
        return __imgui_save_ini_settings_to_disk(ini_filename);
    }

    /// @function SaveIniSettingsToMemory
    /// @context ImGui
    /// @return {String}
    static SaveIniSettingsToMemory = function() {
        return __imgui_save_ini_settings_to_memory();
    }

    /// @function ClearIniSettings
    /// @context ImGui
    /// @return {Undefined}
    static ClearIniSettings = function() {
        return __imgui_clear_ini_settings();
    }

    /// @function ConfigFlagsSet
    /// @param {Real} flags
    /// @context ImGui
    /// @return {Unknown<unset>}
    static ConfigFlagsSet = function(flags) {
        return __imgui_config_flags_set(flags);
    }

    /// @function ConfigFlagToggle
    /// @param {Real} flag
    /// @context ImGui
    /// @return {Bool}
    static ConfigFlagToggle = function(flag) {
        return __imgui_config_flag_toggle(flag);
    }

    /// @function GetMainViewport
    /// @context ImGui
    /// @return {Pointer}
    static GetMainViewport = function() {
        return __imgui_get_main_viewport();
    }

    /// @function GetViewportID
    /// @param {ImGuiViewport} vp
    /// @context ImGui
    /// @return {ImGuiID}
    static GetViewportID = function(vp) {
        return __imgui_get_viewport_id(vp);
    }

    /// @function LogText
    /// @param {String} text
    /// @context ImGui
    /// @return {Undefined}
    static LogText = function(text) {
        return __imgui_log_text(text);
    }

    /// @function GetClipboardText
    /// @context ImGui
    /// @return {String}
    static GetClipboardText = function() {
        return __imgui_get_clipboard_text();
    }

    /// @function SetClipboardText
    /// @param {String} val
    /// @context ImGui
    /// @return {Undefined}
    static SetClipboardText = function(val) {
        return __imgui_set_clipboard_text(val);
    }

    /// @function DebugLog
    /// @param {String} fmt
    /// @param {Array} args
    /// @context ImGui
    /// @return {Undefined}
    static DebugLog = function(fmt, args) {
        return __imgui_debug_log(fmt, args);
    }

    /// @function LogToClipboard
    /// @param {Real} [auto_open_depth=-1]
    /// @context ImGui
    /// @return {Undefined}
    static LogToClipboard = function(auto_open_depth=-1) {
        return __imgui_log_to_clipboard(auto_open_depth);
    }

    /// @function LogToTTY
    /// @param {Real} [auto_open_depth=-1]
    /// @context ImGui
    /// @return {Undefined}
    static LogToTTY = function(auto_open_depth=-1) {
        return __imgui_log_to_tty(auto_open_depth);
    }

    /// @function LogFinish
    /// @context ImGui
    /// @return {Undefined}
    static LogFinish = function() {
        return __imgui_log_finish();
    }

    /// @function LogButtons
    /// @context ImGui
    /// @return {Undefined}
    static LogButtons = function() {
        return __imgui_log_buttons();
    }

    /// @function LogToFile
    /// @param {Real} [auto_open_depth=-1]
    /// @param {Any} [filename=undefined]
    /// @context ImGui
    /// @return {Undefined}
    static LogToFile = function(auto_open_depth=-1, filename=undefined) {
        return __imgui_log_to_file(auto_open_depth, filename);
    }

    /// @function SetNextFrameWantCaptureKeyboard
    /// @param {Bool} [val=undefined]
    /// @context ImGui
    /// @return {Undefined}
    static SetNextFrameWantCaptureKeyboard = function(val=undefined) {
        return __imgui_set_next_frame_want_capture_keyboard(val);
    }

    /// @function SetNextFrameWantCaptureMouse
    /// @param {Bool} [val=undefined]
    /// @context ImGui
    /// @return {Undefined}
    static SetNextFrameWantCaptureMouse = function(val=undefined) {
        return __imgui_set_next_frame_want_capture_mouse(val);
    }

    /// @function WantKeyboardCapture
    /// @param {Bool} [val=undefined]
    /// @context ImGui
    /// @return {Bool}
    static WantKeyboardCapture = function(val=undefined) {
        return __imgui_want_keyboard_capture(val);
    }

    /// @function WantMouseCapture
    /// @param {Bool} [val=undefined]
    /// @context ImGui
    /// @return {Bool}
    static WantMouseCapture = function(val=undefined) {
        return __imgui_want_mouse_capture(val);
    }

    /// @function WantTextInput
    /// @param {Bool} [val=undefined]
    /// @context ImGui
    /// @return {Bool}
    static WantTextInput = function(val=undefined) {
        return __imgui_want_text_input(val);
    }

    /// @function WantMouseCaptureUnlessPopupClose
    /// @param {Bool} [val=undefined]
    /// @context ImGui
    /// @return {Bool}
    static WantMouseCaptureUnlessPopupClose = function(val=undefined) {
        return __imgui_want_mouse_unless_popup_close(val);
    }

    /// @function ColorEdit3
    /// @param {String} label
    /// @param {Real} col
    /// @param {Enum.ImGuiColorEditFlags} [flags=ImGuiColorEditFlags.None]
    /// @context ImGui
    /// @return {Real}
    static ColorEdit3 = function(label, col, flags=ImGuiColorEditFlags.None) {
        return __imgui_color_edit3(label, col, flags);
    }

    /// @function ColorPicker3
    /// @param {String} label
    /// @param {Real} col
    /// @param {Enum.ImGuiColorEditFlags} [flags=ImGuiColorEditFlags.None]
    /// @context ImGui
    /// @return {Real}
    static ColorPicker3 = function(label, col, flags=ImGuiColorEditFlags.None) {
        return __imgui_color_picker3(label, col, flags);
    }

    /// @function ColorEdit4
    /// @param {String} label
    /// @param {ImColor} col
    /// @param {Enum.ImGuiColorEditFlags} [flags=ImGuiColorEditFlags.None]
    /// @context ImGui
    /// @return {Bool}
    static ColorEdit4 = function(label, col, flags=ImGuiColorEditFlags.None) {
        return __imgui_color_edit4(label, col, flags);
    }

    /// @function ColorPicker4
    /// @param {String} label
    /// @param {ImColor} col
    /// @param {Enum.ImGuiColorEditFlags} [flags=ImGuiColorEditFlags.None]
    /// @context ImGui
    /// @return {Bool}
    static ColorPicker4 = function(label, col, flags=ImGuiColorEditFlags.None) {
        return __imgui_color_picker4(label, col, flags);
    }

    /// @function ColorButton
    /// @param {String} desc_id
    /// @param {Real} color
    /// @param {Real} [alpha=1]
    /// @param {Enum.ImGuiColorEditFlags} [flags=ImGuiColorEditFlags.None]
    /// @param {Real} [width=0]
    /// @param {Real} [height=0]
    /// @context ImGui
    /// @return {Bool}
    static ColorButton = function(desc_id, color, alpha=1, flags=ImGuiColorEditFlags.None, width=0, height=0) {
        return __imgui_color_button(desc_id, color, alpha, flags, width, height);
    }

    /// @function SetColorEditOptions
    /// @param {Enum.ImGuiColorEditFlags} [flags=ImGuiColorEditFlags.None]
    /// @context ImGui
    /// @return {Undefined}
    static SetColorEditOptions = function(flags=ImGuiColorEditFlags.None) {
        return __imgui_set_color_edit_options(flags);
    }

    /// @function BeginCombo
    /// @param {String} label
    /// @param {String} preview
    /// @param {Real} flags
    /// @context ImGui
    /// @return {Bool}
    static BeginCombo = function(label, preview, flags) {
        return __imgui_begin_combo(label, preview, flags);
    }

    /// @function EndCombo
    /// @context ImGui
    /// @return {Undefined}
    static EndCombo = function() {
        return __imgui_end_combo();
    }

    /// @function Combo
    /// @context ImGui
    /// @return {Unknown<unset>}
    static Combo = function() {
        return __imgui_combo();
    }

    /// @function DockSpace
    /// @param {Real} _id
    /// @param {Real} [width=0]
    /// @param {Real} [height=0]
    /// @param {ImGuiDockNodeFlags} [flags=ImGuiDockNodeFlags.None]
    /// @param {ImGuiWindowClass} [window_class=undefined]
    /// @context ImGui
    /// @return {Real}
    static DockSpace = function(_id, width=0, height=0, flags=ImGuiDockNodeFlags.None, window_class=undefined) {
        return __imgui_dock_space(_id, width, height, flags, window_class);
    }

    /// @function FindViewportByID
    /// @param {Real} _id
    /// @context ImGui
    /// @return {ImGuiViewport}
    static FindViewportByID = function(_id) {
        return __imgui_find_viewport_by_id(_id);
    }

    /// @function FindViewportByPlatformHandle
    /// @param {HWND} platform_handle
    /// @context ImGui
    /// @return {ImGuiViewport}
    static FindViewportByPlatformHandle = function(platform_handle) {
        return __imgui_find_viewport_by_platform_handle(platform_handle);
    }

    /// @function DockSpaceOverViewport
    /// @param {Real|Undefined} [dockspace_id=0]
    /// @param {Real} [viewport_id=0]
    /// @param {Enum.ImGuiDockNodeFlags} [flags=ImGuiDockNodeFlags.None]
    /// @param {ImGuiWindowClass} [window_class=undefined]
    /// @context ImGui
    /// @return {Real}
    static DockSpaceOverViewport = function(dockspace_id=0, viewport_id=0, flags=ImGuiDockNodeFlags.None, window_class=undefined) {
        return __imgui_dock_space_over_viewport(dockspace_id, viewport_id, flags, window_class);
    }

    /// @function SetNextWindowDockID
    /// @param {Real} dock_id
    /// @param {Enum.ImGuiCond} [cond=ImGuiCond.None]
    /// @context ImGui
    /// @return {Undefined}
    static SetNextWindowDockID = function(dock_id, cond=ImGuiCond.None) {
        return __imgui_set_next_window_dock_id(dock_id, cond);
    }

    /// @function SetNextWindowClass
    /// @param {ImGuiWindowClass} window_class
    /// @context ImGui
    /// @return {Undefined}
    static SetNextWindowClass = function(window_class) {
        return __imgui_set_next_window_class(window_class);
    }

    /// @function GetWindowDockID
    /// @context ImGui
    /// @return {Real}
    static GetWindowDockID = function() {
        return __imgui_get_window_dock_id();
    }

    /// @function IsWindowDocked
    /// @context ImGui
    /// @return {Bool}
    static IsWindowDocked = function() {
        return __imgui_is_window_docked();
    }

    /// @function DockBuilderDockWindow
    /// @param {String} window_name
    /// @param {Real} node_id
    /// @context ImGui
    /// @return {Undefined}
    static DockBuilderDockWindow = function(window_name, node_id) {
        return __imgui_dockbuilder_dock_window(window_name, node_id);
    }

    /// @function DockBuilderGetNode
    /// @param {Real} node_id
    /// @context ImGui
    /// @return {Pointer}
    static DockBuilderGetNode = function(node_id) {
        return __imgui_dockbuilder_get_node(node_id);
    }

    /// @function DockBuilderGetCentralNode
    /// @param {Real} node_id
    /// @context ImGui
    /// @return {Pointer}
    static DockBuilderGetCentralNode = function(node_id) {
        return __imgui_dockbuilder_get_central_node(node_id);
    }

    /// @function DockBuilderAddNode
    /// @param {Real} [node_id=0]
    /// @param {Enum.ImGuiDockNodeFlags} [flags=ImGuiDockNodeFlags.None]
    /// @context ImGui
    /// @return {Real}
    static DockBuilderAddNode = function(node_id=0, flags=ImGuiDockNodeFlags.None) {
        return __imgui_dockbuilder_add_node(node_id, flags);
    }

    /// @function DockBuilderRemoveNode
    /// @param {Real} node_id
    /// @context ImGui
    /// @return {Undefined}
    static DockBuilderRemoveNode = function(node_id) {
        return __imgui_dockbuilder_remove_node(node_id);
    }

    /// @function DockBuilderRemoveNodeDockedWindows
    /// @param {Real} node_id
    /// @param {Bool} [clear_settings_refs=true]
    /// @context ImGui
    /// @return {Undefined}
    static DockBuilderRemoveNodeDockedWindows = function(node_id, clear_settings_refs=true) {
        return __imgui_dockbuilder_remove_node_docked_windows(node_id, clear_settings_refs);
    }

    /// @function DockBuilderRemoveNodeChildNodes
    /// @param {Real} node_id
    /// @context ImGui
    /// @return {Undefined}
    static DockBuilderRemoveNodeChildNodes = function(node_id) {
        return __imgui_dockbuilder_remove_node_child_nodes(node_id);
    }

    /// @function DockBuilderSetNodePos
    /// @param {Real} node_id
    /// @param {Real} _x
    /// @param {Real} _y
    /// @context ImGui
    /// @return {Undefined}
    static DockBuilderSetNodePos = function(node_id, _x, _y) {
        return __imgui_dockbuilder_set_node_pos(node_id, _x, _y);
    }

    /// @function DockBuilderSetNodeSize
    /// @param {Real} node_id
    /// @param {Real} width
    /// @param {Real} height
    /// @context ImGui
    /// @return {Undefined}
    static DockBuilderSetNodeSize = function(node_id, width, height) {
        return __imgui_dockbuilder_set_node_size(node_id, width, height);
    }

    /// @function DockBuilderSplitNode
    /// @param {Real} node_id
    /// @param {Real} split_dir
    /// @param {Real} size_ratio_for_node_at_dir
    /// @context ImGui
    /// @return {Array<ImGuiID>}
    static DockBuilderSplitNode = function(node_id, split_dir, size_ratio_for_node_at_dir) {
        return __imgui_dockbuilder_split_node(node_id, split_dir, size_ratio_for_node_at_dir);
    }

    /// @function DockBuilderCopyDockSpace
    /// @param {Real} src_dockspace_id
    /// @param {Real} dst_dockspace_id
    /// @param {Any} window_remap_pairs
    /// @context ImGui
    /// @return {Undefined}
    static DockBuilderCopyDockSpace = function(src_dockspace_id, dst_dockspace_id, window_remap_pairs) {
        return __imgui_dockbuilder_copy_dock_space(src_dockspace_id, dst_dockspace_id, window_remap_pairs);
    }

    /// @function DockBuilderCopyNode
    /// @param {Real} src_node_id
    /// @param {Real} dst_node_id
    /// @param {Any} node_remap_pairs
    /// @context ImGui
    /// @return {Unknown<unset>}
    static DockBuilderCopyNode = function(src_node_id, dst_node_id, node_remap_pairs) {
        return __imgui_dockbuilder_copy_node(src_node_id, dst_node_id, node_remap_pairs);
    }

    /// @function DockBuilderCopyWindowSettings
    /// @param {String} src_name
    /// @param {String} dst_name
    /// @context ImGui
    /// @return {Undefined}
    static DockBuilderCopyWindowSettings = function(src_name, dst_name) {
        return __imgui_dockbuilder_copy_window_settings(src_name, dst_name);
    }

    /// @function DockBuilderFinish
    /// @param {Real} node_id
    /// @context ImGui
    /// @return {Undefined}
    static DockBuilderFinish = function(node_id) {
        return __imgui_dockbuilder_finish(node_id);
    }

    /// @function DragFloat
    /// @param {String} label
    /// @param {Real} v
    /// @param {Real} [v_speed=1]
    /// @param {Real} [v_min=0]
    /// @param {Real} [v_max=0]
    /// @param {String} [format=%.3f]
    /// @param {Enum.ImGuiSliderFlags} [flags=ImGuiSliderFlags.None]
    /// @context ImGui
    /// @return {Real}
    static DragFloat = function(label, v, v_speed=1, v_min=0, v_max=0, format="%.3f", flags=ImGuiSliderFlags.None) {
        return __imgui_drag_float(label, v, v_speed, v_min, v_max, format, flags);
    }

    /// @function DragFloat2
    /// @param {String} label
    /// @param {Array<Real>} v
    /// @param {Real} [v_speed=1]
    /// @param {Real} [v_min=0]
    /// @param {Real} [v_max=0]
    /// @param {String} [format=%.3f]
    /// @param {Enum.ImGuiSliderFlags} [flags=ImGuiSliderFlags.None]
    /// @context ImGui
    /// @return {Bool}
    static DragFloat2 = function(label, v, v_speed=1, v_min=0, v_max=0, format="%.3f", flags=ImGuiSliderFlags.None) {
        return __imgui_drag_float2(label, v, v_speed, v_min, v_max, format, flags);
    }

    /// @function DragFloat3
    /// @param {String} label
    /// @param {Array<Real>} v
    /// @param {Real} [v_speed=1]
    /// @param {Real} [v_min=0]
    /// @param {Real} [v_max=0]
    /// @param {String} [format=%.3f]
    /// @param {Enum.ImGuiSliderFlags} [flags=ImGuiSliderFlags.None]
    /// @context ImGui
    /// @return {Bool}
    static DragFloat3 = function(label, v, v_speed=1, v_min=0, v_max=0, format="%.3f", flags=ImGuiSliderFlags.None) {
        return __imgui_drag_float3(label, v, v_speed, v_min, v_max, format, flags);
    }

    /// @function DragFloat4
    /// @param {String} label
    /// @param {Array<Real>} v
    /// @param {Real} [v_speed=1]
    /// @param {Real} [v_min=0]
    /// @param {Real} [v_max=0]
    /// @param {String} [format=%.3f]
    /// @param {Enum.ImGuiSliderFlags} [flags=ImGuiSliderFlags.None]
    /// @context ImGui
    /// @return {Bool}
    static DragFloat4 = function(label, v, v_speed=1, v_min=0, v_max=0, format="%.3f", flags=ImGuiSliderFlags.None) {
        return __imgui_drag_float4(label, v, v_speed, v_min, v_max, format, flags);
    }

    /// @function DragFloatN
    /// @param {String} label
    /// @param {Array<Real>} v
    /// @param {Real} [v_speed=1]
    /// @param {Real} [v_min=0]
    /// @param {Real} [v_max=0]
    /// @param {String} [format=%.3f]
    /// @param {Enum.ImGuiSliderFlags} [flags=ImGuiSliderFlags.None]
    /// @context ImGui
    /// @return {Bool}
    static DragFloatN = function(label, v, v_speed=1, v_min=0, v_max=0, format="%.3f", flags=ImGuiSliderFlags.None) {
        return __imgui_drag_floatn(label, v, v_speed, v_min, v_max, format, flags, array_length(v));
    }

    /// @function DragFloatRange2
    /// @param {String} label
    /// @param {Array<Real>} v
    /// @param {Real} [v_speed=1]
    /// @param {Real} [v_min=0]
    /// @param {Real} [v_max=0]
    /// @param {String} [format_min=%.3f]
    /// @param {String} [format_max=%.3f]
    /// @param {Enum.ImGuiSliderFlags} [flags=ImGuiSliderFlags.None]
    /// @context ImGui
    /// @return {Bool}
    static DragFloatRange2 = function(label, v, v_speed=1, v_min=0, v_max=0, format_min="%.3f", format_max="%.3f", flags=ImGuiSliderFlags.None) {
        return __imgui_drag_float_range2(label, v, v_speed, v_min, v_max, format_min, format_max, flags);
    }

    /// @function DragInt
    /// @param {String} label
    /// @param {Real} v
    /// @param {Real} [v_speed=1]
    /// @param {Real} [v_min=0]
    /// @param {Real} [v_max=0]
    /// @param {String} [format=%d]
    /// @param {Enum.ImGuiSliderFlags} [flags=ImGuiSliderFlags.None]
    /// @context ImGui
    /// @return {Real}
    static DragInt = function(label, v, v_speed=1, v_min=0, v_max=0, format="%d", flags=ImGuiSliderFlags.None) {
        return __imgui_drag_int(label, v, v_speed, v_min, v_max, format, flags);
    }

    /// @function DragInt2
    /// @param {String} label
    /// @param {Array<Real>} v
    /// @param {Real} [v_speed=1]
    /// @param {Real} [v_min=0]
    /// @param {Real} [v_max=0]
    /// @param {String} [format=%d]
    /// @param {Enum.ImGuiSliderFlags} [flags=ImGuiSliderFlags.None]
    /// @context ImGui
    /// @return {Bool}
    static DragInt2 = function(label, v, v_speed=1, v_min=0, v_max=0, format="%d", flags=ImGuiSliderFlags.None) {
        return __imgui_drag_int2(label, v, v_speed, v_min, v_max, format, flags);
    }

    /// @function DragInt3
    /// @param {String} label
    /// @param {Array<Real>} v
    /// @param {Real} [v_speed=1]
    /// @param {Real} [v_min=0]
    /// @param {Real} [v_max=0]
    /// @param {String} [format=%d]
    /// @param {Enum.ImGuiSliderFlags} [flags=ImGuiSliderFlags.None]
    /// @context ImGui
    /// @return {Bool}
    static DragInt3 = function(label, v, v_speed=1, v_min=0, v_max=0, format="%d", flags=ImGuiSliderFlags.None) {
        return __imgui_drag_int3(label, v, v_speed, v_min, v_max, format, flags);
    }

    /// @function DragInt4
    /// @param {String} label
    /// @param {Array<Real>} v
    /// @param {Real} [v_speed=1]
    /// @param {Real} [v_min=0]
    /// @param {Real} [v_max=0]
    /// @param {String} [format=%d]
    /// @param {Enum.ImGuiSliderFlags} [flags=ImGuiSliderFlags.None]
    /// @context ImGui
    /// @return {Bool}
    static DragInt4 = function(label, v, v_speed=1, v_min=0, v_max=0, format="%d", flags=ImGuiSliderFlags.None) {
        return __imgui_drag_int4(label, v, v_speed, v_min, v_max, format, flags);
    }

    /// @function DragIntN
    /// @param {String} label
    /// @param {Array<Real>} v
    /// @param {Real} [v_speed=1]
    /// @param {Real} [v_min=0]
    /// @param {Real} [v_max=0]
    /// @param {String} [format=%d]
    /// @param {Enum.ImGuiSliderFlags} [flags=ImGuiSliderFlags.None]
    /// @context ImGui
    /// @return {Bool}
    static DragIntN = function(label, v, v_speed=1, v_min=0, v_max=0, format="%d", flags=ImGuiSliderFlags.None) {
        return __imgui_drag_intn(label, v, v_speed, v_min, v_max, format, flags, array_length(v));
    }

    /// @function DragIntRange2
    /// @param {String} label
    /// @param {Array<Real>} v
    /// @param {Real} v_current_max
    /// @param {Real} [v_speed=1]
    /// @param {Real} [v_min=0]
    /// @param {Real} [v_max=0]
    /// @param {String} [format_max=%d]
    /// @param {Enum.ImGuiSliderFlags} [flags=ImGuiSliderFlags.None]
    /// @context ImGui
    /// @return {Bool}
    static DragIntRange2 = function(label, v, v_current_max, v_speed=1, v_min=0, v_max=0, format_max="%d", flags=ImGuiSliderFlags.None) {
        return __imgui_drag_int_range2(label, v, v_current_max, v_speed, v_min, v_max, format_max, flags);
    }

    /// @function GetBackgroundDrawList
    /// @param {Pointer} [viewport=undefined]
    /// @context ImGui
    /// @return {Pointer}
    static GetBackgroundDrawList = function(viewport=undefined) {
        return __imgui_get_background_drawlist(viewport);
    }

    /// @function GetForegroundDrawList
    /// @param {Pointer} [viewport=undefined]
    /// @context ImGui
    /// @return {Pointer}
    static GetForegroundDrawList = function(viewport=undefined) {
        return __imgui_get_foreground_drawlist(viewport);
    }

    /// @function GetWindowDrawList
    /// @context ImGui
    /// @return {Pointer}
    static GetWindowDrawList = function() {
        return __imgui_get_window_drawlist();
    }

    /// @function DrawListAddLine
    /// @param {Pointer} list
    /// @param {Real} x1
    /// @param {Real} y1
    /// @param {Real} x2
    /// @param {Real} y2
    /// @param {Real} col
    /// @param {Real} [thickness=1]
    /// @context ImGui
    /// @return {Undefined}
    static DrawListAddLine = function(list, x1, y1, x2, y2, col, thickness=1) {
        return __imgui_drawlist_add_line(list, x1, y1, x2, y2, col, thickness);
    }

    /// @function DrawListAddRect
    /// @param {Pointer} list
    /// @param {Real} x1
    /// @param {Real} y1
    /// @param {Real} x2
    /// @param {Real} y2
    /// @param {Real} col
    /// @param {Real} [rounding=0]
    /// @param {Real} [flags=ImGuiImDrawFlags.None]
    /// @param {Real} [thickness=1]
    /// @context ImGui
    /// @return {Undefined}
    static DrawListAddRect = function(list, x1, y1, x2, y2, col, rounding=0, flags=ImGuiImDrawFlags.None, thickness=1) {
        return __imgui_drawlist_add_rect(list, x1, y1, x2, y2, col, rounding, flags, thickness);
    }

    /// @function DrawListAddRectFilled
    /// @param {Pointer} list
    /// @param {Real} x1
    /// @param {Real} y1
    /// @param {Real} x2
    /// @param {Real} y2
    /// @param {Real} col
    /// @param {Real} [rounding=0]
    /// @param {Real} [flags=ImGuiImDrawFlags.None]
    /// @context ImGui
    /// @return {Undefined}
    static DrawListAddRectFilled = function(list, x1, y1, x2, y2, col, rounding=0, flags=ImGuiImDrawFlags.None) {
        return __imgui_drawlist_add_rect_filled(list, x1, y1, x2, y2, col, rounding, flags);
    }

    /// @function DrawListAddRectFilledMultiColor
    /// @param {Pointer} list
    /// @param {Real} x1
    /// @param {Real} y1
    /// @param {Real} x2
    /// @param {Real} y2
    /// @param {Real} col1
    /// @param {Real} col2
    /// @param {Real} col3
    /// @param {Real} col4
    /// @context ImGui
    /// @return {Undefined}
    static DrawListAddRectFilledMultiColor = function(list, x1, y1, x2, y2, col1, col2, col3, col4) {
        return __imgui_drawlist_add_rect_filled_multicolor(list, x1, y1, x2, y2, col1, col2, col3, col4);
    }

    /// @function DrawListAddQuad
    /// @param {Pointer} list
    /// @param {Real} x1
    /// @param {Real} y1
    /// @param {Real} x2
    /// @param {Real} y2
    /// @param {Real} x3
    /// @param {Real} y3
    /// @param {Real} x4
    /// @param {Real} y4
    /// @param {Real} col
    /// @param {Real} [thickness=1]
    /// @context ImGui
    /// @return {Undefined}
    static DrawListAddQuad = function(list, x1, y1, x2, y2, x3, y3, x4, y4, col, thickness=1) {
        return __imgui_drawlist_add_quad(list, x1, y1, x2, y2, x3, y3, x4, y4, col, thickness);
    }

    /// @function DrawListAddQuadFilled
    /// @param {Pointer} list
    /// @param {Real} x1
    /// @param {Real} y1
    /// @param {Real} x2
    /// @param {Real} y2
    /// @param {Real} x3
    /// @param {Real} y3
    /// @param {Real} x4
    /// @param {Real} y4
    /// @param {Real} col
    /// @context ImGui
    /// @return {Undefined}
    static DrawListAddQuadFilled = function(list, x1, y1, x2, y2, x3, y3, x4, y4, col) {
        return __imgui_drawlist_add_quad_filled(list, x1, y1, x2, y2, x3, y3, x4, y4, col);
    }

    /// @function DrawListAddTriangle
    /// @param {Pointer} list
    /// @param {Real} x1
    /// @param {Real} y1
    /// @param {Real} x2
    /// @param {Real} y2
    /// @param {Real} x3
    /// @param {Real} y3
    /// @param {Real} col
    /// @param {Real} [thickness=1]
    /// @context ImGui
    /// @return {Undefined}
    static DrawListAddTriangle = function(list, x1, y1, x2, y2, x3, y3, col, thickness=1) {
        return __imgui_drawlist_add_triangle(list, x1, y1, x2, y2, x3, y3, col, thickness);
    }

    /// @function DrawListAddTriangleFilled
    /// @param {Pointer} list
    /// @param {Real} x1
    /// @param {Real} y1
    /// @param {Real} x2
    /// @param {Real} y2
    /// @param {Real} x3
    /// @param {Real} y3
    /// @param {Real} col
    /// @context ImGui
    /// @return {Undefined}
    static DrawListAddTriangleFilled = function(list, x1, y1, x2, y2, x3, y3, col) {
        return __imgui_drawlist_add_triangle_filled(list, x1, y1, x2, y2, x3, y3, col);
    }

    /// @function DrawListAddCircle
    /// @param {Pointer} list
    /// @param {Real} _x
    /// @param {Real} _y
    /// @param {Real} radius
    /// @param {Real} col
    /// @param {Real} [num_segments=0]
    /// @param {Real} [thickness=1]
    /// @context ImGui
    /// @return {Undefined}
    static DrawListAddCircle = function(list, _x, _y, radius, col, num_segments=0, thickness=1) {
        return __imgui_drawlist_add_circle(list, _x, _y, radius, col, num_segments, thickness);
    }

    /// @function DrawListAddCircleFilled
    /// @param {Pointer} list
    /// @param {Real} _x
    /// @param {Real} _y
    /// @param {Real} radius
    /// @param {Real} col
    /// @param {Real} [num_segments=0]
    /// @context ImGui
    /// @return {Undefined}
    static DrawListAddCircleFilled = function(list, _x, _y, radius, col, num_segments=0) {
        return __imgui_drawlist_add_circle_filled(list, _x, _y, radius, col, num_segments);
    }

    /// @function DrawListAddNgon
    /// @param {Pointer} list
    /// @param {Real} _x
    /// @param {Real} _y
    /// @param {Real} radius
    /// @param {Real} col
    /// @param {Real} [num_segments=0]
    /// @param {Real} [thickness=1]
    /// @context ImGui
    /// @return {Undefined}
    static DrawListAddNgon = function(list, _x, _y, radius, col, num_segments=0, thickness=1) {
        return __imgui_drawlist_add_ngon(list, _x, _y, radius, col, num_segments, thickness);
    }

    /// @function DrawListAddNgonFilled
    /// @param {Pointer} list
    /// @param {Real} _x
    /// @param {Real} _y
    /// @param {Real} radius
    /// @param {Real} col
    /// @param {Real} [num_segments=0]
    /// @context ImGui
    /// @return {Undefined}
    static DrawListAddNgonFilled = function(list, _x, _y, radius, col, num_segments=0) {
        return __imgui_drawlist_add_ngon_filled(list, _x, _y, radius, col, num_segments);
    }

    /// @function DrawListAddText
    /// @param {Pointer} list
    /// @param {Real} _x
    /// @param {Real} _y
    /// @param {String} text
    /// @param {Real} col
    /// @context ImGui
    /// @return {Undefined}
    static DrawListAddText = function(list, _x, _y, text, col) {
        return __imgui_drawlist_add_text(list, _x, _y, text, col);
    }

    /// @function DrawListAddTextFont
    /// @param {Pointer} list
    /// @param {Real} _x
    /// @param {Real} _y
    /// @param {String} text
    /// @param {Real} col
    /// @param {Pointer} font
    /// @param {Real} font_size
    /// @param {Real} [wrap_width=0]
    /// @context ImGui
    /// @return {Undefined}
    static DrawListAddTextFont = function(list, _x, _y, text, col, font, font_size, wrap_width=0) {
        return __imgui_drawlist_add_text_font(list, _x, _y, text, col, font, font_size, wrap_width);
    }

    /// @function DrawListAddPolyline
    /// @param {Pointer} list
    /// @param {Array<Real>} positions
    /// @param {Real} col
    /// @param {Enum.ImDrawFlags} flags
    /// @param {Real} thickness
    /// @context ImGui
    /// @return {Undefined}
    static DrawListAddPolyline = function(list, positions, col, flags, thickness) {
        return __imgui_drawlist_add_polyline(list, positions, col, flags, thickness, array_length(positions));
    }

    /// @function DrawListAddConvexPolyFilled
    /// @param {Pointer} list
    /// @param {Array<Real>} positions
    /// @param {Real} col
    /// @context ImGui
    /// @return {Undefined}
    static DrawListAddConvexPolyFilled = function(list, positions, col) {
        return __imgui_drawlist_add_convex_poly_filled(list, positions, col, array_length(positions));
    }

    /// @function DrawListAddBezierCubic
    /// @param {Pointer} list
    /// @param {Real} x1
    /// @param {Real} y1
    /// @param {Real} x2
    /// @param {Real} y2
    /// @param {Real} x3
    /// @param {Real} y3
    /// @param {Real} x4
    /// @param {Real} y4
    /// @param {Real} col
    /// @param {Real} thickness
    /// @param {Real} [num_segments=0]
    /// @context ImGui
    /// @return {Undefined}
    static DrawListAddBezierCubic = function(list, x1, y1, x2, y2, x3, y3, x4, y4, col, thickness, num_segments=0) {
        return __imgui_drawlist_add_bezier_cubic(list, x1, y1, x2, y2, x3, y3, x4, y4, col, thickness, num_segments);
    }

    /// @function DrawListAddBezierQuadratic
    /// @param {Pointer} list
    /// @param {Real} x1
    /// @param {Real} y1
    /// @param {Real} x2
    /// @param {Real} y2
    /// @param {Real} x3
    /// @param {Real} y3
    /// @param {Real} col
    /// @param {Real} thickness
    /// @param {Real} [num_segments=0]
    /// @context ImGui
    /// @return {Undefined}
    static DrawListAddBezierQuadratic = function(list, x1, y1, x2, y2, x3, y3, col, thickness, num_segments=0) {
        return __imgui_drawlist_add_bezier_quadratic(list, x1, y1, x2, y2, x3, y3, col, thickness, num_segments);
    }

    /// @function DrawListPathFillConvex
    /// @param {Pointer} list
    /// @param {Real} col
    /// @context ImGui
    /// @return {Undefined}
    static DrawListPathFillConvex = function(list, col) {
        return __imgui_drawlist_path_fill_convex(list, col);
    }

    /// @function DrawListPathStroke
    /// @param {Pointer} list
    /// @param {Real} col
    /// @param {Real} [flags=ImGuiImDrawFlags.None]
    /// @param {Real} [thickness=1]
    /// @context ImGui
    /// @return {Undefined}
    static DrawListPathStroke = function(list, col, flags=ImGuiImDrawFlags.None, thickness=1) {
        return __imgui_drawlist_path_stroke(list, col, flags, thickness);
    }

    /// @function DrawListPathClear
    /// @param {Pointer} list
    /// @context ImGui
    /// @return {Undefined}
    static DrawListPathClear = function(list) {
        return __imgui_drawlist_path_clear(list);
    }

    /// @function DrawListPathLineTo
    /// @param {Pointer} list
    /// @param {Real} _x
    /// @param {Real} _y
    /// @context ImGui
    /// @return {Undefined}
    static DrawListPathLineTo = function(list, _x, _y) {
        return __imgui_drawlist_path_line_to(list, _x, _y);
    }

    /// @function DrawListPathLineToMergeDuplicate
    /// @param {Pointer} list
    /// @param {Real} _x
    /// @param {Real} _y
    /// @context ImGui
    /// @return {Undefined}
    static DrawListPathLineToMergeDuplicate = function(list, _x, _y) {
        return __imgui_drawlist_path_line_to_merge_duplicate(list, _x, _y);
    }

    /// @function DrawListPathArcTo
    /// @param {Pointer} list
    /// @param {Real} _x
    /// @param {Real} _y
    /// @param {Real} radius
    /// @param {Real} a_min
    /// @param {Real} a_max
    /// @param {Real} [num_segments=0]
    /// @context ImGui
    /// @return {Undefined}
    static DrawListPathArcTo = function(list, _x, _y, radius, a_min, a_max, num_segments=0) {
        return __imgui_drawlist_path_arc_to(list, _x, _y, radius, a_min, a_max, num_segments);
    }

    /// @function DrawListPathArcToFast
    /// @param {Pointer} list
    /// @param {Real} _x
    /// @param {Real} _y
    /// @param {Real} radius
    /// @param {Real} a_min_of_12
    /// @param {Real} a_max_of_12
    /// @context ImGui
    /// @return {Undefined}
    static DrawListPathArcToFast = function(list, _x, _y, radius, a_min_of_12, a_max_of_12) {
        return __imgui_drawlist_path_arc_to_fast(list, _x, _y, radius, a_min_of_12, a_max_of_12);
    }

    /// @function DrawListPathBezierCubicCurveTo
    /// @param {Pointer} list
    /// @param {Real} x2
    /// @param {Real} y2
    /// @param {Real} x3
    /// @param {Real} y3
    /// @param {Real} x4
    /// @param {Real} y4
    /// @param {Real} [num_segments=0]
    /// @context ImGui
    /// @return {Undefined}
    static DrawListPathBezierCubicCurveTo = function(list, x2, y2, x3, y3, x4, y4, num_segments=0) {
        return __imgui_drawlist_path_bezier_cubic_curve_to(list, x2, y2, x3, y3, x4, y4, num_segments);
    }

    /// @function DrawListPathBezierQuadraticCurveTo
    /// @param {Pointer} list
    /// @param {Real} x2
    /// @param {Real} y2
    /// @param {Real} x3
    /// @param {Real} y3
    /// @param {Real} [num_segments=0]
    /// @context ImGui
    /// @return {Undefined}
    static DrawListPathBezierQuadraticCurveTo = function(list, x2, y2, x3, y3, num_segments=0) {
        return __imgui_drawlist_path_bezier_quadratic_curve_to(list, x2, y2, x3, y3, num_segments);
    }

    /// @function DrawListPathRect
    /// @param {Pointer} list
    /// @param {Real} x1
    /// @param {Real} y1
    /// @param {Real} x2
    /// @param {Real} y2
    /// @param {Real} [rounding=0]
    /// @param {Real} [flags=ImGuiImDrawFlags.None]
    /// @context ImGui
    /// @return {Undefined}
    static DrawListPathRect = function(list, x1, y1, x2, y2, rounding=0, flags=ImGuiImDrawFlags.None) {
        return __imgui_drawlist_path_rect(list, x1, y1, x2, y2, rounding, flags);
    }

    /// @function DrawListAddImage
    /// @param {Pointer} list
    /// @param {Real} sprite
    /// @param {Real} subimg
    /// @param {Real} x1
    /// @param {Real} y1
    /// @param {Real} x2
    /// @param {Real} y2
    /// @param {Real} [col=c_white]
    /// @context ImGui
    /// @return {Undefined}
    static DrawListAddImage = function(list, sprite, subimg, x1, y1, x2, y2, col=c_white) {
        if (!(ImGui.__GFlags & ImGuiGFlags.RENDERER_GM)) texture_set_stage(0, sprite_get_texture(sprite, subimg));
        return __imgui_drawlist_add_image(list, sprite, subimg, x1, y1, x2, y2, col, sprite_get_uvs(sprite, subimg));
    }

    /// @function DrawListAddImageRounded
    /// @param {Pointer} list
    /// @param {Real} sprite
    /// @param {Real} subimg
    /// @param {Real} x1
    /// @param {Real} y1
    /// @param {Real} x2
    /// @param {Real} y2
    /// @param {Real} col
    /// @param {Real} rounding
    /// @param {Real} flags
    /// @context ImGui
    /// @return {Undefined}
    static DrawListAddImageRounded = function(list, sprite, subimg, x1, y1, x2, y2, col, rounding, flags) {
        if (!(ImGui.__GFlags & ImGuiGFlags.RENDERER_GM)) texture_set_stage(0, sprite_get_texture(sprite, subimg));
        return __imgui_drawlist_add_image_rounded(list, sprite, subimg, x1, y1, x2, y2, col, rounding, flags, sprite_get_uvs(sprite, subimg));
    }

    /// @function DrawListPushClipRect
    /// @param {Pointer} list
    /// @param {Real} clip_min_x
    /// @param {Real} clip_min_y
    /// @param {Real} clip_max_x
    /// @param {Real} clip_max_y
    /// @param {Bool} intersect_with_current_clip_rect
    /// @context ImGui
    /// @return {Undefined}
    static DrawListPushClipRect = function(list, clip_min_x, clip_min_y, clip_max_x, clip_max_y, intersect_with_current_clip_rect) {
        return __imgui_drawlist_push_clip_rect(list, clip_min_x, clip_min_y, clip_max_x, clip_max_y, intersect_with_current_clip_rect);
    }

    /// @function DrawlistPushClipRectFullscreen
    /// @param {Pointer} list
    /// @context ImGui
    /// @return {Undefined}
    static DrawlistPushClipRectFullscreen = function(list) {
        return __imgui_drawlist_push_clip_rect_fullscreen(list);
    }

    /// @function DrawListPopClipRect
    /// @param {Pointer} list
    /// @context ImGui
    /// @return {Undefined}
    static DrawListPopClipRect = function(list) {
        return __imgui_drawlist_pop_clip_rect(list);
    }

    /// @function DrawListPushTextureID
    /// @param {Pointer} list
    /// @param {Real} sprite
    /// @param {Real} subimg
    /// @context ImGui
    /// @return {Undefined}
    static DrawListPushTextureID = function(list, sprite, subimg) {
        if (!(ImGui.__GFlags & ImGuiGFlags.RENDERER_GM)) texture_set_stage(0, sprite_get_texture(sprite, subimg));
        return __imgui_drawlist_push_textureid(list, sprite, subimg);
    }

    /// @function DrawListPopTextureID
    /// @param {Pointer} list
    /// @context ImGui
    /// @return {Undefined}
    static DrawListPopTextureID = function(list) {
        return __imgui_drawlist_pop_textureid(list);
    }

    /// @function DrawListFlagsGet
    /// @param {Pointer} list
    /// @context ImGui
    /// @return {Real}
    static DrawListFlagsGet = function(list) {
        return __imgui_drawlist_flags_get(list);
    }

    /// @function DrawListFlagsSet
    /// @param {Pointer} list
    /// @param {Real} flags
    /// @context ImGui
    /// @return {Undefined}
    static DrawListFlagsSet = function(list, flags) {
        return __imgui_drawlist_flags_set(list, flags);
    }

    /// @function DrawListFlagToggle
    /// @param {Pointer} list
    /// @param {Real} flag
    /// @context ImGui
    /// @return {Bool}
    static DrawListFlagToggle = function(list, flag) {
        return __imgui_drawlist_flag_toggle(list, flag);
    }

    /// @function MemoryEditorShowWindow
    /// @param {String} title
    /// @param {Real} buffer
    /// @param {Real} [offset=0]
    /// @param {Real} [size=buffer_get_size⌊buffer⌉]
    /// @context ImGui
    /// @return {Undefined}
    static MemoryEditorShowWindow = function(title, buffer, offset=0, size=buffer_get_size(buffer)) {
        return __imgui_memory_editor_window(title, buffer, offset, size);
    }

    /// @function MemoryEditorDrawContents
    /// @param {Real} buffer
    /// @param {Real} [offset=0]
    /// @param {Real} [size=buffer_get_size⌊buffer⌉]
    /// @context ImGui
    /// @return {Undefined}
    static MemoryEditorDrawContents = function(buffer, offset=0, size=buffer_get_size(buffer)) {
        return __imgui_memory_editor_contents(buffer, offset, size);
    }

    /// @function GetFont
    /// @context ImGui
    /// @return {Pointer}
    static GetFont = function() {
        return __imgui_get_font();
    }

    /// @function PushFont
    /// @param {Any} [_ptr=undefined]
    /// @context ImGui
    /// @return {Undefined}
    static PushFont = function(_ptr=undefined) {
        return __imgui_push_font(_ptr);
    }

    /// @function PopFont
    /// @context ImGui
    /// @return {Undefined}
    static PopFont = function() {
        return __imgui_pop_font();
    }

    /// @function AddFontFromFile
    /// @param {String} file
    /// @param {Real} size
    /// @context ImGui
    /// @return {Pointer|Undefined}
    static AddFontFromFile = function(file, size) {
        return __imgui_add_font_from_file(file, size);
    }

    /// @function AddFontDefault
    /// @context ImGui
    /// @return {Unknown<unset>}
    static AddFontDefault = function() {
        return __imgui_add_font_default();
    }

    /// @function GetFontSize
    /// @context ImGui
    /// @return {Real}
    static GetFontSize = function() {
        return __imgui_get_font_size();
    }

    /// @function IsKeyDown
    /// @param {ImGuiKey} key
    /// @param {ImGuiID} [owner_id=undefined]
    /// @context ImGui
    /// @return {Bool}
    static IsKeyDown = function(key, owner_id=undefined) {
        return __imgui_is_key_down(key, owner_id);
    }

    /// @function IsKeyPressed
    /// @param {ImGuiKey} key
    /// @param {Bool} [_repeat=undefined]
    /// @context ImGui
    /// @return {Bool}
    static IsKeyPressed = function(key, _repeat=undefined) {
        return __imgui_is_key_pressed(key, _repeat);
    }

    /// @function IsKeyReleased
    /// @param {ImGuiKey} key
    /// @param {ImGuiID} [owner_id=undefined]
    /// @context ImGui
    /// @return {Bool}
    static IsKeyReleased = function(key, owner_id=undefined) {
        return __imgui_is_key_released(key, owner_id);
    }

    /// @function IsKeyChordPressed
    /// @param {ImGuiKeyChord} key_chord
    /// @param {ImGuiInputFlags} [flags=undefined]
    /// @param {ImGuiID} [owner_id=undefined]
    /// @context ImGui
    /// @return {Bool}
    static IsKeyChordPressed = function(key_chord, flags=undefined, owner_id=undefined) {
        return __imgui_is_key_chord_pressed(key_chord, flags, owner_id);
    }

    /// @function GetKeyPressedAmount
    /// @param {ImGuiKey} key
    /// @param {Float} repeat_delay
    /// @param {Float} rate
    /// @context ImGui
    /// @return {Real}
    static GetKeyPressedAmount = function(key, repeat_delay, rate) {
        return __imgui_get_key_pressed_amount(key, repeat_delay, rate);
    }

    /// @function GetKeyName
    /// @param {ImGuiKey} key
    /// @context ImGui
    /// @return {String}
    static GetKeyName = function(key) {
        return __imgui_get_key_name(key);
    }

    /// @function GetKeyChordName
    /// @param {ImGuiKeyChord} key_chord
    /// @context ImGui
    /// @return {String}
    static GetKeyChordName = function(key_chord) {
        return __imgui_get_key_chord_name(key_chord);
    }

    /// @function IsMouseDown
    /// @param {ImGuiMouseButton} button
    /// @param {ImGuiID} [owner_id=undefined]
    /// @context ImGui
    /// @return {Bool}
    static IsMouseDown = function(button, owner_id=undefined) {
        return __imgui_is_mouse_down(button, owner_id);
    }

    /// @function IsMouseClicked
    /// @param {ImGuiMouseButton} button
    /// @param {Bool|ImGuiInputFlags} [repeat_or_flags=undefined]
    /// @param {ImGuiID} [owner_id=undefined]
    /// @context ImGui
    /// @return {Bool}
    static IsMouseClicked = function(button, repeat_or_flags=undefined, owner_id=undefined) {
        return __imgui_is_mouse_clicked(button, repeat_or_flags, owner_id);
    }

    /// @function IsMouseReleased
    /// @param {ImGuiMouseButton} button
    /// @param {ImGuiID} [owner_id=undefined]
    /// @context ImGui
    /// @return {Bool}
    static IsMouseReleased = function(button, owner_id=undefined) {
        return __imgui_is_mouse_released(button, owner_id);
    }

    /// @function IsMouseDoubleClicked
    /// @param {ImGuiMouseButton} button
    /// @param {ImGuiID} [owner_id=undefined]
    /// @context ImGui
    /// @return {Bool}
    static IsMouseDoubleClicked = function(button, owner_id=undefined) {
        return __imgui_is_mouse_double_clicked(button, owner_id);
    }

    /// @function GetMouseClickedCount
    /// @param {ImGuiMouseButton} button
    /// @context ImGui
    /// @return {Real}
    static GetMouseClickedCount = function(button) {
        return __imgui_get_mouse_clicked_count(button);
    }

    /// @function IsMouseHoveringRect
    /// @param {Real} min_x
    /// @param {Real} min_y
    /// @param {Real} max_x
    /// @param {Real} max_y
    /// @param {Bool} [clip=true]
    /// @context ImGui
    /// @return {Bool}
    static IsMouseHoveringRect = function(min_x, min_y, max_x, max_y, clip=true) {
        return __imgui_is_mouse_hovering_rect(min_x, min_y, max_x, max_y, clip);
    }

    /// @function IsMousePosValid
    /// @param {Real} mouse_x
    /// @param {Real} mouse_y
    /// @context ImGui
    /// @return {Bool}
    static IsMousePosValid = function(mouse_x, mouse_y) {
        return __imgui_is_mouse_pos_valid(mouse_x, mouse_y);
    }

    /// @function IsAnyMouseDown
    /// @context ImGui
    /// @return {Bool}
    static IsAnyMouseDown = function() {
        return __imgui_is_any_mouse_down();
    }

    /// @function IsMouseDragging
    /// @param {ImGuiMouseButton} button
    /// @param {Real} [lock_threshold=-1]
    /// @context ImGui
    /// @return {Bool}
    static IsMouseDragging = function(button, lock_threshold=-1) {
        return __imgui_is_mouse_dragging(button, lock_threshold);
    }

    /// @function GetMousePosX
    /// @context ImGui
    /// @return {Real}
    static GetMousePosX = function() {
        return __imgui_get_mouse_pos_x();
    }

    /// @function GetMousePosY
    /// @context ImGui
    /// @return {Real}
    static GetMousePosY = function() {
        return __imgui_get_mouse_pos_y();
    }

    /// @function GetMousePosOnOpeningCurrentPopupX
    /// @context ImGui
    /// @return {Real}
    static GetMousePosOnOpeningCurrentPopupX = function() {
        return __imgui_get_mouse_pos_on_opening_current_popup_x();
    }

    /// @function GetMousePosOnOpeningCurrentPopupY
    /// @context ImGui
    /// @return {Real}
    static GetMousePosOnOpeningCurrentPopupY = function() {
        return __imgui_get_mouse_pos_on_opening_current_popup_y();
    }

    /// @function GetMouseDragDeltaX
    /// @param {ImGuiMouseButton} button
    /// @param {Real} [lock_threshold=-1]
    /// @context ImGui
    /// @return {Real}
    static GetMouseDragDeltaX = function(button, lock_threshold=-1) {
        return __imgui_get_mouse_drag_delta_x(button, lock_threshold);
    }

    /// @function GetMouseDragDeltaY
    /// @param {ImGuiMouseButton} button
    /// @param {Real} [lock_threshold=-1]
    /// @context ImGui
    /// @return {Real}
    static GetMouseDragDeltaY = function(button, lock_threshold=-1) {
        return __imgui_get_mouse_drag_delta_y(button, lock_threshold);
    }

    /// @function ResetMouseDragDelta
    /// @param {ImGuiMouseButton} button
    /// @context ImGui
    /// @return {Undefined}
    static ResetMouseDragDelta = function(button) {
        return __imgui_reset_mouse_drag_delta(button);
    }

    /// @function Shortcut
    /// @param {ImGuiKeyChord} key_chord
    /// @param {ImGuiInputFlags} flags
    /// @param {ImGuiID} [owner_id=undefined]
    /// @context ImGui
    /// @return {Bool}
    static Shortcut = function(key_chord, flags, owner_id=undefined) {
        return __imgui_shortcut(key_chord, flags, owner_id);
    }

    /// @function SetNextItemShortcut
    /// @param {ImGuiKeyChord} key_chord
    /// @param {ImGuiInputFlags} flags
    /// @context ImGui
    /// @return {Undefined}
    static SetNextItemShortcut = function(key_chord, flags) {
        return __imgui_set_next_item_shortcut(key_chord, flags);
    }

    /// @function SetItemKeyOwner
    /// @param {ImGuiKey} key
    /// @param {ImGuiInputFlags} [flags=undefined]
    /// @context ImGui
    /// @return {Undefined}
    static SetItemKeyOwner = function(key, flags=undefined) {
        return __imgui_set_item_key_owner(key, flags);
    }

    /// @function InputText
    /// @param {String} label
    /// @param {String} val
    /// @param {Enum.ImGuiInputTextFlags} [flags=ImGuiInputTextFlags.None]
    /// @context ImGui
    /// @return {String}
    static InputText = function(label, val, flags=ImGuiInputTextFlags.None) {
        return __imgui_input_text(label, val, flags);
    }

    /// @function InputTextMultiline
    /// @param {String} label
    /// @param {String} val
    /// @param {Real} [width=0]
    /// @param {Real} [height=0]
    /// @param {Enum.ImGuiInputTextFlags} [flags=ImGuiInputTextFlags.None]
    /// @context ImGui
    /// @return {String}
    static InputTextMultiline = function(label, val, width=0, height=0, flags=ImGuiInputTextFlags.None) {
        return __imgui_input_textmultiline(label, val, width, height, flags);
    }

    /// @function InputTextWithHint
    /// @param {String} label
    /// @param {String} hint
    /// @param {String} val
    /// @param {Enum.ImGuiInputTextFlags} [flags=ImGuiInputTextFlags.None]
    /// @context ImGui
    /// @return {String}
    static InputTextWithHint = function(label, hint, val, flags=ImGuiInputTextFlags.None) {
        return __imgui_input_textwithhint(label, hint, val, flags);
    }

    /// @function InputFloat
    /// @param {String} label
    /// @param {Real} v
    /// @param {Real} [step=0.1]
    /// @param {Real} [step_fast=0.25]
    /// @param {String} [format=%.3f]
    /// @param {Enum.ImGuiInputTextFlags} [flags=ImGuiInputTextFlags.None]
    /// @context ImGui
    /// @return {Real}
    static InputFloat = function(label, v, step=0.1, step_fast=0.25, format="%.3f", flags=ImGuiInputTextFlags.None) {
        return __imgui_input_float(label, v, step, step_fast, format, flags);
    }

    /// @function InputFloat2
    /// @param {String} label
    /// @param {Array<Real>} v
    /// @param {Real} [step=0.1]
    /// @param {Real} [step_fast=0.25]
    /// @param {String} [format=%.3f]
    /// @param {Enum.ImGuiInputTextFlags} [flags=ImGuiInputTextFlags.None]
    /// @context ImGui
    /// @return {Bool}
    static InputFloat2 = function(label, v, step=0.1, step_fast=0.25, format="%.3f", flags=ImGuiInputTextFlags.None) {
        return __imgui_input_float2(label, v, step, step_fast, format, flags);
    }

    /// @function InputFloat3
    /// @param {String} label
    /// @param {Array<Real>} v
    /// @param {Real} [step=0.1]
    /// @param {Real} [step_fast=0.25]
    /// @param {String} [format=%.3f]
    /// @param {Enum.ImGuiInputTextFlags} [flags=ImGuiInputTextFlags.None]
    /// @context ImGui
    /// @return {Bool}
    static InputFloat3 = function(label, v, step=0.1, step_fast=0.25, format="%.3f", flags=ImGuiInputTextFlags.None) {
        return __imgui_input_float3(label, v, step, step_fast, format, flags);
    }

    /// @function InputFloat4
    /// @param {String} label
    /// @param {Array<Real>} v
    /// @param {Real} [step=0.1]
    /// @param {Real} [step_fast=0.25]
    /// @param {String} [format=%.3f]
    /// @param {Enum.ImGuiInputTextFlags} [flags=ImGuiInputTextFlags.None]
    /// @context ImGui
    /// @return {Bool}
    static InputFloat4 = function(label, v, step=0.1, step_fast=0.25, format="%.3f", flags=ImGuiInputTextFlags.None) {
        return __imgui_input_float4(label, v, step, step_fast, format, flags);
    }

    /// @function InputFloatN
    /// @param {String} label
    /// @param {Array<Real>} v
    /// @param {Real} len
    /// @param {Real} [step=0.1]
    /// @param {Real} [step_fast=0.25]
    /// @param {String} [format=%.3f]
    /// @context ImGui
    /// @return {Bool}
    static InputFloatN = function(label, v, len, step=0.1, step_fast=0.25, format="%.3f") {
        return __imgui_input_floatn(label, v, len, step, step_fast, format, array_length(v));
    }

    /// @function InputInt
    /// @param {String} label
    /// @param {Real} v
    /// @param {Real} [step=1]
    /// @param {Real} [step_fast=5]
    /// @param {Enum.ImGuiInputTextFlags} [flags=ImGuiInputTextFlags.None]
    /// @context ImGui
    /// @return {Real}
    static InputInt = function(label, v, step=1, step_fast=5, flags=ImGuiInputTextFlags.None) {
        return __imgui_input_int(label, v, step, step_fast, flags);
    }

    /// @function InputInt2
    /// @param {String} label
    /// @param {Array<Real>} v
    /// @param {Enum.ImGuiInputTextFlags} [flags=ImGuiInputTextFlags.None]
    /// @context ImGui
    /// @return {Bool}
    static InputInt2 = function(label, v, flags=ImGuiInputTextFlags.None) {
        return __imgui_input_int2(label, v, flags);
    }

    /// @function InputInt3
    /// @param {String} label
    /// @param {Array<Real>} v
    /// @param {Enum.ImGuiInputTextFlags} [flags=ImGuiInputTextFlags.None]
    /// @context ImGui
    /// @return {Bool}
    static InputInt3 = function(label, v, flags=ImGuiInputTextFlags.None) {
        return __imgui_input_int3(label, v, flags);
    }

    /// @function InputInt4
    /// @param {String} label
    /// @param {Array<Real>} v
    /// @param {Enum.ImGuiInputTextFlags} [flags=ImGuiInputTextFlags.None]
    /// @context ImGui
    /// @return {Bool}
    static InputInt4 = function(label, v, flags=ImGuiInputTextFlags.None) {
        return __imgui_input_int4(label, v, flags);
    }

    /// @function InputIntN
    /// @param {String} label
    /// @param {Array<Real>} v
    /// @param {Enum.ImGuiInputTextFlags} [flags=ImGuiInputTextFlags.None]
    /// @context ImGui
    /// @return {Bool}
    static InputIntN = function(label, v, flags=ImGuiInputTextFlags.None) {
        return __imgui_input_intn(label, v, flags, array_length(v));
    }

    /// @function InputDouble
    /// @param {String} label
    /// @param {Real} v
    /// @param {Real} [step=1]
    /// @param {Real} [step_fast=5]
    /// @param {String} [format=%.6f]
    /// @param {Enum.ImGuiInputTextFlags} [flags=ImGuiInputTextFlags.None]
    /// @context ImGui
    /// @return {Real}
    static InputDouble = function(label, v, step=1, step_fast=5, format="%.6f", flags=ImGuiInputTextFlags.None) {
        return __imgui_input_double(label, v, step, step_fast, format, flags);
    }

    /// @function Spacing
    /// @context ImGui
    /// @return {Undefined}
    static Spacing = function() {
        return __imgui_spacing();
    }

    /// @function Dummy
    /// @param {Real} width
    /// @param {Real} height
    /// @context ImGui
    /// @return {Undefined}
    static Dummy = function(width, height) {
        return __imgui_dummy(width, height);
    }

    /// @function NewLine
    /// @context ImGui
    /// @return {Undefined}
    static NewLine = function() {
        return __imgui_newline();
    }

    /// @function AlignTextToFramePadding
    /// @context ImGui
    /// @return {Undefined}
    static AlignTextToFramePadding = function() {
        return __imgui_align_text_to_frame_padding();
    }

    /// @function Separator
    /// @context ImGui
    /// @return {Undefined}
    static Separator = function() {
        return __imgui_separator();
    }

    /// @function SeparatorText
    /// @param {String} label
    /// @context ImGui
    /// @return {Undefined}
    static SeparatorText = function(label) {
        return __imgui_separator_text(label);
    }

    /// @function Indent
    /// @param {Real} [indent_w=0]
    /// @context ImGui
    /// @return {Undefined}
    static Indent = function(indent_w=0) {
        return __imgui_indent(indent_w);
    }

    /// @function Unindent
    /// @param {Real} [indent_w=0]
    /// @context ImGui
    /// @return {Undefined}
    static Unindent = function(indent_w=0) {
        return __imgui_unindent(indent_w);
    }

    /// @function SameLine
    /// @param {Real} [offset_from_start_x=0]
    /// @param {Real} [spacing=-1]
    /// @context ImGui
    /// @return {Undefined}
    static SameLine = function(offset_from_start_x=0, spacing=-1) {
        return __imgui_sameline(offset_from_start_x, spacing);
    }

    /// @function BeginGroup
    /// @context ImGui
    /// @return {Undefined}
    static BeginGroup = function() {
        return __imgui_begin_group();
    }

    /// @function EndGroup
    /// @context ImGui
    /// @return {Undefined}
    static EndGroup = function() {
        return __imgui_end_group();
    }

    /// @function GetCursorPosX
    /// @context ImGui
    /// @return {Real}
    static GetCursorPosX = function() {
        return __imgui_get_cursor_pos_x();
    }

    /// @function GetCursorPosY
    /// @context ImGui
    /// @return {Real}
    static GetCursorPosY = function() {
        return __imgui_get_cursor_pos_y();
    }

    /// @function GetCursorStartPosX
    /// @context ImGui
    /// @return {Real}
    static GetCursorStartPosX = function() {
        return __imgui_get_cursor_start_pos_x();
    }

    /// @function GetCursorStartPosY
    /// @context ImGui
    /// @return {Real}
    static GetCursorStartPosY = function() {
        return __imgui_get_cursor_start_pos_y();
    }

    /// @function GetCursorScreenPosX
    /// @context ImGui
    /// @return {Real}
    static GetCursorScreenPosX = function() {
        return __imgui_get_cursor_screen_pos_x();
    }

    /// @function GetCursorScreenPosY
    /// @context ImGui
    /// @return {Real}
    static GetCursorScreenPosY = function() {
        return __imgui_get_cursor_screen_pos_y();
    }

    /// @function SetCursorScreenPos
    /// @param {Real} _x
    /// @param {Real} _y
    /// @context ImGui
    /// @return {Undefined}
    static SetCursorScreenPos = function(_x, _y) {
        return __imgui_set_cursor_screen_pos(_x, _y);
    }

    /// @function SetCursorPos
    /// @param {Real} local_x
    /// @param {Real} local_y
    /// @context ImGui
    /// @return {Undefined}
    static SetCursorPos = function(local_x, local_y) {
        return __imgui_set_cursor_pos(local_x, local_y);
    }

    /// @function SetCursorPosX
    /// @param {Real} local_x
    /// @context ImGui
    /// @return {Undefined}
    static SetCursorPosX = function(local_x) {
        return __imgui_set_cursor_pos_x(local_x);
    }

    /// @function SetCursorPosY
    /// @param {Real} local_y
    /// @context ImGui
    /// @return {Undefined}
    static SetCursorPosY = function(local_y) {
        return __imgui_set_cursor_pos_y(local_y);
    }

    /// @function GetTextLineHeight
    /// @context ImGui
    /// @return {Real}
    static GetTextLineHeight = function() {
        return __imgui_get_text_line_height();
    }

    /// @function GetTextLineHeightWithSpacing
    /// @context ImGui
    /// @return {Real}
    static GetTextLineHeightWithSpacing = function() {
        return __imgui_get_text_line_height_with_spacing();
    }

    /// @function GetFrameHeight
    /// @context ImGui
    /// @return {Real}
    static GetFrameHeight = function() {
        return __imgui_get_frame_height();
    }

    /// @function GetFrameHeightWithSpacing
    /// @context ImGui
    /// @return {Real}
    static GetFrameHeightWithSpacing = function() {
        return __imgui_get_frame_height_with_spacing();
    }

    /// @function GetContentRegionAvailX
    /// @context ImGui
    /// @return {Real}
    static GetContentRegionAvailX = function() {
        return __imgui_get_content_region_avail_x();
    }

    /// @function GetContentRegionAvailY
    /// @context ImGui
    /// @return {Real}
    static GetContentRegionAvailY = function() {
        return __imgui_get_content_region_avail_y();
    }

    /// @function GetContentRegionMaxX
    /// @context ImGui
    /// @return {Real}
    static GetContentRegionMaxX = function() {
        return __imgui_get_content_region_max_x();
    }

    /// @function GetContentRegionMaxY
    /// @context ImGui
    /// @return {Real}
    static GetContentRegionMaxY = function() {
        return __imgui_get_content_region_max_y();
    }

    /// @function GetWindowContentRegionMinX
    /// @context ImGui
    /// @return {Real}
    static GetWindowContentRegionMinX = function() {
        return __imgui_get_window_content_region_min_x();
    }

    /// @function GetWindowContentRegionMinY
    /// @context ImGui
    /// @return {Real}
    static GetWindowContentRegionMinY = function() {
        return __imgui_get_window_content_region_min_y();
    }

    /// @function GetWindowContentRegionMaxX
    /// @context ImGui
    /// @return {Real}
    static GetWindowContentRegionMaxX = function() {
        return __imgui_get_window_content_region_max_x();
    }

    /// @function GetWindowContentRegionMaxY
    /// @context ImGui
    /// @return {Real}
    static GetWindowContentRegionMaxY = function() {
        return __imgui_get_window_content_region_max_y();
    }

    /// @function PushItemWidth
    /// @param {Real} item_width
    /// @context ImGui
    /// @return {Undefined}
    static PushItemWidth = function(item_width) {
        return __imgui_push_item_width(item_width);
    }

    /// @function PopItemWidth
    /// @context ImGui
    /// @return {Undefined}
    static PopItemWidth = function() {
        return __imgui_pop_item_width();
    }

    /// @function SetNextItemWidth
    /// @param {Real} item_width
    /// @context ImGui
    /// @return {Undefined}
    static SetNextItemWidth = function(item_width) {
        return __imgui_set_next_item_width(item_width);
    }

    /// @function CalcItemWidth
    /// @context ImGui
    /// @return {Real}
    static CalcItemWidth = function() {
        return __imgui_calc_item_width();
    }

    /// @function PushTextWrapPos
    /// @param {Real} [wrap_local_pos_x=0]
    /// @context ImGui
    /// @return {Undefined}
    static PushTextWrapPos = function(wrap_local_pos_x=0) {
        return __imgui_push_text_wrap_pos(wrap_local_pos_x);
    }

    /// @function PopTextWrapPos
    /// @context ImGui
    /// @return {Undefined}
    static PopTextWrapPos = function() {
        return __imgui_pop_text_wrap_pos();
    }

    /// @function PushClipRect
    /// @param {Real} clip_min_x
    /// @param {Real} clip_min_y
    /// @param {Real} clip_max_x
    /// @param {Real} clip_max_y
    /// @param {Bool} intersect_with_current_clip_rect
    /// @context ImGui
    /// @return {Undefined}
    static PushClipRect = function(clip_min_x, clip_min_y, clip_max_x, clip_max_y, intersect_with_current_clip_rect) {
        return __imgui_push_clip_rect(clip_min_x, clip_min_y, clip_max_x, clip_max_y, intersect_with_current_clip_rect);
    }

    /// @function PopClipRect
    /// @context ImGui
    /// @return {Undefined}
    static PopClipRect = function() {
        return __imgui_pop_clip_rect();
    }

    /// @function BeginListBox
    /// @param {String} label
    /// @param {Real} [width=0]
    /// @param {Real} [height=0]
    /// @context ImGui
    /// @return {Bool}
    static BeginListBox = function(label, width=0, height=0) {
        return __imgui_begin_listbox(label, width, height);
    }

    /// @function EndListBox
    /// @context ImGui
    /// @return {Undefined}
    static EndListBox = function() {
        return __imgui_end_listbox();
    }

    /// @function ListBox
    /// @context ImGui
    /// @return {Unknown<unset>}
    static ListBox = function() {
        return __imgui_listbox();
    }

    /// @function BeginMenuBar
    /// @context ImGui
    /// @return {Bool}
    static BeginMenuBar = function() {
        return __imgui_begin_menubar();
    }

    /// @function EndMenuBar
    /// @context ImGui
    /// @return {Undefined}
    static EndMenuBar = function() {
        return __imgui_end_menubar();
    }

    /// @function BeginMainMenuBar
    /// @context ImGui
    /// @return {Bool}
    static BeginMainMenuBar = function() {
        return __imgui_begin_mainmenubar();
    }

    /// @function EndMainMenuBar
    /// @context ImGui
    /// @return {Undefined}
    static EndMainMenuBar = function() {
        return __imgui_end_mainmenubar();
    }

    /// @function BeginMenu
    /// @param {String} label
    /// @param {Bool} [enabled=true]
    /// @context ImGui
    /// @return {Bool}
    static BeginMenu = function(label, enabled=true) {
        return __imgui_begin_menu(label, enabled);
    }

    /// @function EndMenu
    /// @context ImGui
    /// @return {Undefined}
    static EndMenu = function() {
        return __imgui_end_menu();
    }

    /// @function MenuItem
    /// @param {String} label
    /// @param {String} [shortcut=]
    /// @param {Bool} [selected=undefined]
    /// @param {Bool} [enabled=true]
    /// @param {Enum.ImGuiReturnMask} [mask=ImGuiReturnMask.Return]
    /// @context ImGui
    /// @return {Real}
    static MenuItem = function(label, shortcut="", selected=undefined, enabled=true, mask=ImGuiReturnMask.Return) {
        return __imgui_menu_item(label, shortcut, selected, enabled, mask);
    }

    /// @function BeginDragDropSource
    /// @param {Enum.ImGuiDragDropFlags} [flags=ImGuiDragDropFlags.None]
    /// @context ImGui
    /// @return {Bool}
    static BeginDragDropSource = function(flags=ImGuiDragDropFlags.None) {
        return __imgui_begin_drag_drop_source(flags);
    }

    /// @function EndDragDropSource
    /// @context ImGui
    /// @return {Undefined}
    static EndDragDropSource = function() {
        return __imgui_end_drag_drop_source();
    }

    /// @function BeginDragDropTarget
    /// @context ImGui
    /// @return {Bool}
    static BeginDragDropTarget = function() {
        return __imgui_begin_drag_drop_target();
    }

    /// @function EndDragDropTarget
    /// @context ImGui
    /// @return {Undefined}
    static EndDragDropTarget = function() {
        return __imgui_end_drag_drop_target();
    }

    /// @function SetDragDropPayload
    /// @param {String} type
    /// @param {Any} data
    /// @param {Enum.ImGuiCond} [cond=ImGuiCond.None]
    /// @context ImGui
    /// @return {Bool}
    static SetDragDropPayload = function(type, data, cond=ImGuiCond.None) {
        return __imgui_set_drag_drop_payload(type, data, cond);
    }

    /// @function AcceptDragDropPayload
    /// @param {String} type
    /// @param {Enum.ImGuiDragDropFlags} [flags=ImGuiDragDropFlags.None]
    /// @context ImGui
    /// @return {Any|Undefined}
    static AcceptDragDropPayload = function(type, flags=ImGuiDragDropFlags.None) {
        return __imgui_accept_drag_drop_payload(type, flags);
    }

    /// @function GetDragDropPayload
    /// @context ImGui
    /// @return {Any|Undefined}
    static GetDragDropPayload = function() {
        return __imgui_get_drag_drop_payload();
    }

    /// @function GetDragDropPayloadType
    /// @context ImGui
    /// @return {String|Undefined}
    static GetDragDropPayloadType = function() {
        return __imgui_get_payload_type();
    }

    /// @function PlotLines
    /// @param {String} label
    /// @param {Array<Real>} values
    /// @param {Real} [values_offset=0]
    /// @param {String} [overlay_text=]
    /// @param {Real} [scale_min=0]
    /// @param {Real} [scale_max=0]
    /// @param {Real} [graph_width=0]
    /// @param {Real} [graph_height=0]
    /// @context ImGui
    /// @return {Undefined}
    static PlotLines = function(label, values, values_offset=0, overlay_text="", scale_min=0, scale_max=0, graph_width=0, graph_height=0) {
        return __imgui_plot_lines(label, values, values_offset, overlay_text, scale_min, scale_max, graph_width, graph_height, array_length(values));
    }

    /// @function PlotHistogram
    /// @param {String} label
    /// @param {Array<Real>} values
    /// @param {Real} [values_offset=0]
    /// @param {String} [overlay_text=]
    /// @param {Real} [scale_min=0]
    /// @param {Real} [scale_max=0]
    /// @param {Real} [graph_width=0]
    /// @param {Real} [graph_height=0]
    /// @context ImGui
    /// @return {Undefined}
    static PlotHistogram = function(label, values, values_offset=0, overlay_text="", scale_min=0, scale_max=0, graph_width=0, graph_height=0) {
        return __imgui_plot_histogram(label, values, values_offset, overlay_text, scale_min, scale_max, graph_width, graph_height, array_length(values));
    }

    /// @function BeginPopup
    /// @param {String} str_id
    /// @param {Enum.ImGuiWindowFlags} [flags=ImGuiWindowFlags.None]
    /// @context ImGui
    /// @return {Bool}
    static BeginPopup = function(str_id, flags=ImGuiWindowFlags.None) {
        return __imgui_begin_popup(str_id, flags);
    }

    /// @function BeginPopupModal
    /// @param {String} name
    /// @param {Bool} [open=undefined]
    /// @param {Enum.ImGuiWindowFlags} [flags=ImGuiWindowFlags.None]
    /// @param {Enum.ImGuiReturnMask} [mask=ImGuiReturnMask.Return]
    /// @context ImGui
    /// @return {Real}
    static BeginPopupModal = function(name, open=undefined, flags=ImGuiWindowFlags.None, mask=ImGuiReturnMask.Return) {
        return __imgui_begin_popup_modal(name, open, flags, mask);
    }

    /// @function EndPopup
    /// @context ImGui
    /// @return {Undefined}
    static EndPopup = function() {
        return __imgui_end_popup();
    }

    /// @function OpenPopup
    /// @param {String} str_id
    /// @param {Enum.ImGuiPopupFlags} [flags=ImGuiPopupFlags.None]
    /// @context ImGui
    /// @return {Undefined}
    static OpenPopup = function(str_id, flags=ImGuiPopupFlags.None) {
        return __imgui_open_popup(str_id, flags);
    }

    /// @function OpenPopupOnItemClick
    /// @param {String} [str_id=undefined]
    /// @param {Enum.ImGuiPopupFlags} [flags=ImGuiPopupFlags.MouseButtonRight]
    /// @context ImGui
    /// @return {Undefined}
    static OpenPopupOnItemClick = function(str_id="undefined", flags=ImGuiPopupFlags.MouseButtonRight) {
        return __imgui_open_popup_on_item_click(str_id, flags);
    }

    /// @function CloseCurrentPopup
    /// @context ImGui
    /// @return {Undefined}
    static CloseCurrentPopup = function() {
        return __imgui_close_current_popup();
    }

    /// @function BeginPopupContextItem
    /// @param {String} [str_id=undefined]
    /// @param {Enum.ImGuiPopupFlags} [flags=ImGuiPopupFlags.MouseButtonRight]
    /// @context ImGui
    /// @return {Bool}
    static BeginPopupContextItem = function(str_id="undefined", flags=ImGuiPopupFlags.MouseButtonRight) {
        return __imgui_begin_popup_context_item(str_id, flags);
    }

    /// @function BeginPopupContextWindow
    /// @param {String} [str_id=undefined]
    /// @param {Enum.ImGuiPopupFlags} [flags=ImGuiPopupFlags.MouseButtonRight]
    /// @context ImGui
    /// @return {Bool}
    static BeginPopupContextWindow = function(str_id="undefined", flags=ImGuiPopupFlags.MouseButtonRight) {
        return __imgui_begin_popup_context_window(str_id, flags);
    }

    /// @function BeginPopupContextVoid
    /// @param {String} [str_id=undefined]
    /// @param {Enum.ImGuiPopupFlags} [flags=ImGuiPopupFlags.MouseButtonRight]
    /// @context ImGui
    /// @return {Bool}
    static BeginPopupContextVoid = function(str_id="undefined", flags=ImGuiPopupFlags.MouseButtonRight) {
        return __imgui_begin_popup_context_void(str_id, flags);
    }

    /// @function IsPopupOpen
    /// @param {String} str_id
    /// @param {Enum.ImGuiPopupFlags} [flags=ImGuiPopupFlags.None]
    /// @context ImGui
    /// @return {Bool}
    static IsPopupOpen = function(str_id, flags=ImGuiPopupFlags.None) {
        return __imgui_is_popup_open(str_id, flags);
    }

    /// @function Selectable
    /// @param {String} label
    /// @param {Bool} [selected=false]
    /// @param {Enum.ImGuiSelectableFlags} [flags=ImGuiSelectableFlags.None]
    /// @param {Real} [width=0]
    /// @param {Real} [height=0]
    /// @context ImGui
    /// @return {Bool}
    static Selectable = function(label, selected=false, flags=ImGuiSelectableFlags.None, width=0, height=0) {
        return __imgui_selectable(label, selected, flags, width, height);
    }

    /// @function IsItemToggledSelection
    /// @context ImGui
    /// @return {Bool}
    static IsItemToggledSelection = function() {
        return __imgui_is_item_toggled_selection();
    }

    /// @function CreateMultiSelectBasicStorage
    /// @param {Struct} yystruct
    /// @context ImGui
    /// @return {Pointer}
    static CreateMultiSelectBasicStorage = function(yystruct) {
        return __imgui_create_multi_select_basic_storage(yystruct);
    }

    /// @function DestroyMultiSelectBasicStorage
    /// @param {Pointer} storage_ptr
    /// @context ImGui
    /// @return {Undefined}
    static DestroyMultiSelectBasicStorage = function(storage_ptr) {
        return __imgui_destroy_multi_select_basic_storage(storage_ptr);
    }

    /// @function BeginMultiSelect
    /// @param {ImGuiMultiSelectFlags} flags
    /// @param {Real} size
    /// @param {Real} items_count
    /// @context ImGui
    /// @return {ImGuiMultiSelectIO}
    static BeginMultiSelect = function(flags, size, items_count) {
        return __imgui_begin_multi_select(flags, size, items_count);
    }

    /// @function SelectionStorageApplyRequests
    /// @param {ImGuiSelectionBasicStorage} selection
    /// @param {ImGuiMultiSelectIO} ms_io
    /// @context ImGui
    /// @return {Undefined}
    static SelectionStorageApplyRequests = function(selection, ms_io) {
        return __imgui_selection_storage_apply_requests(selection, ms_io);
    }

    /// @function EndMultiSelect
    /// @context ImGui
    /// @return {ImGuiMultiSelectIO}
    static EndMultiSelect = function() {
        return __imgui_end_multi_select();
    }

    /// @function SetNextItemSelectionUserData
    /// @param {Real} idx
    /// @context ImGui
    /// @return {Unknown<unset>}
    static SetNextItemSelectionUserData = function(idx) {
        return __imgui_set_next_item_selection_user_data(idx);
    }

    /// @function SelectionStorageContains
    /// @param {ImGuiSelectionBasicStorage} selection
    /// @param {Real} idx
    /// @context ImGui
    /// @return {Bool}
    static SelectionStorageContains = function(selection, idx) {
        return __imgui_selection_storage_contains(selection, idx);
    }

    /// @function SelectionStorageSize
    /// @param {ImGuiSelectionBasicStorage} selection
    /// @param {Any} [value=undefined]
    /// @context ImGui
    /// @return {Real}
    static SelectionStorageSize = function(selection, value=undefined) {
        return __imgui_selection_storage_size(selection, value);
    }

    /// @function SliderFloat
    /// @param {String} label
    /// @param {Real} v
    /// @param {Real} [v_min=0]
    /// @param {Real} [v_max=0]
    /// @param {String} [format=%.3f]
    /// @param {Enum.ImGuiSliderFlags} [flags=ImGuiSliderFlags.None]
    /// @context ImGui
    /// @return {Real}
    static SliderFloat = function(label, v, v_min=0, v_max=0, format="%.3f", flags=ImGuiSliderFlags.None) {
        return __imgui_slider_float(label, v, v_min, v_max, format, flags);
    }

    /// @function SliderFloat2
    /// @param {String} label
    /// @param {Array<Real>} v
    /// @param {Real} [v_min=0]
    /// @param {Real} [v_max=0]
    /// @param {String} [format=%.3f]
    /// @param {Enum.ImGuiSliderFlags} [flags=ImGuiSliderFlags.None]
    /// @context ImGui
    /// @return {Bool}
    static SliderFloat2 = function(label, v, v_min=0, v_max=0, format="%.3f", flags=ImGuiSliderFlags.None) {
        return __imgui_slider_float2(label, v, v_min, v_max, format, flags);
    }

    /// @function SliderFloat3
    /// @param {String} label
    /// @param {Array<Real>} v
    /// @param {Real} [v_min=0]
    /// @param {Real} [v_max=0]
    /// @param {String} [format=%.3f]
    /// @param {Enum.ImGuiSliderFlags} [flags=ImGuiSliderFlags.None]
    /// @context ImGui
    /// @return {Bool}
    static SliderFloat3 = function(label, v, v_min=0, v_max=0, format="%.3f", flags=ImGuiSliderFlags.None) {
        return __imgui_slider_float3(label, v, v_min, v_max, format, flags);
    }

    /// @function SliderFloat4
    /// @param {String} label
    /// @param {Array<Real>} v
    /// @param {Real} [v_min=0]
    /// @param {Real} [v_max=0]
    /// @param {String} [format=%.3f]
    /// @param {Enum.ImGuiSliderFlags} [flags=ImGuiSliderFlags.None]
    /// @context ImGui
    /// @return {Bool}
    static SliderFloat4 = function(label, v, v_min=0, v_max=0, format="%.3f", flags=ImGuiSliderFlags.None) {
        return __imgui_slider_float4(label, v, v_min, v_max, format, flags);
    }

    /// @function SliderFloatN
    /// @param {String} label
    /// @param {Array<Real>} v
    /// @param {Real} [v_speed=1]
    /// @param {Real} [v_min=0]
    /// @param {Real} [v_max=0]
    /// @param {String} [format=%.3f]
    /// @param {Enum.ImGuiSliderFlags} [flags=ImGuiSliderFlags.None]
    /// @context ImGui
    /// @return {Bool}
    static SliderFloatN = function(label, v, v_speed=1, v_min=0, v_max=0, format="%.3f", flags=ImGuiSliderFlags.None) {
        return __imgui_slider_floatn(label, v, v_speed, v_min, v_max, format, flags, array_length(v));
    }

    /// @function SliderInt
    /// @param {String} label
    /// @param {Real} v
    /// @param {Real} [v_min=0]
    /// @param {Real} [v_max=0]
    /// @param {String} [format=%d]
    /// @param {Enum.ImGuiSliderFlags} [flags=ImGuiSliderFlags.None]
    /// @context ImGui
    /// @return {Real}
    static SliderInt = function(label, v, v_min=0, v_max=0, format="%d", flags=ImGuiSliderFlags.None) {
        return __imgui_slider_int(label, v, v_min, v_max, format, flags);
    }

    /// @function SliderInt2
    /// @param {String} label
    /// @param {Array<Real>} v
    /// @param {Real} [v_min=0]
    /// @param {Real} [v_max=0]
    /// @param {String} [format=%d]
    /// @param {Enum.ImGuiSliderFlags} [flags=ImGuiSliderFlags.None]
    /// @context ImGui
    /// @return {Bool}
    static SliderInt2 = function(label, v, v_min=0, v_max=0, format="%d", flags=ImGuiSliderFlags.None) {
        return __imgui_slider_int2(label, v, v_min, v_max, format, flags);
    }

    /// @function SliderInt3
    /// @param {String} label
    /// @param {Array<Real>} v
    /// @param {Real} [v_min=0]
    /// @param {Real} [v_max=0]
    /// @param {String} [format=%d]
    /// @param {Enum.ImGuiSliderFlags} [flags=ImGuiSliderFlags.None]
    /// @context ImGui
    /// @return {Bool}
    static SliderInt3 = function(label, v, v_min=0, v_max=0, format="%d", flags=ImGuiSliderFlags.None) {
        return __imgui_slider_int3(label, v, v_min, v_max, format, flags);
    }

    /// @function SliderInt4
    /// @param {String} label
    /// @param {Array<Real>} v
    /// @param {Real} [v_min=0]
    /// @param {Real} [v_max=0]
    /// @param {String} [format=%d]
    /// @param {Enum.ImGuiSliderFlags} [flags=ImGuiSliderFlags.None]
    /// @context ImGui
    /// @return {Bool}
    static SliderInt4 = function(label, v, v_min=0, v_max=0, format="%d", flags=ImGuiSliderFlags.None) {
        return __imgui_slider_int4(label, v, v_min, v_max, format, flags);
    }

    /// @function SliderIntN
    /// @param {String} label
    /// @param {Array<Real>} v
    /// @param {Real} [v_min=0]
    /// @param {Real} [v_max=0]
    /// @param {String} [format=%d]
    /// @param {Enum.ImGuiSliderFlags} [flags=ImGuiSliderFlags.None]
    /// @context ImGui
    /// @return {Bool}
    static SliderIntN = function(label, v, v_min=0, v_max=0, format="%d", flags=ImGuiSliderFlags.None) {
        return __imgui_slider_intn(label, v, v_min, v_max, format, flags, array_length(v));
    }

    /// @function VSliderFloat
    /// @param {String} label
    /// @param {Real} width
    /// @param {Real} height
    /// @param {Real} v
    /// @param {Real} [v_min=0]
    /// @param {Real} [v_max=0]
    /// @param {String} [format=%.3f]
    /// @param {Enum.ImGuiSliderFlags} [flags=ImGuiSliderFlags.None]
    /// @context ImGui
    /// @return {Real}
    static VSliderFloat = function(label, width, height, v, v_min=0, v_max=0, format="%.3f", flags=ImGuiSliderFlags.None) {
        return __imgui_vslider_float(label, width, height, v, v_min, v_max, format, flags);
    }

    /// @function VSliderInt
    /// @param {String} label
    /// @param {Real} width
    /// @param {Real} height
    /// @param {Real} v
    /// @param {Real} [v_min=0]
    /// @param {Real} [v_max=0]
    /// @param {String} [format=%d]
    /// @param {Enum.ImGuiSliderFlags} [flags=ImGuiSliderFlags.None]
    /// @context ImGui
    /// @return {Real}
    static VSliderInt = function(label, width, height, v, v_min=0, v_max=0, format="%d", flags=ImGuiSliderFlags.None) {
        return __imgui_vslider_int(label, width, height, v, v_min, v_max, format, flags);
    }

    /// @function SliderAngle
    /// @param {String} label
    /// @param {Real} v_rad
    /// @param {Real} [v_degrees_min=0]
    /// @param {Real} [v_degrees_max=0]
    /// @param {String} [format=%d]
    /// @param {Enum.ImGuiSliderFlags} [flags=ImGuiSliderFlags.None]
    /// @context ImGui
    /// @return {Real}
    static SliderAngle = function(label, v_rad, v_degrees_min=0, v_degrees_max=0, format="%d", flags=ImGuiSliderFlags.None) {
        return __imgui_slider_angle(label, v_rad, v_degrees_min, v_degrees_max, format, flags);
    }

    /// @function StyleColorsDark
    /// @context ImGui
    /// @return {Undefined}
    static StyleColorsDark = function() {
        return __imgui_style_colors_dark();
    }

    /// @function StyleColorsLight
    /// @context ImGui
    /// @return {Undefined}
    static StyleColorsLight = function() {
        return __imgui_style_colors_light();
    }

    /// @function StyleColorsClassic
    /// @context ImGui
    /// @return {Undefined}
    static StyleColorsClassic = function() {
        return __imgui_style_colors_classic();
    }

    /// @function PushStyleColor
    /// @param {Real} idx
    /// @param {Real} col
    /// @param {Real} alpha
    /// @context ImGui
    /// @return {Undefined}
    static PushStyleColor = function(idx, col, alpha) {
        return __imgui_push_style_color(idx, col, alpha);
    }

    /// @function PopStyleColor
    /// @param {Real} [count=1]
    /// @context ImGui
    /// @return {Undefined}
    static PopStyleColor = function(count=1) {
        return __imgui_pop_style_color(count);
    }

    /// @function PushStyleVar
    /// @param {Real} idx
    /// @param {Real} val
    /// @param {Any} [val2=undefined]
    /// @context ImGui
    /// @return {Undefined}
    static PushStyleVar = function(idx, val, val2=undefined) {
        return __imgui_push_style_var(idx, val, val2);
    }

    /// @function PushStyleVarX
    /// @param {Real} idx
    /// @param {Real} val_x
    /// @context ImGui
    /// @return {Undefined}
    static PushStyleVarX = function(idx, val_x) {
        return __imgui_push_style_var_x(idx, val_x);
    }

    /// @function PushStyleVarY
    /// @param {Real} idx
    /// @param {Real} val_y
    /// @context ImGui
    /// @return {Undefined}
    static PushStyleVarY = function(idx, val_y) {
        return __imgui_push_style_var_y(idx, val_y);
    }

    /// @function PopStyleVar
    /// @param {Real} [count=1]
    /// @context ImGui
    /// @return {Undefined}
    static PopStyleVar = function(count=1) {
        return __imgui_pop_style_var(count);
    }

    /// @function GetStyleColor
    /// @param {Real} idx
    /// @context ImGui
    /// @return {Real}
    static GetStyleColor = function(idx) {
        return __imgui_get_style_color(idx);
    }

    /// @function GetStyleColorName
    /// @param {Real} idx
    /// @context ImGui
    /// @return {String}
    static GetStyleColorName = function(idx) {
        return __imgui_get_style_color_name(idx);
    }

    /// @function SetStyleColor
    /// @param {Real} idx
    /// @param {Real} col
    /// @param {Real} alpha
    /// @context ImGui
    /// @return {Undefined}
    static SetStyleColor = function(idx, col, alpha) {
        return __imgui_set_style_color(idx, col, alpha);
    }

    /// @function SetStyleVar
    /// @param {Real} idx
    /// @param {Any} val
    /// @param {Any} [val2=undefined]
    /// @context ImGui
    /// @return {Undefined}
    static SetStyleVar = function(idx, val, val2=undefined) {
        return __imgui_set_style_var(idx, val, val2);
    }

    /// @function BeginTable
    /// @param {String} str_id
    /// @param {Real} column
    /// @param {Enum.ImGuiTableFlags} [flags=ImGuiTableFlags.None]
    /// @param {Real} [outer_width=0]
    /// @param {Real} [outer_height=0]
    /// @param {Real} [inner_width=0]
    /// @context ImGui
    /// @return {Bool}
    static BeginTable = function(str_id, column, flags=ImGuiTableFlags.None, outer_width=0, outer_height=0, inner_width=0) {
        return __imgui_begin_table(str_id, column, flags, outer_width, outer_height, inner_width);
    }

    /// @function EndTable
    /// @context ImGui
    /// @return {Undefined}
    static EndTable = function() {
        return __imgui_end_table();
    }

    /// @function TableNextRow
    /// @param {Enum.ImGuiTableRowFlags} [row_flags=ImGuiTableRowFlags.None]
    /// @param {Real} [min_row_height=0]
    /// @context ImGui
    /// @return {Undefined}
    static TableNextRow = function(row_flags=ImGuiTableRowFlags.None, min_row_height=0) {
        return __imgui_table_next_row(row_flags, min_row_height);
    }

    /// @function TableNextColumn
    /// @context ImGui
    /// @return {Bool}
    static TableNextColumn = function() {
        return __imgui_table_next_column();
    }

    /// @function TableSetColumnIndex
    /// @param {Real} column_n
    /// @context ImGui
    /// @return {Bool}
    static TableSetColumnIndex = function(column_n) {
        return __imgui_table_set_column_index(column_n);
    }

    /// @function TableSetupColumn
    /// @param {String} label
    /// @param {Enum.ImGuiTableColumnFlags} [flags=ImGuiTableColumnFlags.None]
    /// @param {Real} [user_id=0]
    /// @context ImGui
    /// @return {Undefined}
    static TableSetupColumn = function(label, flags=ImGuiTableColumnFlags.None, user_id=0) {
        return __imgui_table_setup_column(label, flags, user_id);
    }

    /// @function TableSetupScrollFreeze
    /// @param {Real} cols
    /// @param {Real} rows
    /// @context ImGui
    /// @return {Undefined}
    static TableSetupScrollFreeze = function(cols, rows) {
        return __imgui_table_setup_scroll_freeze(cols, rows);
    }

    /// @function TableHeadersRow
    /// @context ImGui
    /// @return {Undefined}
    static TableHeadersRow = function() {
        return __imgui_table_headers_row();
    }

    /// @function TableAngledHeadersRow
    /// @context ImGui
    /// @return {Undefined}
    static TableAngledHeadersRow = function() {
        return __imgui_table_angled_headers_row();
    }

    /// @function TableHeader
    /// @param {String} label
    /// @context ImGui
    /// @return {Undefined}
    static TableHeader = function(label) {
        return __imgui_table_header(label);
    }

    /// @function TableGetHoveredColumn
    /// @context ImGui
    /// @return {Real}
    static TableGetHoveredColumn = function() {
        return __imgui_table_get_hovered_column();
    }

    /// @function TableGetColumnCount
    /// @context ImGui
    /// @return {Real}
    static TableGetColumnCount = function() {
        return __imgui_table_get_column_count();
    }

    /// @function TableGetColumnIndex
    /// @context ImGui
    /// @return {Real}
    static TableGetColumnIndex = function() {
        return __imgui_table_get_column_index();
    }

    /// @function TableGetColumnName
    /// @param {Real} [column_n=-1]
    /// @context ImGui
    /// @return {String}
    static TableGetColumnName = function(column_n=-1) {
        return __imgui_table_get_column_name(column_n);
    }

    /// @function TableGetColumnFlags
    /// @param {Real} [column_n=-1]
    /// @context ImGui
    /// @return {Real}
    static TableGetColumnFlags = function(column_n=-1) {
        return __imgui_table_get_column_flags(column_n);
    }

    /// @function TableGetRowIndex
    /// @context ImGui
    /// @return {Real}
    static TableGetRowIndex = function() {
        return __imgui_table_get_row_index();
    }

    /// @function TableSetColumnEnabled
    /// @param {Real} column_n
    /// @param {Bool} v
    /// @context ImGui
    /// @return {Undefined}
    static TableSetColumnEnabled = function(column_n, v) {
        return __imgui_table_set_column_enabled(column_n, v);
    }

    /// @function TableSetBgColor
    /// @param {Real} target
    /// @param {Real} col
    /// @param {Real} [column_n=-1]
    /// @context ImGui
    /// @return {Undefined}
    static TableSetBgColor = function(target, col, column_n=-1) {
        return __imgui_table_set_bg_color(target, col, column_n);
    }

    /// @function Columns
    /// @param {Real} [count=1]
    /// @param {String} [_id=]
    /// @param {Bool} [border=true]
    /// @context ImGui
    /// @return {Undefined}
    static Columns = function(count=1, _id="", border=true) {
        return __imgui_columns(count, _id, border);
    }

    /// @function NextColumn
    /// @context ImGui
    /// @return {Undefined}
    static NextColumn = function() {
        return __imgui_next_column();
    }

    /// @function GetColumnIndex
    /// @context ImGui
    /// @return {Real}
    static GetColumnIndex = function() {
        return __imgui_get_column_index();
    }

    /// @function GetColumnWidth
    /// @param {Real} [column_index=-1]
    /// @context ImGui
    /// @return {Real}
    static GetColumnWidth = function(column_index=-1) {
        return __imgui_get_column_width(column_index);
    }

    /// @function SetColumnWidth
    /// @param {Real} column_index
    /// @param {Real} width
    /// @context ImGui
    /// @return {Undefined}
    static SetColumnWidth = function(column_index, width) {
        return __imgui_set_column_width(column_index, width);
    }

    /// @function GetColumnOffset
    /// @param {Real} [column_index=-1]
    /// @context ImGui
    /// @return {Real}
    static GetColumnOffset = function(column_index=-1) {
        return __imgui_get_column_offset(column_index);
    }

    /// @function SetColumnOffset
    /// @param {Real} column_index
    /// @param {Real} offset_x
    /// @context ImGui
    /// @return {Undefined}
    static SetColumnOffset = function(column_index, offset_x) {
        return __imgui_set_column_offset(column_index, offset_x);
    }

    /// @function GetColumnsCount
    /// @context ImGui
    /// @return {Real}
    static GetColumnsCount = function() {
        return __imgui_get_columns_count();
    }

    /// @function BeginTabBar
    /// @param {String} str_id
    /// @param {Enum.ImGuiTabBarFlags} [flags=ImGuiTabBarFlags.None]
    /// @context ImGui
    /// @return {Bool}
    static BeginTabBar = function(str_id, flags=ImGuiTabBarFlags.None) {
        return __imgui_begin_tab_bar(str_id, flags);
    }

    /// @function EndTabBar
    /// @context ImGui
    /// @return {Undefined}
    static EndTabBar = function() {
        return __imgui_end_tab_bar();
    }

    /// @function BeginTabItem
    /// @param {String} label
    /// @param {Bool} [open=undefined]
    /// @param {Enum.ImGuiTabItemFlags} [flags=ImGuiTabItemFlags.None]
    /// @param {Enum.ImGuiReturnMask} [mask=ImGuiReturnMask.Return]
    /// @context ImGui
    /// @return {Real}
    static BeginTabItem = function(label, open=undefined, flags=ImGuiTabItemFlags.None, mask=ImGuiReturnMask.Return) {
        return __imgui_begin_tab_item(label, open, flags, mask);
    }

    /// @function EndTabItem
    /// @context ImGui
    /// @return {Undefined}
    static EndTabItem = function() {
        return __imgui_end_tab_item();
    }

    /// @function TabItemButton
    /// @param {String} label
    /// @param {Enum.ImGuiTabItemFlags} [flags=ImGuiTabItemFlags.None]
    /// @context ImGui
    /// @return {Bool}
    static TabItemButton = function(label, flags=ImGuiTabItemFlags.None) {
        return __imgui_tab_item_button(label, flags);
    }

    /// @function SetTabItemClosed
    /// @param {String} tab_or_docked_window_label
    /// @context ImGui
    /// @return {Undefined}
    static SetTabItemClosed = function(tab_or_docked_window_label) {
        return __imgui_set_tab_item_closed(tab_or_docked_window_label);
    }

    /// @function TextUnformatted
    /// @param {String} text
    /// @context ImGui
    /// @return {Undefined}
    static TextUnformatted = function(text) {
        return __imgui_text_unformatted(text);
    }

    /// @function Text
    /// @param {String} val
    /// @context ImGui
    /// @return {Undefined}
    static Text = function(val) {
        return __imgui_text(val);
    }

    /// @function TextColored
    /// @param {String} val
    /// @param {Real} color
    /// @param {Real} [alpha=1]
    /// @context ImGui
    /// @return {Undefined}
    static TextColored = function(val, color, alpha=1) {
        return __imgui_text_colored(val, color, alpha);
    }

    /// @function TextDisabled
    /// @param {String} val
    /// @context ImGui
    /// @return {Undefined}
    static TextDisabled = function(val) {
        return __imgui_text_disabled(val);
    }

    /// @function TextWrapped
    /// @param {String} val
    /// @context ImGui
    /// @return {Undefined}
    static TextWrapped = function(val) {
        return __imgui_text_wrapped(val);
    }

    /// @function LabelText
    /// @param {String} label
    /// @param {String} val
    /// @context ImGui
    /// @return {Undefined}
    static LabelText = function(label, val) {
        return __imgui_label_text(label, val);
    }

    /// @function BulletText
    /// @param {String} val
    /// @context ImGui
    /// @return {Undefined}
    static BulletText = function(val) {
        return __imgui_bullet_text(val);
    }

    /// @function Value
    /// @context ImGui
    /// @return {Unknown<unset>}
    static Value = function() {
        return __imgui_value();
    }

    /// @function BeginTooltip
    /// @context ImGui
    /// @return {Undefined}
    static BeginTooltip = function() {
        return __imgui_begin_tooltip();
    }

    /// @function EndTooltip
    /// @context ImGui
    /// @return {Undefined}
    static EndTooltip = function() {
        return __imgui_end_tooltip();
    }

    /// @function SetTooltip
    /// @param {String} val
    /// @context ImGui
    /// @return {Undefined}
    static SetTooltip = function(val) {
        return __imgui_set_tooltip(val);
    }

    /// @function TreeNode
    /// @param {String} label
    /// @context ImGui
    /// @return {Bool}
    static TreeNode = function(label) {
        return __imgui_tree_node(label);
    }

    /// @function TreeNodeEx
    /// @param {String} label
    /// @param {Enum.ImGuiTreeNodeFlags} [flags=ImGuiTreeNodeFlags.None]
    /// @context ImGui
    /// @return {Bool}
    static TreeNodeEx = function(label, flags=ImGuiTreeNodeFlags.None) {
        return __imgui_tree_node_ex(label, flags);
    }

    /// @function TreePush
    /// @param {String} str_id
    /// @context ImGui
    /// @return {Undefined}
    static TreePush = function(str_id) {
        return __imgui_tree_push(str_id);
    }

    /// @function TreePop
    /// @context ImGui
    /// @return {Undefined}
    static TreePop = function() {
        return __imgui_tree_pop();
    }

    /// @function GetTreeNodeToLabelSpacing
    /// @context ImGui
    /// @return {Real}
    static GetTreeNodeToLabelSpacing = function() {
        return __imgui_get_tree_node_to_label_spacing();
    }

    /// @function SetNextItemOpen
    /// @param {Bool} is_open
    /// @param {Enum.ImGuiCond} [cond=ImGuiCond.None]
    /// @context ImGui
    /// @return {Undefined}
    static SetNextItemOpen = function(is_open, cond=ImGuiCond.None) {
        return __imgui_set_next_item_open(is_open, cond);
    }

    /// @function CollapsingHeader
    /// @param {String} label
    /// @param {Bool} [_visible=undefined]
    /// @param {Enum.ImGuiTreeNodeFlags} [flags=ImGuiTreeNodeFlags.None]
    /// @param {Enum.ImGuiReturnMask} [mask=ImGuiReturnMask.Return]
    /// @context ImGui
    /// @return {Real}
    static CollapsingHeader = function(label, _visible=undefined, flags=ImGuiTreeNodeFlags.None, mask=ImGuiReturnMask.Return) {
        return __imgui_collapsing_header(label, _visible, flags, mask);
    }

    /// @function Button
    /// @param {String} label
    /// @param {Real} [width=0]
    /// @param {Real} [height=0]
    /// @context ImGui
    /// @return {Bool}
    static Button = function(label, width=0, height=0) {
        return __imgui_button(label, width, height);
    }

    /// @function SmallButton
    /// @param {String} label
    /// @context ImGui
    /// @return {Bool}
    static SmallButton = function(label) {
        return __imgui_small_button(label);
    }

    /// @function InvisibleButton
    /// @param {String} _id
    /// @param {Real} [width=0]
    /// @param {Real} [height=0]
    /// @param {Enum.ImGuiButtonFlags} [flags=ImGuiButtonFlags.None]
    /// @context ImGui
    /// @return {Bool}
    static InvisibleButton = function(_id, width=0, height=0, flags=ImGuiButtonFlags.None) {
        return __imgui_invisible_button(_id, width, height, flags);
    }

    /// @function ArrowButton
    /// @param {String} str_id
    /// @param {Real} dir
    /// @context ImGui
    /// @return {Bool}
    static ArrowButton = function(str_id, dir) {
        return __imgui_arrow_button(str_id, dir);
    }

    /// @function Image
    /// @param {Real} sprite
    /// @param {Real} subimg
    /// @param {Real} [color=c_white]
    /// @param {Real} [alpha=1]
    /// @param {Real} [width=sprite_get_width⌊sprite⌉]
    /// @param {Real} [height=sprite_get_height⌊sprite⌉]
    /// @context ImGui
    /// @return {Undefined}
    static Image = function(sprite, subimg, color=c_white, alpha=1, width=sprite_get_width(sprite), height=sprite_get_height(sprite)) {
        if (!(ImGui.__GFlags & ImGuiGFlags.RENDERER_GM)) texture_set_stage(0, sprite_get_texture(sprite, subimg));
        return __imgui_image(sprite, subimg, color, alpha, width, height, sprite_get_uvs(sprite, subimg));
    }

    /// @function ImageButton
    /// @param {String} str_id
    /// @param {Real} sprite
    /// @param {Real} subimg
    /// @param {Real} color
    /// @param {Real} alpha
    /// @param {Real} bg_color
    /// @param {Real} bg_alpha
    /// @param {Real} [width=sprite_get_width⌊sprite⌉]
    /// @param {Real} [height=sprite_get_height⌊sprite⌉]
    /// @context ImGui
    /// @return {Bool}
    static ImageButton = function(str_id, sprite, subimg, color, alpha, bg_color, bg_alpha, width=sprite_get_width(sprite), height=sprite_get_height(sprite)) {
        if (!(ImGui.__GFlags & ImGuiGFlags.RENDERER_GM)) texture_set_stage(0, sprite_get_texture(sprite, subimg));
        return __imgui_image_button(str_id, sprite, subimg, color, alpha, bg_color, bg_alpha, width, height, sprite_get_uvs(sprite, subimg));
    }

    /// @function Surface
    /// @param {Real} surface
    /// @param {Real} [color=c_white]
    /// @param {Real} [alpha=1]
    /// @param {Real} [width=surface_get_width⌊surface⌉]
    /// @param {Real} [height=surface_get_height⌊surface⌉]
    /// @context ImGui
    /// @return {Undefined}
    static Surface = function(surface, color=c_white, alpha=1, width=surface_get_width(surface), height=surface_get_height(surface)) {
        var _tex = surface_get_texture(surface); if (!(ImGui.__GFlags & ImGuiGFlags.RENDERER_GM)) {texture_set_stage(0, _tex);};
        return __imgui_surface(surface, color, alpha, width, height, texture_get_uvs(_tex));
    }

    /// @function Checkbox
    /// @param {String} label
    /// @param {Bool} checked
    /// @context ImGui
    /// @return {Bool}
    static Checkbox = function(label, checked) {
        return __imgui_checkbox(label, checked);
    }

    /// @function CheckboxFlags
    /// @param {String} label
    /// @param {Real} flags
    /// @param {Real} flags_value
    /// @context ImGui
    /// @return {Real}
    static CheckboxFlags = function(label, flags, flags_value) {
        return __imgui_checkbox_flags(label, flags, flags_value);
    }

    /// @function RadioButton
    /// @param {String} label
    /// @param {Bool} active
    /// @context ImGui
    /// @return {Bool}
    static RadioButton = function(label, active) {
        return __imgui_radio_button(label, active);
    }

    /// @function ProgressBar
    /// @param {Real} _frac
    /// @param {Real} [width=0]
    /// @param {Real} [height=0]
    /// @param {String} [overlay=]
    /// @context ImGui
    /// @return {Undefined}
    static ProgressBar = function(_frac, width=0, height=0, overlay="") {
        return __imgui_progressbar(_frac, width, height, overlay);
    }

    /// @function Bullet
    /// @context ImGui
    /// @return {Undefined}
    static Bullet = function() {
        return __imgui_bullet();
    }

    /// @function TextLink
    /// @param {String} label
    /// @context ImGui
    /// @return {Undefined}
    static TextLink = function(label) {
        return __imgui_text_link(label);
    }

    /// @function TextLinkOpenURL
    /// @param {String} label
    /// @param {String} url
    /// @context ImGui
    /// @return {Undefined}
    static TextLinkOpenURL = function(label, url) {
        return __imgui_text_link_open_url(label, url);
    }

    /// @function Begin
    /// @param {String} name
    /// @param {Bool} [open=undefined]
    /// @param {Enum.ImGuiWindowFlags} [flags=ImGuiWindowFlags.None]
    /// @param {Enum.ImGuiReturnMask} [mask=ImGuiReturnMask.Return]
    /// @context ImGui
    /// @return {Real}
    static Begin = function(name, open=undefined, flags=ImGuiWindowFlags.None, mask=ImGuiReturnMask.Return) {
        return __imgui_begin(name, open, flags, mask);
    }

    /// @function End
    /// @context ImGui
    /// @return {Undefined}
    static End = function() {
        return __imgui_end();
    }

    /// @function BeginChild
    /// @param {String} str_id
    /// @param {Real} [width=0]
    /// @param {Real} [height=0]
    /// @param {Enum.ImGuiChildFlags} [child_flags=ImGuiChildFlags.None]
    /// @param {Enum.ImGuiWindowFlags} [window_flags=ImGuiWindowFlags.None]
    /// @context ImGui
    /// @return {Bool}
    static BeginChild = function(str_id, width=0, height=0, child_flags=ImGuiChildFlags.None, window_flags=ImGuiWindowFlags.None) {
        return __imgui_begin_child(str_id, width, height, child_flags, window_flags);
    }

    /// @function EndChild
    /// @context ImGui
    /// @return {Undefined}
    static EndChild = function() {
        return __imgui_end_child();
    }

    /// @function BeginChildFrame
    /// @param {Real} _id
    /// @param {Real} [width=0]
    /// @param {Real} [height=0]
    /// @param {Enum.ImGuiWindowFlags} [flags=ImGuiWindowFlags.None]
    /// @context ImGui
    /// @return {Bool}
    static BeginChildFrame = function(_id, width=0, height=0, flags=ImGuiWindowFlags.None) {
        return __imgui_begin_child_frame(_id, width, height, flags);
    }

    /// @function EndChildFrame
    /// @context ImGui
    /// @return {Undefined}
    static EndChildFrame = function() {
        return __imgui_end_child_frame();
    }

    /// @function IsWindowAppearing
    /// @context ImGui
    /// @return {Bool}
    static IsWindowAppearing = function() {
        return __imgui_is_window_appearing();
    }

    /// @function IsWindowCollapsed
    /// @context ImGui
    /// @return {Bool}
    static IsWindowCollapsed = function() {
        return __imgui_is_window_collapsed();
    }

    /// @function IsWindowFocused
    /// @param {Enum.ImGuiFocusedFlags} [flags=ImGuiFocusedFlags.None]
    /// @context ImGui
    /// @return {Bool}
    static IsWindowFocused = function(flags=ImGuiFocusedFlags.None) {
        return __imgui_is_window_focused(flags);
    }

    /// @function IsWindowHovered
    /// @param {Enum.ImGuiHoveredFlags} [flags=ImGuiHoveredFlags.None]
    /// @context ImGui
    /// @return {Bool}
    static IsWindowHovered = function(flags=ImGuiHoveredFlags.None) {
        return __imgui_is_window_hovered(flags);
    }

    /// @function GetWindowDpiScale
    /// @context ImGui
    /// @return {Real}
    static GetWindowDpiScale = function() {
        return __imgui_get_window_dpi_scale();
    }

    /// @function GetWindowPosX
    /// @context ImGui
    /// @return {Real}
    static GetWindowPosX = function() {
        return __imgui_get_window_x();
    }

    /// @function GetWindowPosY
    /// @context ImGui
    /// @return {Real}
    static GetWindowPosY = function() {
        return __imgui_get_window_y();
    }

    /// @function GetWindowWidth
    /// @context ImGui
    /// @return {Real}
    static GetWindowWidth = function() {
        return __imgui_get_window_width();
    }

    /// @function GetWindowHeight
    /// @context ImGui
    /// @return {Real}
    static GetWindowHeight = function() {
        return __imgui_get_window_height();
    }

    /// @function GetWindowViewport
    /// @context ImGui
    /// @return {Pointer}
    static GetWindowViewport = function() {
        return __imgui_get_window_viewport();
    }

    /// @function SetWindowFontScale
    /// @param {Real} scale
    /// @context ImGui
    /// @return {Undefined}
    static SetWindowFontScale = function(scale) {
        return __imgui_set_window_font_scale(scale);
    }

    /// @function SetNextWindowViewport
    /// @param {Real} _id
    /// @context ImGui
    /// @return {Undefined}
    static SetNextWindowViewport = function(_id) {
        return __imgui_set_next_window_viewport(_id);
    }

    /// @function SetNextWindowPos
    /// @param {Real} _x
    /// @param {Real} _y
    /// @param {Enum.ImGuiCond} [cond=ImGuiCond.None]
    /// @param {Real} [pivot_x=0]
    /// @param {Real} [pivot_y=0]
    /// @context ImGui
    /// @return {Undefined}
    static SetNextWindowPos = function(_x, _y, cond=ImGuiCond.None, pivot_x=0, pivot_y=0) {
        return __imgui_set_next_window_pos(_x, _y, cond, pivot_x, pivot_y);
    }

    /// @function SetNextWindowSize
    /// @param {Real} width
    /// @param {Real} height
    /// @param {Enum.ImGuiCond} [cond=ImGuiCond.None]
    /// @context ImGui
    /// @return {Undefined}
    static SetNextWindowSize = function(width, height, cond=ImGuiCond.None) {
        return __imgui_set_next_window_size(width, height, cond);
    }

    /// @function SetNextWindowSizeConstraints
    /// @param {Real} min_width
    /// @param {Real} min_height
    /// @param {Real} max_width
    /// @param {Real} max_height
    /// @context ImGui
    /// @return {Undefined}
    static SetNextWindowSizeConstraints = function(min_width, min_height, max_width, max_height) {
        return __imgui_set_next_window_size_constraints(min_width, min_height, max_width, max_height);
    }

    /// @function SetNextWindowContentSize
    /// @param {Real} width
    /// @param {Real} height
    /// @context ImGui
    /// @return {Undefined}
    static SetNextWindowContentSize = function(width, height) {
        return __imgui_set_next_window_content_size(width, height);
    }

    /// @function SetNextWindowCollapsed
    /// @param {Bool} collapsed
    /// @param {Enum.ImGuiCond} [cond=ImGuiCond.None]
    /// @context ImGui
    /// @return {Undefined}
    static SetNextWindowCollapsed = function(collapsed, cond=ImGuiCond.None) {
        return __imgui_set_next_window_collapsed(collapsed, cond);
    }

    /// @function SetNextWindowFocus
    /// @context ImGui
    /// @return {Undefined}
    static SetNextWindowFocus = function() {
        return __imgui_set_next_window_focus();
    }

    /// @function SetNextWindowScroll
    /// @param {Real} scroll_x
    /// @param {Real} scroll_y
    /// @context ImGui
    /// @return {Undefined}
    static SetNextWindowScroll = function(scroll_x, scroll_y) {
        return __imgui_set_next_window_scroll(scroll_x, scroll_y);
    }

    /// @function SetNextWindowBgAlpha
    /// @param {Real} alpha
    /// @context ImGui
    /// @return {Undefined}
    static SetNextWindowBgAlpha = function(alpha) {
        return __imgui_set_next_window_bgalpha(alpha);
    }

    /// @function GetScrollX
    /// @context ImGui
    /// @return {Real}
    static GetScrollX = function() {
        return __imgui_get_scroll_x();
    }

    /// @function GetScrollY
    /// @context ImGui
    /// @return {Real}
    static GetScrollY = function() {
        return __imgui_get_scroll_y();
    }

    /// @function SetScrollX
    /// @param {Real} scroll_x
    /// @context ImGui
    /// @return {Undefined}
    static SetScrollX = function(scroll_x) {
        return __imgui_set_scroll_x(scroll_x);
    }

    /// @function SetScrollY
    /// @param {Real} scroll_y
    /// @context ImGui
    /// @return {Undefined}
    static SetScrollY = function(scroll_y) {
        return __imgui_set_scroll_y(scroll_y);
    }

    /// @function GetScrollMaxX
    /// @context ImGui
    /// @return {Real}
    static GetScrollMaxX = function() {
        return __imgui_get_scroll_max_x();
    }

    /// @function GetScrollMaxY
    /// @context ImGui
    /// @return {Real}
    static GetScrollMaxY = function() {
        return __imgui_get_scroll_max_y();
    }

    /// @function SetScrollHereX
    /// @param {Real} [center_x_ratio=0.5]
    /// @context ImGui
    /// @return {Undefined}
    static SetScrollHereX = function(center_x_ratio=0.5) {
        return __imgui_set_scroll_here_x(center_x_ratio);
    }

    /// @function SetScrollHereY
    /// @param {Real} [center_y_ratio=0.5]
    /// @context ImGui
    /// @return {Undefined}
    static SetScrollHereY = function(center_y_ratio=0.5) {
        return __imgui_set_scroll_here_y(center_y_ratio);
    }

    /// @function SetScrollFromPosX
    /// @param {Real} local_x
    /// @param {Real} [center_x_ratio=0.5]
    /// @context ImGui
    /// @return {Undefined}
    static SetScrollFromPosX = function(local_x, center_x_ratio=0.5) {
        return __imgui_set_scroll_from_pos_x(local_x, center_x_ratio);
    }

    /// @function SetScrollFromPosY
    /// @param {Real} local_y
    /// @param {Real} [center_y_ratio=0.5]
    /// @context ImGui
    /// @return {Undefined}
    static SetScrollFromPosY = function(local_y, center_y_ratio=0.5) {
        return __imgui_set_scroll_from_pos_y(local_y, center_y_ratio);
    }

    /// @function SetWindowPos
    /// @param {String} [name=]
    /// @param {Real} [_x=0]
    /// @param {Real} [_y=0]
    /// @param {Enum.ImGuiCond} [cond=ImGuiCond.None]
    /// @context ImGui
    /// @return {Undefined}
    static SetWindowPos = function(name="", _x=0, _y=0, cond=ImGuiCond.None) {
        return __imgui_set_window_pos(name, _x, _y, cond);
    }

    /// @function SetWindowSize
    /// @param {String} [name=]
    /// @param {Real} [width=0]
    /// @param {Real} [height=0]
    /// @param {Enum.ImGuiCond} [cond=ImGuiCond.None]
    /// @context ImGui
    /// @return {Undefined}
    static SetWindowSize = function(name="", width=0, height=0, cond=ImGuiCond.None) {
        return __imgui_set_window_size(name, width, height, cond);
    }

    /// @function SetWindowCollapsed
    /// @param {String} [name=]
    /// @param {Bool} [collapsed=true]
    /// @param {Enum.ImGuiCond} [cond=ImGuiCond.None]
    /// @context ImGui
    /// @return {Undefined}
    static SetWindowCollapsed = function(name="", collapsed=true, cond=ImGuiCond.None) {
        return __imgui_set_window_collapsed(name, collapsed, cond);
    }

    /// @function SetWindowFocus
    /// @param {String} [name=]
    /// @context ImGui
    /// @return {Undefined}
    static SetWindowFocus = function(name="") {
        return __imgui_set_window_focus(name);
    }

    /// @section Enums
    enum ImGuiDir {
        None = -1,
        Left = 0,
        Right = 1,
        Up = 2,
        Down = 3,
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
        NoNavInputs = 1 << 16,
        NoNavFocus = 1 << 17,
        UnsavedDocument = 1 << 18,
        NoDocking = 1 << 19,
        NoNav = ImGuiWindowFlags.NoNavInputs | ImGuiWindowFlags.NoNavFocus,
        NoDecoration = ImGuiWindowFlags.NoTitleBar | ImGuiWindowFlags.NoResize | ImGuiWindowFlags.NoScrollbar | ImGuiWindowFlags.NoCollapse,
        NoInputs = ImGuiWindowFlags.NoMouseInputs | ImGuiWindowFlags.NoNavInputs | ImGuiWindowFlags.NoNavFocus,
        ChildWindow = 1 << 24,
        Tooltip = 1 << 25,
        Popup = 1 << 26,
        Modal = 1 << 27,
        ChildMenu = 1 << 28,
        DockNodeHost = 1 << 29,
        NavFlattened = 1 << 29,
        AlwaysUseWindowPadding = 1 << 30,
    }

    enum ImGuiChildFlags {
        None = 0,
        Borders = 1 << 0,
        AlwaysUseWindowPadding = 1 << 1,
        ResizeX = 1 << 2,
        ResizeY = 1 << 3,
        AutoResizeX = 1 << 4,
        AutoResizeY = 1 << 5,
        AlwaysAutoResize = 1 << 6,
        FrameStyle = 1 << 7,
        NavFlattened = 1 << 8,
        Border = ImGuiChildFlags.Borders,
    }

    enum ImGuiItemFlags {
        None = 0,
        NoTabStop = 1 << 0,
        NoNav = 1 << 1,
        NoNavDefaultFocus = 1 << 2,
        ButtonRepeat = 1 << 3,
        AutoClosePopups = 1 << 4,
        AllowDuplicateId = 1 << 5,
    }

    enum ImGuiInputTextFlags {
        None = 0,
        CharsDecimal = 1 << 0,
        CharsHexadecimal = 1 << 1,
        CharsScientific = 1 << 2,
        CharsUppercase = 1 << 3,
        CharsNoBlank = 1 << 4,
        AllowTabInput = 1 << 5,
        EnterReturnsTrue = 1 << 6,
        EscapeClearsAll = 1 << 7,
        CtrlEnterForNewLine = 1 << 8,
        ReadOnly = 1 << 9,
        Password = 1 << 10,
        AlwaysOverwrite = 1 << 11,
        AutoSelectAll = 1 << 12,
        ParseEmptyRefVal = 1 << 13,
        DisplayEmptyRefVal = 1 << 14,
        NoHorizontalScroll = 1 << 15,
        NoUndoRedo = 1 << 16,
        ElideLeft = 1 << 17,
        CallbackCompletion = 1 << 18,
        CallbackHistory = 1 << 19,
        CallbackAlways = 1 << 20,
        CallbackCharFilter = 1 << 21,
        CallbackResize = 1 << 22,
        CallbackEdit = 1 << 23,
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
        SpanLabelWidth = 1 << 13,
        SpanAllColumns = 1 << 14,
        LabelSpanAllColumns = 1 << 15,
        NavLeftJumpsBackHere = 1 << 17,
        CollapsingHeader = ImGuiTreeNodeFlags.Framed | ImGuiTreeNodeFlags.NoTreePushOnOpen | ImGuiTreeNodeFlags.NoAutoOpenOnLog,
        AllowItemOverlap = ImGuiTreeNodeFlags.AllowOverlap,
        SpanTextWidth = ImGuiTreeNodeFlags.SpanLabelWidth,
    }

    enum ImGuiPopupFlags {
        None = 0,
        MouseButtonLeft = 0,
        MouseButtonRight = 1,
        MouseButtonMiddle = 2,
        MouseButtonMask_ = 0x1F,
        MouseButtonDefault_ = 1,
        NoReopen = 1 << 5,
        NoOpenOverExistingPopup = 1 << 7,
        NoOpenOverItems = 1 << 8,
        AnyPopupId = 1 << 10,
        AnyPopupLevel = 1 << 11,
        AnyPopup = ImGuiPopupFlags.AnyPopupId | ImGuiPopupFlags.AnyPopupLevel,
    }

    enum ImGuiSelectableFlags {
        None = 0,
        NoAutoClosePopups = 1 << 0,
        SpanAllColumns = 1 << 1,
        AllowDoubleClick = 1 << 2,
        Disabled = 1 << 3,
        AllowOverlap = 1 << 4,
        Highlight = 1 << 5,
        DontClosePopups = ImGuiSelectableFlags.NoAutoClosePopups,
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
        WidthFitPreview = 1 << 7,
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
        DrawSelectedOverline = 1 << 6,
        FittingPolicyResizeDown = 1 << 7,
        FittingPolicyScroll = 1 << 8,
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
        NoAssumedClosure = 1 << 8,
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
        NoDockingOverCentralNode = 1 << 2,
        PassthruCentralNode = 1 << 3,
        NoDockingSplit = 1 << 4,
        NoResize = 1 << 5,
        AutoHideTabBar = 1 << 6,
        NoUndocking = 1 << 7,
        NoSplit = ImGuiDockNodeFlags.NoDockingSplit,
        NoDockingInCentralNode = ImGuiDockNodeFlags.NoDockingOverCentralNode,
    }

    enum ImGuiDragDropFlags {
        None = 0,
        SourceNoPreviewTooltip = 1 << 0,
        SourceNoDisableHover = 1 << 1,
        SourceNoHoldToOpenOthers = 1 << 2,
        SourceAllowNullID = 1 << 3,
        SourceExtern = 1 << 4,
        PayloadAutoExpire = 1 << 5,
        PayloadNoCrossContext = 1 << 6,
        PayloadNoCrossProcess = 1 << 7,
        AcceptBeforeDelivery = 1 << 10,
        AcceptNoDrawDefaultRect = 1 << 11,
        AcceptNoPreviewTooltip = 1 << 12,
        AcceptPeekOnly = ImGuiDragDropFlags.AcceptBeforeDelivery | ImGuiDragDropFlags.AcceptNoDrawDefaultRect,
        SourceAutoExpirePayload = ImGuiDragDropFlags.PayloadAutoExpire,
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
        Bool,
        String,
    }

    enum ImGuiSortDirection {
        None = 0,
        Ascending = 1,
        Descending = 2,
    }

    enum ImGuiInputFlags {
        None = 0,
        Repeat = 1 << 0,
        RouteActive = 1 << 10,
        RouteFocused = 1 << 11,
        RouteGlobal = 1 << 12,
        RouteAlways = 1 << 13,
        RouteOverFocused = 1 << 14,
        RouteOverActive = 1 << 15,
        RouteUnlessBgFocused = 1 << 16,
        RouteFromRootWindow = 1 << 17,
        Tooltip = 1 << 18,
    }

    enum ImGuiConfigFlags {
        None = 0,
        NavEnableKeyboard = 1 << 0,
        NavEnableGamepad = 1 << 1,
        NoMouse = 1 << 4,
        NoMouseCursorChange = 1 << 5,
        NoKeyboard = 1 << 6,
        DockingEnable = 1 << 7,
        ViewportsEnable = 1 << 10,
        DpiEnableScaleViewports = 1 << 14,
        DpiEnableScaleFonts = 1 << 15,
        IsSRGB = 1 << 20,
        IsTouchScreen = 1 << 21,
        NavEnableSetMousePos = 1 << 2,
        NavNoCaptureKeyboard = 1 << 3,
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
        TabHovered,
        Tab,
        TabSelected,
        TabSelectedOverline,
        TabDimmed,
        TabDimmedSelected,
        TabDimmedSelectedOverline,
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
        TextLink,
        TextSelectedBg,
        DragDropTarget,
        NavCursor,
        NavWindowingHighlight,
        NavWindowingDimBg,
        ModalWindowDimBg,
        COUNT,
        TabActive = ImGuiCol.TabSelected,
        TabUnfocused = ImGuiCol.TabDimmed,
        TabUnfocusedActive = ImGuiCol.TabDimmedSelected,
        NavHighlight = ImGuiCol.NavCursor,
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
        TabBorderSize,
        TabBarBorderSize,
        TabBarOverlineSize,
        TableAngledHeadersAngle,
        TableAngledHeadersTextAlign,
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
        EnableNav = 1 << 3,
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
        Logarithmic = 1 << 5,
        NoRoundToFormat = 1 << 6,
        NoInput = 1 << 7,
        WrapAround = 1 << 8,
        ClampOnInput = 1 << 9,
        ClampZeroRange = 1 << 10,
        NoSpeedTweaks = 1 << 11,
        AlwaysClamp = ImGuiSliderFlags.ClampOnInput | ImGuiSliderFlags.ClampZeroRange,
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

    enum ImGuiMouseSource {
        Mouse = 0,
        TouchScreen,
        Pen,
    }

    enum ImGuiCond {
        None = 0,
        Always = 1 << 0,
        Once = 1 << 1,
        FirstUseEver = 1 << 2,
        Appearing = 1 << 3,
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
        HighlightHoveredColumn = 1 << 28,
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
        AngledHeader = 1 << 18,
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

    enum ImGuiMultiSelectFlags {
        None = 0,
        SingleSelect = 1 << 0,
        NoSelectAll = 1 << 1,
        NoRangeSelect = 1 << 2,
        NoAutoSelect = 1 << 3,
        NoAutoClear = 1 << 4,
        NoAutoClearOnReselect = 1 << 5,
        BoxSelect1d = 1 << 6,
        BoxSelect2d = 1 << 7,
        BoxSelectNoScroll = 1 << 8,
        ClearOnEscape = 1 << 9,
        ClearOnClickVoid = 1 << 10,
        ScopeWindow = 1 << 11,
        ScopeRect = 1 << 12,
        SelectOnClick = 1 << 13,
        SelectOnClickRelease = 1 << 14,
        NavWrapX = 1 << 16,
    }

    enum ImGuiSelectionRequestType {
        None = 0,
        SetAll,
        SetRange,
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
    static __State = undefined;
    static __Window = undefined;

    static CreateVtxFormat = function() {
        vertex_format_begin();
        vertex_format_add_position();
        vertex_format_add_texcoord();
        vertex_format_add_color();
        return vertex_format_end();
    }

    static __MainWindowHandle = window_handle();
    static __MainWindow = undefined;
    static __VtxFormat = CreateVtxFormat();
    static __Uniform = shader_get_uniform(shdImGui, "u_ClipRect");
    static __InputMapping = __imgui_create_input_mapping();
    static __CursorMapping = __imgui_create_cursor_mapping();

    static __GFlags = ImGuiGFlags.IMPL_WIN32 | ImGuiGFlags.IMPL_DX11 | ImGuiGFlags.GM;

    static __CursorPrev = -1;
    static __InputRequested = false;
    static __InputStore = undefined;

    static __Initialized = false;

    static toString = function() {
        return $"<ImGui {string(__Window)}>";
    }

    static __Initialize = function(ww_or_state_or_cfg=undefined, ctx=undefined) {
        if ImGui.__Initialized return;

        // Setup received parameters
        var ww = undefined,
        _ctx_created = false,
        _cbf_created = true,
        _fbf_created = true,
        _config_override_set = ImGuiConfigFlags.None,
        new_state = undefined;

        if is_instanceof(ww_or_state_or_cfg, ImGuiState) {
            new_state = ww_or_state_or_cfg;

        } else if is_int32(ww_or_state_or_cfg) or is_int64(ww_or_state_or_cfg) or is_real(ww_or_state_or_cfg){
            _config_override_set = ww_or_state_or_cfg;

        } else if is_struct(ww_or_state_or_cfg) {
            ww = ww_or_state_or_cfg;

        }

        if ww == undefined {
            ImGui.__MainWindow ??= new ImGuiBaseMainWindow();
            ww = ImGui.__MainWindow;
        }

        ww ??= ImGui.__MainWindow;
        new_state ??= new ImGuiState();

        if is_int32(ctx) or is_int64(ctx) or is_real(ctx) {
            _config_override_set = ctx;
            ctx = undefined;
        }
        if ctx == undefined {
            if new_state.Engine.Context != pointer_null {
                ctx = new_state.Engine.Context;
            } else {
                ctx = CreateContext();
                _ctx_created = true;
            }
        }

        // Setup the state.
        new_state.Engine.Window = ww;
        new_state.Engine.Context = ctx;

        ImGui.__Window = ww;

        var inited = new_state.__Initialize(_config_override_set);

        if inited == pointer_null or inited == undefined {
            if _ctx_created DestroyContext(__State.Engine.Context);
            if _cbf_created buffer_delete(__State.Renderer.CmdBuffer);
            if _fbf_created buffer_delete(__State.Renderer.FontBuffer);
            __State.Engine.Context = pointer_null;
            __State.Renderer.CmdBuffer = -1;
            __State.Renderer.FontBuffer = -1;
            ImGui.__Initialized = false;
            return false;
        }
        ImGui.__Initialized = true;
        new_state.Use();
        return true;
    }

    static __Shutdown = function(state=undefined) {
        if !ImGui.__Initialized return;
        state ??= __State; if state != __State state.Use();

        if (__imgui_shutdown(__State.Engine.Context)) {
            ImGui.__Initialized = false;
            __State.Destroy();
            delete __State;
            return true;
        }
        return false;
    }

    static __NewFrame = function(state=undefined) {
        if !ImGui.__Initialized return;
        state ??= __State; if state != __State state.Use();

        var _dwidth = display_get_width(), _dheight = display_get_height(), _focus = false;
        var _wwidth = 0, _wheight = 0;

        _wwidth = __State.Engine.Window.GetWidth();
        _wheight = __State.Engine.Window.GetHeight();
        _focus = __State.Engine.Window.HasFocus();

        // Check surface
        if (ImGui.__GFlags & ImGuiGFlags.RENDERER_GM) {
            if (!surface_exists(__State.Renderer.Surface)) {
                __State.Renderer.Surface = surface_create(max(1, _wwidth), max(1, _wheight));
            }
        }

        if _wwidth != 0 __State.Display.Width = _wwidth;
        if _wheight != 0 __State.Display.Height = _wheight;
        __State.Engine.Time = delta_time / 1_000_000;
        __State.Engine.Framerate = game_get_speed(gamespeed_fps);

        if ((_wwidth > 0 && _wheight > 0)) {
            for(var i = ImGuiKey.NamedKey_BEGIN; i < ImGuiKey.NamedKey_END; i++) {
                var key = ImGui.__InputMapping[i];
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

            var _x = __State.Engine.Window.GetX();
            var _y = __State.Engine.Window.GetY();

            var _do_mouse = (_focus == true);

            if _do_mouse {
                __State.Input.Mouse.X = __State.Engine.Window.MouseGetX();
                __State.Input.Mouse.Y = __State.Engine.Window.MouseGetY();
                for(var i = 0; i < 3; i++) __imgui_mouse(i, __State.Engine.Window.MouseCheckButton(i + 1));
                if (__State.Engine.Window.MouseWheelUp()) __imgui_mouse_wheel(0, 1);
                else if (__State.Engine.Window.MouseWheelDown()) __imgui_mouse_wheel(0, -1);

                var _cursor = __imgui_mouse_cursor();
                if (_cursor != __CursorPrev) {
                    __State.Engine.Window.SetCursor(ImGui.__CursorMapping[_cursor + 1]);
                    __CursorPrev = _cursor;
                }
            }
        }

        var _data = __State.__GetData();
        __imgui_new_frame(_data);

        if (buffer_peek(__State.Renderer.FontBuffer, 0, buffer_bool)) {
            if (sprite_exists(__State.Display.Font)) sprite_delete(__State.Display.Font);
            var font = surface_create(buffer_peek(__State.Renderer.FontBuffer, 1, buffer_u32), buffer_peek(__State.Renderer.FontBuffer, 5, buffer_u32));
            buffer_set_surface(__State.Renderer.FontBuffer, font, 9);
            __State.Display.Font = sprite_create_from_surface(font, 0, 0, surface_get_width(font), surface_get_height(font), false, false, 0, 0);
            surface_free(font);
            __State.Renderer.UpdateFont = false;
        }
    }

    static __EndFrame = function(state=undefined) {
        if !ImGui.__Initialized return;
        state ??= __State; if state != __State state.Use();

        __imgui_end_frame();
    }

    static __Render = function(state=undefined) {
        if !ImGui.__Initialized return;
        state ??= __State; if state != __State state.Use();

        __imgui_render();
    }

    static __Draw = function(state=undefined, _resize_app_surface=true) {
        if !ImGui.__Initialized return;
        state ??= __State; if state != __State state.Use();

        if (ImGui.__GFlags & ImGuiGFlags.RENDERER_GM) {
            if (!surface_exists(__State.Renderer.Surface)) {
                __State.Renderer.Surface = surface_create(max(1, __State.Display.Width), max(1, __State.Display.Height));
            }
        }

        var _w = display_get_gui_width(), _h = display_get_gui_height();
        var _ww = __State.Engine.Window.GetWidth();
        var _wh = __State.Engine.Window.GetHeight();

        if (_ww > 0 and _wh > 0) {
            if (_resize_app_surface) {
                if (__State.Engine.Window.GetHandle() == __MainWindowHandle) {
                    surface_resize(application_surface, _ww, _wh);
                }
            }
        }

        var _data = __State.__GetData();
        __imgui_draw(_data);

        if (ImGui.__GFlags & ImGuiGFlags.RENDERER_GM) {
            buffer_seek(__State.Renderer.CmdBuffer, buffer_seek_start, 0);
            if (buffer_read(__State.Renderer.CmdBuffer, buffer_bool)) { // data->Valid
                shader_set(shdImGui);
                surface_set_target(__State.Renderer.Surface);

                draw_clear_alpha(0, 0);
                var list_count = buffer_read(__State.Renderer.CmdBuffer, buffer_u32);
                for(var i = 0; i < list_count; i++) {
                    var cmd_count = buffer_read(__State.Renderer.CmdBuffer, buffer_u32);
                    for(var j = 0; j < cmd_count; j++) {
                        if (!buffer_read(__State.Renderer.CmdBuffer, buffer_bool)) { // UserCallback != nullptr
                            var tex_data = buffer_read(__State.Renderer.CmdBuffer, buffer_u32);
                            var tex_id = -1;
                            switch (tex_data & 0xF) {
                                case ImGuiTextureType.Surface: {
                                    tex_id = surface_get_texture(tex_data >> 16);
                                    break;
                                }

                                case ImGuiTextureType.Font: {
                                    tex_id = sprite_get_texture(__State.Display.Font, 0);
                                    break;
                                }

                                case ImGuiTextureType.Sprite: {
                                    tex_id = sprite_get_texture(tex_data >> 16, (tex_data >> 4) & 0xFFF);
                                    break;
                                }
                            }

                            var clip_x1 = buffer_read(__State.Renderer.CmdBuffer, buffer_f32);
                            var clip_y1 = buffer_read(__State.Renderer.CmdBuffer, buffer_f32);
                            var clip_x2 = buffer_read(__State.Renderer.CmdBuffer, buffer_f32);
                            var clip_y2 = buffer_read(__State.Renderer.CmdBuffer, buffer_f32);
                            shader_set_uniform_f_array(__Uniform, [clip_x1, clip_y1, clip_x2, clip_y2]);
                            var vtx_count = buffer_read(__State.Renderer.CmdBuffer, buffer_u32);
                            var vtx_buff = vertex_create_buffer_from_buffer_ext(__State.Renderer.CmdBuffer, ImGui.__VtxFormat, buffer_tell(__State.Renderer.CmdBuffer), vtx_count);
                            vertex_submit(vtx_buff, pr_trianglelist, tex_id);
                            buffer_seek(__State.Renderer.CmdBuffer, buffer_seek_relative, 20 * vtx_count);
                            vertex_delete_buffer(vtx_buff);
                        }
                    }
                }
                surface_reset_target();
                shader_reset();


                if _ww > 0 and _wh > 0 {
                    display_set_gui_size(_ww, _wh);
                    display_set_gui_maximize(__State.Display.Scale, __State.Display.Scale, 0, 0);

                    if (__State.Engine.Window[$ "DrawBegin"]) {
                        __State.Engine.Window.DrawBegin();
                    }
                    if (__State.Engine.Window[$ "DrawClear"]) {
                        __State.Engine.Window.DrawClear();
                    }

                    draw_surface(__State.Renderer.Surface, 0, 0);

                    if (__State.Engine.Window[$ "DrawEnd"]) {
                        __State.Engine.Window.DrawEnd();
                    }

                    display_set_gui_maximize();
                    display_set_gui_size(_w, _h);
                }
            }
        }
    }

    return self;
};

// Version Check

try {
    var _get = static_get(new ImGui());
    show_debug_message("[ImGui_GM - INFO] Successfully passed version check");

} catch(e) {
    if e[$ "message"] {
        show_error(string(e), true);
    }

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
