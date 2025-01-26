/**
*  This script includes snake_case function defintions for ImGui_GM, as an alternative to the namespaced convention
*  To use, just drop this script into your project with ImGui_GM
*  Generated at 1/27/2025, 12:17:35 AM
*/

/// @function imgui_initialize
function imgui_initialize() {
    return ImGui.__Initialize();
}

/// @function imgui_new_frame
function imgui_new_frame() {
    return ImGui.__NewFrame();
}

/// @function imgui_end_frame
function imgui_end_frame() {
    return ImGui.__EndFrame();
}

/// @function imgui_render
function imgui_render() {
    return ImGui.__Render();
}

/// @function imgui_draw
function imgui_draw() {
    return ImGui.__Draw();
}

/// @function imgui_shutdown
function imgui_shutdown() {
    return ImGui.__Shutdown();
}

/// @function imgui_create_context
/// @return {Pointer}
function imgui_create_context() {
    return __imgui_create_context();
}

/// @function imgui_destroy_context
/// @param {Pointer} ctx
/// @return {Undefined}
function imgui_destroy_context(ctx) {
    return __imgui_destroy_context(ctx);
}

/// @function imgui_get_current_context
/// @return {Pointer}
function imgui_get_current_context() {
    return __imgui_get_current_context();
}

/// @function imgui_set_current_context
/// @param {Pointer} ctx
/// @return {Undefined}
function imgui_set_current_context(ctx) {
    return __imgui_set_current_context(ctx);
}

/// @function imgui_show_demo_window
/// @param {Bool} [open=undefined]
/// @return {Bool}
function imgui_show_demo_window(open=undefined) {
    return __imgui_show_demo_window(open);
}

/// @function imgui_show_metrics_window
/// @param {Bool} [open=undefined]
/// @return {Bool}
function imgui_show_metrics_window(open=undefined) {
    return __imgui_show_metrics_window(open);
}

/// @function imgui_show_debug_log_window
/// @param {Bool} [open=undefined]
/// @return {Bool}
function imgui_show_debug_log_window(open=undefined) {
    return __imgui_show_debug_log_window(open);
}

/// @function imgui_show_stack_tool_window
/// @param {Bool} [open=undefined]
/// @return {Bool}
function imgui_show_stack_tool_window(open=undefined) {
    return __imgui_show_stack_tool_window(open);
}

/// @function imgui_show_about_window
/// @param {Bool} [open=undefined]
/// @return {Bool}
function imgui_show_about_window(open=undefined) {
    return __imgui_show_about_window(open);
}

/// @function imgui_show_style_editor
/// @return {Undefined}
function imgui_show_style_editor() {
    return __imgui_show_style_editor();
}

/// @function imgui_show_style_selector
/// @param {String} label
/// @return {Bool}
function imgui_show_style_selector(label) {
    return __imgui_show_style_selector(label);
}

/// @function imgui_show_font_selector
/// @param {String} label
/// @return {Undefined}
function imgui_show_font_selector(label) {
    return __imgui_show_font_selector(label);
}

/// @function imgui_show_user_guide
/// @return {Undefined}
function imgui_show_user_guide() {
    return __imgui_show_user_guide();
}

/// @function imgui_get_version
/// @return {String}
function imgui_get_version() {
    return __imgui_get_version();
}

/// @function imgui_push_id
/// @param {String|Real} _id
/// @return {Undefined}
function imgui_push_id(_id) {
    return __imgui_push_id(_id);
}

/// @function imgui_pop_id
/// @return {Undefined}
function imgui_pop_id() {
    return __imgui_pop_id();
}

/// @function imgui_get_id
/// @param {String} str_id
/// @return {Real}
function imgui_get_id(str_id) {
    return __imgui_get_id(str_id);
}

/// @function imgui_push_item_flag
/// @param {ImGuiItemFlags} item_flag
/// @param {Bool} enabled
/// @return {Undefined}
function imgui_push_item_flag(item_flag, enabled) {
    return __imgui_push_item_flag(item_flag, enabled);
}

/// @function imgui_pop_item_flag
/// @return {Undefined}
function imgui_pop_item_flag() {
    return __imgui_pop_item_flag();
}

/// @function imgui_begin_disabled
/// @param {Bool} [disabled=true]
/// @return {Undefined}
function imgui_begin_disabled(disabled=true) {
    return __imgui_begin_disabled(disabled);
}

/// @function imgui_end_disabled
/// @return {Undefined}
function imgui_end_disabled() {
    return __imgui_end_disabled();
}

/// @function imgui_is_item_hovered
/// @param {Enum.ImGuiHoveredFlags} [flags=ImGuiHoveredFlags.None]
/// @return {Bool}
function imgui_is_item_hovered(flags=ImGuiHoveredFlags.None) {
    return __imgui_is_item_hovered(flags);
}

/// @function imgui_is_item_active
/// @return {Bool}
function imgui_is_item_active() {
    return __imgui_is_item_active();
}

/// @function imgui_is_item_focused
/// @return {Bool}
function imgui_is_item_focused() {
    return __imgui_is_item_focused();
}

/// @function imgui_is_item_clicked
/// @param {Enum.ImGuiMouseButton} [mouse_button=ImGuiMouseButton.Left]
/// @return {Bool}
function imgui_is_item_clicked(mouse_button=ImGuiMouseButton.Left) {
    return __imgui_is_item_clicked(mouse_button);
}

/// @function imgui_is_item_visible
/// @return {Bool}
function imgui_is_item_visible() {
    return __imgui_is_item_visible();
}

/// @function imgui_is_item_edited
/// @return {Bool}
function imgui_is_item_edited() {
    return __imgui_is_item_edited();
}

/// @function imgui_is_item_activated
/// @return {Bool}
function imgui_is_item_activated() {
    return __imgui_is_item_activated();
}

/// @function imgui_is_item_deactivated
/// @return {Bool}
function imgui_is_item_deactivated() {
    return __imgui_is_item_deactivated();
}

/// @function imgui_is_item_deactivated_after_edit
/// @return {Bool}
function imgui_is_item_deactivated_after_edit() {
    return __imgui_is_item_deactivated_after_edit();
}

/// @function imgui_is_item_toggled_open
/// @return {Bool}
function imgui_is_item_toggled_open() {
    return __imgui_is_item_toggled_open();
}

/// @function imgui_is_any_item_hovered
/// @return {Bool}
function imgui_is_any_item_hovered() {
    return __imgui_is_any_item_hovered();
}

/// @function imgui_is_any_item_active
/// @return {Bool}
function imgui_is_any_item_active() {
    return __imgui_is_any_item_active();
}

/// @function imgui_is_any_item_focused
/// @return {Bool}
function imgui_is_any_item_focused() {
    return __imgui_is_any_item_focused();
}

/// @function imgui_get_item_id
/// @return {Real}
function imgui_get_item_id() {
    return __imgui_get_item_id();
}

/// @function imgui_get_item_rect_min_x
/// @return {Real}
function imgui_get_item_rect_min_x() {
    return __imgui_get_item_rect_min_x();
}

/// @function imgui_get_item_rect_min_y
/// @return {Real}
function imgui_get_item_rect_min_y() {
    return __imgui_get_item_rect_min_y();
}

/// @function imgui_get_item_rect_max_x
/// @return {Real}
function imgui_get_item_rect_max_x() {
    return __imgui_get_item_rect_max_x();
}

/// @function imgui_get_item_rect_max_y
/// @return {Real}
function imgui_get_item_rect_max_y() {
    return __imgui_get_item_rect_max_y();
}

/// @function imgui_get_item_rect_size_width
/// @return {Real}
function imgui_get_item_rect_size_width() {
    return __imgui_get_item_rect_size_width();
}

/// @function imgui_get_item_rect_size_height
/// @return {Real}
function imgui_get_item_rect_size_height() {
    return __imgui_get_item_rect_size_height();
}

/// @function imgui_set_next_item_allow_overlap
/// @return {Undefined}
function imgui_set_next_item_allow_overlap() {
    return __imgui_set_next_item_allow_overlap();
}

/// @function imgui_begin_item_tooltip
/// @return {Bool}
function imgui_begin_item_tooltip() {
    return __imgui_begin_item_tooltip();
}

/// @function imgui_set_item_tooltip
/// @param {String} text
/// @return {Undefined}
function imgui_set_item_tooltip(text) {
    return __imgui_set_item_tooltip(text);
}

/// @function imgui_is_rect_visible
/// @param {Real} x1
/// @param {Real} y1
/// @param {Real} x2
/// @param {Real} y2
/// @return {Bool}
function imgui_is_rect_visible(x1, y1, x2, y2) {
    return __imgui_is_rect_visible(x1, y1, x2, y2);
}

/// @function imgui_get_time
/// @return {Real}
function imgui_get_time() {
    return __imgui_get_time();
}

/// @function imgui_get_frame_count
/// @return {Real}
function imgui_get_frame_count() {
    return __imgui_get_frame_count();
}

/// @function imgui_calc_text_width
/// @param {String} text
/// @param {Bool} [hide_text_after_double_hash=false]
/// @param {Real} [wrap_width=-1]
/// @return {Real}
function imgui_calc_text_width(text, hide_text_after_double_hash=false, wrap_width=-1) {
    return __imgui_calc_text_width(text, hide_text_after_double_hash, wrap_width);
}

/// @function imgui_calc_text_height
/// @param {String} text
/// @param {Bool} [hide_text_after_double_hash=false]
/// @param {Real} [wrap_width=-1]
/// @return {Real}
function imgui_calc_text_height(text, hide_text_after_double_hash=false, wrap_width=-1) {
    return __imgui_calc_text_height(text, hide_text_after_double_hash, wrap_width);
}

/// @function imgui_push_allow_keyboard_focus
/// @param {Bool} allow_keyboard_focus
/// @return {Undefined}
function imgui_push_allow_keyboard_focus(allow_keyboard_focus) {
    return __imgui_push_allow_keyboard_focus(allow_keyboard_focus);
}

/// @function imgui_pop_allow_keyboard_focus
/// @return {Undefined}
function imgui_pop_allow_keyboard_focus() {
    return __imgui_pop_allow_keyboard_focus();
}

/// @function imgui_set_keyboard_focus_here
/// @param {Real} [offset=0]
/// @return {Undefined}
function imgui_set_keyboard_focus_here(offset=0) {
    return __imgui_set_keyboard_focus_here(offset);
}

/// @function imgui_set_nav_cursor_visible
/// @param {Bool} _visible
/// @return {Undefined}
function imgui_set_nav_cursor_visible(_visible) {
    return __imgui_set_nav_cursor_visible(_visible);
}

/// @function imgui_push_button_repeat
/// @param {Bool} _repeat
/// @return {Undefined}
function imgui_push_button_repeat(_repeat) {
    return __imgui_push_button_repeat(_repeat);
}

/// @function imgui_pop_button_repeat
/// @return {Undefined}
function imgui_pop_button_repeat() {
    return __imgui_pop_button_repeat();
}

/// @function imgui_set_item_default_focus
/// @return {Undefined}
function imgui_set_item_default_focus() {
    return __imgui_set_item_default_focus();
}

/// @function imgui_config_flags_get
/// @return {Real}
function imgui_config_flags_get() {
    return __imgui_config_flags_get();
}

/// @function imgui_ini_filename
/// @param {String} [val=undefined]
/// @return {String}
function imgui_ini_filename(val="undefined") {
    return __imgui_ini_filename(val);
}

/// @function imgui_want_save_ini_settings
/// @param {Bool} [val=undefined]
/// @return {Bool}
function imgui_want_save_ini_settings(val=undefined) {
    return __imgui_want_save_ini_settings(val);
}

/// @function imgui_load_ini_settings_from_disk
/// @param {String} [ini_filename=undefined]
/// @return {Undefined}
function imgui_load_ini_settings_from_disk(ini_filename="undefined") {
    return __imgui_load_ini_settings_from_disk(ini_filename);
}

/// @function imgui_load_ini_settings_from_memory
/// @param {String} [ini_data=undefined]
/// @return {Undefined}
function imgui_load_ini_settings_from_memory(ini_data="undefined") {
    return __imgui_load_ini_settings_from_memory(ini_data);
}

/// @function imgui_save_ini_settings_to_disk
/// @param {String} [ini_filename=undefined]
/// @return {Undefined}
function imgui_save_ini_settings_to_disk(ini_filename="undefined") {
    return __imgui_save_ini_settings_to_disk(ini_filename);
}

/// @function imgui_save_ini_settings_to_memory
/// @return {String}
function imgui_save_ini_settings_to_memory() {
    return __imgui_save_ini_settings_to_memory();
}

/// @function imgui_clear_ini_settings
/// @return {Undefined}
function imgui_clear_ini_settings() {
    return __imgui_clear_ini_settings();
}

/// @function imgui_config_flags_set
/// @param {Real} flags
/// @return {Unknown<unset>}
function imgui_config_flags_set(flags) {
    return __imgui_config_flags_set(flags);
}

/// @function imgui_config_flag_toggle
/// @param {Real} flag
/// @return {Bool}
function imgui_config_flag_toggle(flag) {
    return __imgui_config_flag_toggle(flag);
}

/// @function imgui_get_main_viewport
/// @return {Pointer}
function imgui_get_main_viewport() {
    return __imgui_get_main_viewport();
}

/// @function imgui_get_viewport_id
/// @param {ImGuiViewport} vp
/// @return {ImGuiID}
function imgui_get_viewport_id(vp) {
    return __imgui_get_viewport_id(vp);
}

/// @function imgui_log_text
/// @param {String} text
/// @return {Undefined}
function imgui_log_text(text) {
    return __imgui_log_text(text);
}

/// @function imgui_get_clipboard_text
/// @return {String}
function imgui_get_clipboard_text() {
    return __imgui_get_clipboard_text();
}

/// @function imgui_set_clipboard_text
/// @param {String} val
/// @return {Undefined}
function imgui_set_clipboard_text(val) {
    return __imgui_set_clipboard_text(val);
}

/// @function imgui_debug_log
/// @param {String} fmt
/// @param {Array} args
/// @return {Undefined}
function imgui_debug_log(fmt, args) {
    return __imgui_debug_log(fmt, args);
}

/// @function imgui_log_to_clipboard
/// @param {Real} [auto_open_depth=-1]
/// @return {Undefined}
function imgui_log_to_clipboard(auto_open_depth=-1) {
    return __imgui_log_to_clipboard(auto_open_depth);
}

/// @function imgui_log_to_tty
/// @param {Real} [auto_open_depth=-1]
/// @return {Undefined}
function imgui_log_to_tty(auto_open_depth=-1) {
    return __imgui_log_to_tty(auto_open_depth);
}

/// @function imgui_log_finish
/// @return {Undefined}
function imgui_log_finish() {
    return __imgui_log_finish();
}

/// @function imgui_log_buttons
/// @return {Undefined}
function imgui_log_buttons() {
    return __imgui_log_buttons();
}

/// @function imgui_log_to_file
/// @param {Real} [auto_open_depth=-1]
/// @param {Any} [filename=undefined]
/// @return {Undefined}
function imgui_log_to_file(auto_open_depth=-1, filename=undefined) {
    return __imgui_log_to_file(auto_open_depth, filename);
}

/// @function imgui_set_next_frame_want_capture_keyboard
/// @param {Bool} [val=undefined]
/// @return {Undefined}
function imgui_set_next_frame_want_capture_keyboard(val=undefined) {
    return __imgui_set_next_frame_want_capture_keyboard(val);
}

/// @function imgui_set_next_frame_want_capture_mouse
/// @param {Bool} [val=undefined]
/// @return {Undefined}
function imgui_set_next_frame_want_capture_mouse(val=undefined) {
    return __imgui_set_next_frame_want_capture_mouse(val);
}

/// @function imgui_want_keyboard_capture
/// @param {Bool} [val=undefined]
/// @return {Bool}
function imgui_want_keyboard_capture(val=undefined) {
    return __imgui_want_keyboard_capture(val);
}

/// @function imgui_want_mouse_capture
/// @param {Bool} [val=undefined]
/// @return {Bool}
function imgui_want_mouse_capture(val=undefined) {
    return __imgui_want_mouse_capture(val);
}

/// @function imgui_want_text_input
/// @param {Bool} [val=undefined]
/// @return {Bool}
function imgui_want_text_input(val=undefined) {
    return __imgui_want_text_input(val);
}

/// @function imgui_want_mouse_unless_popup_close
/// @param {Bool} [val=undefined]
/// @return {Bool}
function imgui_want_mouse_unless_popup_close(val=undefined) {
    return __imgui_want_mouse_unless_popup_close(val);
}

/// @function imgui_color_edit3
/// @param {String} label
/// @param {Real} col
/// @param {Enum.ImGuiColorEditFlags} [flags=ImGuiColorEditFlags.None]
/// @return {Real}
function imgui_color_edit3(label, col, flags=ImGuiColorEditFlags.None) {
    return __imgui_color_edit3(label, col, flags);
}

/// @function imgui_color_picker3
/// @param {String} label
/// @param {Real} col
/// @param {Enum.ImGuiColorEditFlags} [flags=ImGuiColorEditFlags.None]
/// @return {Real}
function imgui_color_picker3(label, col, flags=ImGuiColorEditFlags.None) {
    return __imgui_color_picker3(label, col, flags);
}

/// @function imgui_color_edit4
/// @param {String} label
/// @param {ImColor} col
/// @param {Enum.ImGuiColorEditFlags} [flags=ImGuiColorEditFlags.None]
/// @return {Bool}
function imgui_color_edit4(label, col, flags=ImGuiColorEditFlags.None) {
    return __imgui_color_edit4(label, col, flags);
}

/// @function imgui_color_picker4
/// @param {String} label
/// @param {ImColor} col
/// @param {Enum.ImGuiColorEditFlags} [flags=ImGuiColorEditFlags.None]
/// @return {Bool}
function imgui_color_picker4(label, col, flags=ImGuiColorEditFlags.None) {
    return __imgui_color_picker4(label, col, flags);
}

/// @function imgui_color_button
/// @param {String} desc_id
/// @param {Real} color
/// @param {Real} [alpha=1]
/// @param {Enum.ImGuiColorEditFlags} [flags=ImGuiColorEditFlags.None]
/// @param {Real} [width=0]
/// @param {Real} [height=0]
/// @return {Bool}
function imgui_color_button(desc_id, color, alpha=1, flags=ImGuiColorEditFlags.None, width=0, height=0) {
    return __imgui_color_button(desc_id, color, alpha, flags, width, height);
}

/// @function imgui_set_color_edit_options
/// @param {Enum.ImGuiColorEditFlags} [flags=ImGuiColorEditFlags.None]
/// @return {Undefined}
function imgui_set_color_edit_options(flags=ImGuiColorEditFlags.None) {
    return __imgui_set_color_edit_options(flags);
}

/// @function imgui_begin_combo
/// @param {String} label
/// @param {String} preview
/// @param {Real} flags
/// @return {Bool}
function imgui_begin_combo(label, preview, flags) {
    return __imgui_begin_combo(label, preview, flags);
}

/// @function imgui_end_combo
/// @return {Undefined}
function imgui_end_combo() {
    return __imgui_end_combo();
}

/// @function imgui_combo
/// @return {Unknown<unset>}
function imgui_combo() {
    return __imgui_combo();
}

/// @function imgui_dock_space
/// @param {Real} _id
/// @param {Real} [width=0]
/// @param {Real} [height=0]
/// @param {ImGuiDockNodeFlags} [flags=ImGuiDockNodeFlags.None]
/// @param {ImGuiWindowClass} [window_class=undefined]
/// @return {Real}
function imgui_dock_space(_id, width=0, height=0, flags=ImGuiDockNodeFlags.None, window_class=undefined) {
    return __imgui_dock_space(_id, width, height, flags, window_class);
}

/// @function imgui_find_viewport_by_id
/// @param {Real} _id
/// @return {ImGuiViewport}
function imgui_find_viewport_by_id(_id) {
    return __imgui_find_viewport_by_id(_id);
}

/// @function imgui_find_viewport_by_platform_handle
/// @param {HWND} platform_handle
/// @return {ImGuiViewport}
function imgui_find_viewport_by_platform_handle(platform_handle) {
    return __imgui_find_viewport_by_platform_handle(platform_handle);
}

/// @function imgui_dock_space_over_viewport
/// @param {Real|Undefined} [dockspace_id=0]
/// @param {Real} [viewport_id=0]
/// @param {Enum.ImGuiDockNodeFlags} [flags=ImGuiDockNodeFlags.None]
/// @param {ImGuiWindowClass} [window_class=undefined]
/// @return {Real}
function imgui_dock_space_over_viewport(dockspace_id=0, viewport_id=0, flags=ImGuiDockNodeFlags.None, window_class=undefined) {
    return __imgui_dock_space_over_viewport(dockspace_id, viewport_id, flags, window_class);
}

/// @function imgui_set_next_window_dock_id
/// @param {Real} dock_id
/// @param {Enum.ImGuiCond} [cond=ImGuiCond.None]
/// @return {Undefined}
function imgui_set_next_window_dock_id(dock_id, cond=ImGuiCond.None) {
    return __imgui_set_next_window_dock_id(dock_id, cond);
}

/// @function imgui_set_next_window_class
/// @param {ImGuiWindowClass} window_class
/// @return {Undefined}
function imgui_set_next_window_class(window_class) {
    return __imgui_set_next_window_class(window_class);
}

/// @function imgui_get_window_dock_id
/// @return {Real}
function imgui_get_window_dock_id() {
    return __imgui_get_window_dock_id();
}

/// @function imgui_is_window_docked
/// @return {Bool}
function imgui_is_window_docked() {
    return __imgui_is_window_docked();
}

/// @function imgui_dockbuilder_dock_window
/// @param {String} window_name
/// @param {Real} node_id
/// @return {Undefined}
function imgui_dockbuilder_dock_window(window_name, node_id) {
    return __imgui_dockbuilder_dock_window(window_name, node_id);
}

/// @function imgui_dockbuilder_get_node
/// @param {Real} node_id
/// @return {Pointer}
function imgui_dockbuilder_get_node(node_id) {
    return __imgui_dockbuilder_get_node(node_id);
}

/// @function imgui_dockbuilder_get_central_node
/// @param {Real} node_id
/// @return {Pointer}
function imgui_dockbuilder_get_central_node(node_id) {
    return __imgui_dockbuilder_get_central_node(node_id);
}

/// @function imgui_dockbuilder_add_node
/// @param {Real} [node_id=0]
/// @param {Enum.ImGuiDockNodeFlags} [flags=ImGuiDockNodeFlags.None]
/// @return {Real}
function imgui_dockbuilder_add_node(node_id=0, flags=ImGuiDockNodeFlags.None) {
    return __imgui_dockbuilder_add_node(node_id, flags);
}

/// @function imgui_dockbuilder_remove_node
/// @param {Real} node_id
/// @return {Undefined}
function imgui_dockbuilder_remove_node(node_id) {
    return __imgui_dockbuilder_remove_node(node_id);
}

/// @function imgui_dockbuilder_remove_node_docked_windows
/// @param {Real} node_id
/// @param {Bool} [clear_settings_refs=true]
/// @return {Undefined}
function imgui_dockbuilder_remove_node_docked_windows(node_id, clear_settings_refs=true) {
    return __imgui_dockbuilder_remove_node_docked_windows(node_id, clear_settings_refs);
}

/// @function imgui_dockbuilder_remove_node_child_nodes
/// @param {Real} node_id
/// @return {Undefined}
function imgui_dockbuilder_remove_node_child_nodes(node_id) {
    return __imgui_dockbuilder_remove_node_child_nodes(node_id);
}

/// @function imgui_dockbuilder_set_node_pos
/// @param {Real} node_id
/// @param {Real} _x
/// @param {Real} _y
/// @return {Undefined}
function imgui_dockbuilder_set_node_pos(node_id, _x, _y) {
    return __imgui_dockbuilder_set_node_pos(node_id, _x, _y);
}

/// @function imgui_dockbuilder_set_node_size
/// @param {Real} node_id
/// @param {Real} width
/// @param {Real} height
/// @return {Undefined}
function imgui_dockbuilder_set_node_size(node_id, width, height) {
    return __imgui_dockbuilder_set_node_size(node_id, width, height);
}

/// @function imgui_dockbuilder_split_node
/// @param {Real} node_id
/// @param {Real} split_dir
/// @param {Real} size_ratio_for_node_at_dir
/// @return {Array<ImGuiID>}
function imgui_dockbuilder_split_node(node_id, split_dir, size_ratio_for_node_at_dir) {
    return __imgui_dockbuilder_split_node(node_id, split_dir, size_ratio_for_node_at_dir);
}

/// @function imgui_dockbuilder_copy_dock_space
/// @param {Real} src_dockspace_id
/// @param {Real} dst_dockspace_id
/// @param {Any} window_remap_pairs
/// @return {Undefined}
function imgui_dockbuilder_copy_dock_space(src_dockspace_id, dst_dockspace_id, window_remap_pairs) {
    return __imgui_dockbuilder_copy_dock_space(src_dockspace_id, dst_dockspace_id, window_remap_pairs);
}

/// @function imgui_dockbuilder_copy_node
/// @param {Real} src_node_id
/// @param {Real} dst_node_id
/// @param {Any} node_remap_pairs
/// @return {Unknown<unset>}
function imgui_dockbuilder_copy_node(src_node_id, dst_node_id, node_remap_pairs) {
    return __imgui_dockbuilder_copy_node(src_node_id, dst_node_id, node_remap_pairs);
}

/// @function imgui_dockbuilder_copy_window_settings
/// @param {String} src_name
/// @param {String} dst_name
/// @return {Undefined}
function imgui_dockbuilder_copy_window_settings(src_name, dst_name) {
    return __imgui_dockbuilder_copy_window_settings(src_name, dst_name);
}

/// @function imgui_dockbuilder_finish
/// @param {Real} node_id
/// @return {Undefined}
function imgui_dockbuilder_finish(node_id) {
    return __imgui_dockbuilder_finish(node_id);
}

/// @function imgui_drag_float
/// @param {String} label
/// @param {Real} v
/// @param {Real} [v_speed=1]
/// @param {Real} [v_min=0]
/// @param {Real} [v_max=0]
/// @param {String} [format=%.3f]
/// @param {Enum.ImGuiSliderFlags} [flags=ImGuiSliderFlags.None]
/// @return {Real}
function imgui_drag_float(label, v, v_speed=1, v_min=0, v_max=0, format="%.3f", flags=ImGuiSliderFlags.None) {
    return __imgui_drag_float(label, v, v_speed, v_min, v_max, format, flags);
}

/// @function imgui_drag_float2
/// @param {String} label
/// @param {Array<Real>} v
/// @param {Real} [v_speed=1]
/// @param {Real} [v_min=0]
/// @param {Real} [v_max=0]
/// @param {String} [format=%.3f]
/// @param {Enum.ImGuiSliderFlags} [flags=ImGuiSliderFlags.None]
/// @return {Bool}
function imgui_drag_float2(label, v, v_speed=1, v_min=0, v_max=0, format="%.3f", flags=ImGuiSliderFlags.None) {
    return __imgui_drag_float2(label, v, v_speed, v_min, v_max, format, flags);
}

/// @function imgui_drag_float3
/// @param {String} label
/// @param {Array<Real>} v
/// @param {Real} [v_speed=1]
/// @param {Real} [v_min=0]
/// @param {Real} [v_max=0]
/// @param {String} [format=%.3f]
/// @param {Enum.ImGuiSliderFlags} [flags=ImGuiSliderFlags.None]
/// @return {Bool}
function imgui_drag_float3(label, v, v_speed=1, v_min=0, v_max=0, format="%.3f", flags=ImGuiSliderFlags.None) {
    return __imgui_drag_float3(label, v, v_speed, v_min, v_max, format, flags);
}

/// @function imgui_drag_float4
/// @param {String} label
/// @param {Array<Real>} v
/// @param {Real} [v_speed=1]
/// @param {Real} [v_min=0]
/// @param {Real} [v_max=0]
/// @param {String} [format=%.3f]
/// @param {Enum.ImGuiSliderFlags} [flags=ImGuiSliderFlags.None]
/// @return {Bool}
function imgui_drag_float4(label, v, v_speed=1, v_min=0, v_max=0, format="%.3f", flags=ImGuiSliderFlags.None) {
    return __imgui_drag_float4(label, v, v_speed, v_min, v_max, format, flags);
}

/// @function imgui_drag_floatn
/// @param {String} label
/// @param {Array<Real>} v
/// @param {Real} [v_speed=1]
/// @param {Real} [v_min=0]
/// @param {Real} [v_max=0]
/// @param {String} [format=%.3f]
/// @param {Enum.ImGuiSliderFlags} [flags=ImGuiSliderFlags.None]
/// @return {Bool}
function imgui_drag_floatn(label, v, v_speed=1, v_min=0, v_max=0, format="%.3f", flags=ImGuiSliderFlags.None) {
    return __imgui_drag_floatn(label, v, v_speed, v_min, v_max, format, flags, array_length(v));
}

/// @function imgui_drag_float_range2
/// @param {String} label
/// @param {Array<Real>} v
/// @param {Real} [v_speed=1]
/// @param {Real} [v_min=0]
/// @param {Real} [v_max=0]
/// @param {String} [format_min=%.3f]
/// @param {String} [format_max=%.3f]
/// @param {Enum.ImGuiSliderFlags} [flags=ImGuiSliderFlags.None]
/// @return {Bool}
function imgui_drag_float_range2(label, v, v_speed=1, v_min=0, v_max=0, format_min="%.3f", format_max="%.3f", flags=ImGuiSliderFlags.None) {
    return __imgui_drag_float_range2(label, v, v_speed, v_min, v_max, format_min, format_max, flags);
}

/// @function imgui_drag_int
/// @param {String} label
/// @param {Real} v
/// @param {Real} [v_speed=1]
/// @param {Real} [v_min=0]
/// @param {Real} [v_max=0]
/// @param {String} [format=%d]
/// @param {Enum.ImGuiSliderFlags} [flags=ImGuiSliderFlags.None]
/// @return {Real}
function imgui_drag_int(label, v, v_speed=1, v_min=0, v_max=0, format="%d", flags=ImGuiSliderFlags.None) {
    return __imgui_drag_int(label, v, v_speed, v_min, v_max, format, flags);
}

/// @function imgui_drag_int2
/// @param {String} label
/// @param {Array<Real>} v
/// @param {Real} [v_speed=1]
/// @param {Real} [v_min=0]
/// @param {Real} [v_max=0]
/// @param {String} [format=%d]
/// @param {Enum.ImGuiSliderFlags} [flags=ImGuiSliderFlags.None]
/// @return {Bool}
function imgui_drag_int2(label, v, v_speed=1, v_min=0, v_max=0, format="%d", flags=ImGuiSliderFlags.None) {
    return __imgui_drag_int2(label, v, v_speed, v_min, v_max, format, flags);
}

/// @function imgui_drag_int3
/// @param {String} label
/// @param {Array<Real>} v
/// @param {Real} [v_speed=1]
/// @param {Real} [v_min=0]
/// @param {Real} [v_max=0]
/// @param {String} [format=%d]
/// @param {Enum.ImGuiSliderFlags} [flags=ImGuiSliderFlags.None]
/// @return {Bool}
function imgui_drag_int3(label, v, v_speed=1, v_min=0, v_max=0, format="%d", flags=ImGuiSliderFlags.None) {
    return __imgui_drag_int3(label, v, v_speed, v_min, v_max, format, flags);
}

/// @function imgui_drag_int4
/// @param {String} label
/// @param {Array<Real>} v
/// @param {Real} [v_speed=1]
/// @param {Real} [v_min=0]
/// @param {Real} [v_max=0]
/// @param {String} [format=%d]
/// @param {Enum.ImGuiSliderFlags} [flags=ImGuiSliderFlags.None]
/// @return {Bool}
function imgui_drag_int4(label, v, v_speed=1, v_min=0, v_max=0, format="%d", flags=ImGuiSliderFlags.None) {
    return __imgui_drag_int4(label, v, v_speed, v_min, v_max, format, flags);
}

/// @function imgui_drag_intn
/// @param {String} label
/// @param {Array<Real>} v
/// @param {Real} [v_speed=1]
/// @param {Real} [v_min=0]
/// @param {Real} [v_max=0]
/// @param {String} [format=%d]
/// @param {Enum.ImGuiSliderFlags} [flags=ImGuiSliderFlags.None]
/// @return {Bool}
function imgui_drag_intn(label, v, v_speed=1, v_min=0, v_max=0, format="%d", flags=ImGuiSliderFlags.None) {
    return __imgui_drag_intn(label, v, v_speed, v_min, v_max, format, flags, array_length(v));
}

/// @function imgui_drag_int_range2
/// @param {String} label
/// @param {Array<Real>} v
/// @param {Real} v_current_max
/// @param {Real} [v_speed=1]
/// @param {Real} [v_min=0]
/// @param {Real} [v_max=0]
/// @param {String} [format_max=%d]
/// @param {Enum.ImGuiSliderFlags} [flags=ImGuiSliderFlags.None]
/// @return {Bool}
function imgui_drag_int_range2(label, v, v_current_max, v_speed=1, v_min=0, v_max=0, format_max="%d", flags=ImGuiSliderFlags.None) {
    return __imgui_drag_int_range2(label, v, v_current_max, v_speed, v_min, v_max, format_max, flags);
}

/// @function imgui_get_background_drawlist
/// @param {Pointer} [viewport=undefined]
/// @return {Pointer}
function imgui_get_background_drawlist(viewport=undefined) {
    return __imgui_get_background_drawlist(viewport);
}

/// @function imgui_get_foreground_drawlist
/// @param {Pointer} [viewport=undefined]
/// @return {Pointer}
function imgui_get_foreground_drawlist(viewport=undefined) {
    return __imgui_get_foreground_drawlist(viewport);
}

/// @function imgui_get_window_drawlist
/// @return {Pointer}
function imgui_get_window_drawlist() {
    return __imgui_get_window_drawlist();
}

/// @function imgui_drawlist_add_line
/// @param {Pointer} list
/// @param {Real} x1
/// @param {Real} y1
/// @param {Real} x2
/// @param {Real} y2
/// @param {Real} col
/// @param {Real} [thickness=1]
/// @return {Undefined}
function imgui_drawlist_add_line(list, x1, y1, x2, y2, col, thickness=1) {
    return __imgui_drawlist_add_line(list, x1, y1, x2, y2, col, thickness);
}

/// @function imgui_drawlist_add_rect
/// @param {Pointer} list
/// @param {Real} x1
/// @param {Real} y1
/// @param {Real} x2
/// @param {Real} y2
/// @param {Real} col
/// @param {Real} [rounding=0]
/// @param {Real} [flags=ImGuiImDrawFlags.None]
/// @param {Real} [thickness=1]
/// @return {Undefined}
function imgui_drawlist_add_rect(list, x1, y1, x2, y2, col, rounding=0, flags=ImGuiImDrawFlags.None, thickness=1) {
    return __imgui_drawlist_add_rect(list, x1, y1, x2, y2, col, rounding, flags, thickness);
}

/// @function imgui_drawlist_add_rect_filled
/// @param {Pointer} list
/// @param {Real} x1
/// @param {Real} y1
/// @param {Real} x2
/// @param {Real} y2
/// @param {Real} col
/// @param {Real} [rounding=0]
/// @param {Real} [flags=ImGuiImDrawFlags.None]
/// @return {Undefined}
function imgui_drawlist_add_rect_filled(list, x1, y1, x2, y2, col, rounding=0, flags=ImGuiImDrawFlags.None) {
    return __imgui_drawlist_add_rect_filled(list, x1, y1, x2, y2, col, rounding, flags);
}

/// @function imgui_drawlist_add_rect_filled_multicolor
/// @param {Pointer} list
/// @param {Real} x1
/// @param {Real} y1
/// @param {Real} x2
/// @param {Real} y2
/// @param {Real} col1
/// @param {Real} col2
/// @param {Real} col3
/// @param {Real} col4
/// @return {Undefined}
function imgui_drawlist_add_rect_filled_multicolor(list, x1, y1, x2, y2, col1, col2, col3, col4) {
    return __imgui_drawlist_add_rect_filled_multicolor(list, x1, y1, x2, y2, col1, col2, col3, col4);
}

/// @function imgui_drawlist_add_quad
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
/// @return {Undefined}
function imgui_drawlist_add_quad(list, x1, y1, x2, y2, x3, y3, x4, y4, col, thickness=1) {
    return __imgui_drawlist_add_quad(list, x1, y1, x2, y2, x3, y3, x4, y4, col, thickness);
}

/// @function imgui_drawlist_add_quad_filled
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
/// @return {Undefined}
function imgui_drawlist_add_quad_filled(list, x1, y1, x2, y2, x3, y3, x4, y4, col) {
    return __imgui_drawlist_add_quad_filled(list, x1, y1, x2, y2, x3, y3, x4, y4, col);
}

/// @function imgui_drawlist_add_triangle
/// @param {Pointer} list
/// @param {Real} x1
/// @param {Real} y1
/// @param {Real} x2
/// @param {Real} y2
/// @param {Real} x3
/// @param {Real} y3
/// @param {Real} col
/// @param {Real} [thickness=1]
/// @return {Undefined}
function imgui_drawlist_add_triangle(list, x1, y1, x2, y2, x3, y3, col, thickness=1) {
    return __imgui_drawlist_add_triangle(list, x1, y1, x2, y2, x3, y3, col, thickness);
}

/// @function imgui_drawlist_add_triangle_filled
/// @param {Pointer} list
/// @param {Real} x1
/// @param {Real} y1
/// @param {Real} x2
/// @param {Real} y2
/// @param {Real} x3
/// @param {Real} y3
/// @param {Real} col
/// @return {Undefined}
function imgui_drawlist_add_triangle_filled(list, x1, y1, x2, y2, x3, y3, col) {
    return __imgui_drawlist_add_triangle_filled(list, x1, y1, x2, y2, x3, y3, col);
}

/// @function imgui_drawlist_add_circle
/// @param {Pointer} list
/// @param {Real} _x
/// @param {Real} _y
/// @param {Real} radius
/// @param {Real} col
/// @param {Real} [num_segments=0]
/// @param {Real} [thickness=1]
/// @return {Undefined}
function imgui_drawlist_add_circle(list, _x, _y, radius, col, num_segments=0, thickness=1) {
    return __imgui_drawlist_add_circle(list, _x, _y, radius, col, num_segments, thickness);
}

/// @function imgui_drawlist_add_circle_filled
/// @param {Pointer} list
/// @param {Real} _x
/// @param {Real} _y
/// @param {Real} radius
/// @param {Real} col
/// @param {Real} [num_segments=0]
/// @return {Undefined}
function imgui_drawlist_add_circle_filled(list, _x, _y, radius, col, num_segments=0) {
    return __imgui_drawlist_add_circle_filled(list, _x, _y, radius, col, num_segments);
}

/// @function imgui_drawlist_add_ngon
/// @param {Pointer} list
/// @param {Real} _x
/// @param {Real} _y
/// @param {Real} radius
/// @param {Real} col
/// @param {Real} [num_segments=0]
/// @param {Real} [thickness=1]
/// @return {Undefined}
function imgui_drawlist_add_ngon(list, _x, _y, radius, col, num_segments=0, thickness=1) {
    return __imgui_drawlist_add_ngon(list, _x, _y, radius, col, num_segments, thickness);
}

/// @function imgui_drawlist_add_ngon_filled
/// @param {Pointer} list
/// @param {Real} _x
/// @param {Real} _y
/// @param {Real} radius
/// @param {Real} col
/// @param {Real} [num_segments=0]
/// @return {Undefined}
function imgui_drawlist_add_ngon_filled(list, _x, _y, radius, col, num_segments=0) {
    return __imgui_drawlist_add_ngon_filled(list, _x, _y, radius, col, num_segments);
}

/// @function imgui_drawlist_add_text
/// @param {Pointer} list
/// @param {Real} _x
/// @param {Real} _y
/// @param {String} text
/// @param {Real} col
/// @return {Undefined}
function imgui_drawlist_add_text(list, _x, _y, text, col) {
    return __imgui_drawlist_add_text(list, _x, _y, text, col);
}

/// @function imgui_drawlist_add_text_font
/// @param {Pointer} list
/// @param {Real} _x
/// @param {Real} _y
/// @param {String} text
/// @param {Real} col
/// @param {Pointer} font
/// @param {Real} font_size
/// @param {Real} [wrap_width=0]
/// @return {Undefined}
function imgui_drawlist_add_text_font(list, _x, _y, text, col, font, font_size, wrap_width=0) {
    return __imgui_drawlist_add_text_font(list, _x, _y, text, col, font, font_size, wrap_width);
}

/// @function imgui_drawlist_add_polyline
/// @param {Pointer} list
/// @param {Array<Real>} positions
/// @param {Real} col
/// @param {Enum.ImDrawFlags} flags
/// @param {Real} thickness
/// @return {Undefined}
function imgui_drawlist_add_polyline(list, positions, col, flags, thickness) {
    return __imgui_drawlist_add_polyline(list, positions, col, flags, thickness, array_length(positions));
}

/// @function imgui_drawlist_add_convex_poly_filled
/// @param {Pointer} list
/// @param {Array<Real>} positions
/// @param {Real} col
/// @return {Undefined}
function imgui_drawlist_add_convex_poly_filled(list, positions, col) {
    return __imgui_drawlist_add_convex_poly_filled(list, positions, col, array_length(positions));
}

/// @function imgui_drawlist_add_bezier_cubic
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
/// @return {Undefined}
function imgui_drawlist_add_bezier_cubic(list, x1, y1, x2, y2, x3, y3, x4, y4, col, thickness, num_segments=0) {
    return __imgui_drawlist_add_bezier_cubic(list, x1, y1, x2, y2, x3, y3, x4, y4, col, thickness, num_segments);
}

/// @function imgui_drawlist_add_bezier_quadratic
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
/// @return {Undefined}
function imgui_drawlist_add_bezier_quadratic(list, x1, y1, x2, y2, x3, y3, col, thickness, num_segments=0) {
    return __imgui_drawlist_add_bezier_quadratic(list, x1, y1, x2, y2, x3, y3, col, thickness, num_segments);
}

/// @function imgui_drawlist_path_fill_convex
/// @param {Pointer} list
/// @param {Real} col
/// @return {Undefined}
function imgui_drawlist_path_fill_convex(list, col) {
    return __imgui_drawlist_path_fill_convex(list, col);
}

/// @function imgui_drawlist_path_stroke
/// @param {Pointer} list
/// @param {Real} col
/// @param {Real} [flags=ImGuiImDrawFlags.None]
/// @param {Real} [thickness=1]
/// @return {Undefined}
function imgui_drawlist_path_stroke(list, col, flags=ImGuiImDrawFlags.None, thickness=1) {
    return __imgui_drawlist_path_stroke(list, col, flags, thickness);
}

/// @function imgui_drawlist_path_clear
/// @param {Pointer} list
/// @return {Undefined}
function imgui_drawlist_path_clear(list) {
    return __imgui_drawlist_path_clear(list);
}

/// @function imgui_drawlist_path_line_to
/// @param {Pointer} list
/// @param {Real} _x
/// @param {Real} _y
/// @return {Undefined}
function imgui_drawlist_path_line_to(list, _x, _y) {
    return __imgui_drawlist_path_line_to(list, _x, _y);
}

/// @function imgui_drawlist_path_line_to_merge_duplicate
/// @param {Pointer} list
/// @param {Real} _x
/// @param {Real} _y
/// @return {Undefined}
function imgui_drawlist_path_line_to_merge_duplicate(list, _x, _y) {
    return __imgui_drawlist_path_line_to_merge_duplicate(list, _x, _y);
}

/// @function imgui_drawlist_path_arc_to
/// @param {Pointer} list
/// @param {Real} _x
/// @param {Real} _y
/// @param {Real} radius
/// @param {Real} a_min
/// @param {Real} a_max
/// @param {Real} [num_segments=0]
/// @return {Undefined}
function imgui_drawlist_path_arc_to(list, _x, _y, radius, a_min, a_max, num_segments=0) {
    return __imgui_drawlist_path_arc_to(list, _x, _y, radius, a_min, a_max, num_segments);
}

/// @function imgui_drawlist_path_arc_to_fast
/// @param {Pointer} list
/// @param {Real} _x
/// @param {Real} _y
/// @param {Real} radius
/// @param {Real} a_min_of_12
/// @param {Real} a_max_of_12
/// @return {Undefined}
function imgui_drawlist_path_arc_to_fast(list, _x, _y, radius, a_min_of_12, a_max_of_12) {
    return __imgui_drawlist_path_arc_to_fast(list, _x, _y, radius, a_min_of_12, a_max_of_12);
}

/// @function imgui_drawlist_path_bezier_cubic_curve_to
/// @param {Pointer} list
/// @param {Real} x2
/// @param {Real} y2
/// @param {Real} x3
/// @param {Real} y3
/// @param {Real} x4
/// @param {Real} y4
/// @param {Real} [num_segments=0]
/// @return {Undefined}
function imgui_drawlist_path_bezier_cubic_curve_to(list, x2, y2, x3, y3, x4, y4, num_segments=0) {
    return __imgui_drawlist_path_bezier_cubic_curve_to(list, x2, y2, x3, y3, x4, y4, num_segments);
}

/// @function imgui_drawlist_path_bezier_quadratic_curve_to
/// @param {Pointer} list
/// @param {Real} x2
/// @param {Real} y2
/// @param {Real} x3
/// @param {Real} y3
/// @param {Real} [num_segments=0]
/// @return {Undefined}
function imgui_drawlist_path_bezier_quadratic_curve_to(list, x2, y2, x3, y3, num_segments=0) {
    return __imgui_drawlist_path_bezier_quadratic_curve_to(list, x2, y2, x3, y3, num_segments);
}

/// @function imgui_drawlist_path_rect
/// @param {Pointer} list
/// @param {Real} x1
/// @param {Real} y1
/// @param {Real} x2
/// @param {Real} y2
/// @param {Real} [rounding=0]
/// @param {Real} [flags=ImGuiImDrawFlags.None]
/// @return {Undefined}
function imgui_drawlist_path_rect(list, x1, y1, x2, y2, rounding=0, flags=ImGuiImDrawFlags.None) {
    return __imgui_drawlist_path_rect(list, x1, y1, x2, y2, rounding, flags);
}

/// @function imgui_drawlist_add_image
/// @param {Pointer} list
/// @param {Real} sprite
/// @param {Real} subimg
/// @param {Real} x1
/// @param {Real} y1
/// @param {Real} x2
/// @param {Real} y2
/// @param {Real} [col=c_white]
/// @return {Undefined}
function imgui_drawlist_add_image(list, sprite, subimg, x1, y1, x2, y2, col=c_white) {
    if (!(ImGui.__GFlags & ImGuiGFlags.RENDERER_GM)) texture_set_stage(0, sprite_get_texture(sprite, subimg)); 
    return __imgui_drawlist_add_image(list, sprite, subimg, x1, y1, x2, y2, col, sprite_get_uvs(sprite, subimg));
}

/// @function imgui_drawlist_add_image_rounded
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
/// @return {Undefined}
function imgui_drawlist_add_image_rounded(list, sprite, subimg, x1, y1, x2, y2, col, rounding, flags) {
    if (!(ImGui.__GFlags & ImGuiGFlags.RENDERER_GM)) texture_set_stage(0, sprite_get_texture(sprite, subimg)); 
    return __imgui_drawlist_add_image_rounded(list, sprite, subimg, x1, y1, x2, y2, col, rounding, flags, sprite_get_uvs(sprite, subimg));
}

/// @function imgui_drawlist_push_clip_rect
/// @param {Pointer} list
/// @param {Real} clip_min_x
/// @param {Real} clip_min_y
/// @param {Real} clip_max_x
/// @param {Real} clip_max_y
/// @param {Bool} intersect_with_current_clip_rect
/// @return {Undefined}
function imgui_drawlist_push_clip_rect(list, clip_min_x, clip_min_y, clip_max_x, clip_max_y, intersect_with_current_clip_rect) {
    return __imgui_drawlist_push_clip_rect(list, clip_min_x, clip_min_y, clip_max_x, clip_max_y, intersect_with_current_clip_rect);
}

/// @function imgui_drawlist_push_clip_rect_fullscreen
/// @param {Pointer} list
/// @return {Undefined}
function imgui_drawlist_push_clip_rect_fullscreen(list) {
    return __imgui_drawlist_push_clip_rect_fullscreen(list);
}

/// @function imgui_drawlist_pop_clip_rect
/// @param {Pointer} list
/// @return {Undefined}
function imgui_drawlist_pop_clip_rect(list) {
    return __imgui_drawlist_pop_clip_rect(list);
}

/// @function imgui_drawlist_push_textureid
/// @param {Pointer} list
/// @param {Real} sprite
/// @param {Real} subimg
/// @return {Undefined}
function imgui_drawlist_push_textureid(list, sprite, subimg) {
    if (!(ImGui.__GFlags & ImGuiGFlags.RENDERER_GM)) texture_set_stage(0, sprite_get_texture(sprite, subimg)); 
    return __imgui_drawlist_push_textureid(list, sprite, subimg);
}

/// @function imgui_drawlist_pop_textureid
/// @param {Pointer} list
/// @return {Undefined}
function imgui_drawlist_pop_textureid(list) {
    return __imgui_drawlist_pop_textureid(list);
}

/// @function imgui_drawlist_flags_get
/// @param {Pointer} list
/// @return {Real}
function imgui_drawlist_flags_get(list) {
    return __imgui_drawlist_flags_get(list);
}

/// @function imgui_drawlist_flags_set
/// @param {Pointer} list
/// @param {Real} flags
/// @return {Undefined}
function imgui_drawlist_flags_set(list, flags) {
    return __imgui_drawlist_flags_set(list, flags);
}

/// @function imgui_drawlist_flag_toggle
/// @param {Pointer} list
/// @param {Real} flag
/// @return {Bool}
function imgui_drawlist_flag_toggle(list, flag) {
    return __imgui_drawlist_flag_toggle(list, flag);
}

/// @function imgui_memory_editor_window
/// @param {String} title
/// @param {Real} buffer
/// @param {Real} [offset=0]
/// @param {Real} [size=buffer_get_size⌊buffer⌉]
/// @return {Undefined}
function imgui_memory_editor_window(title, buffer, offset=0, size=buffer_get_size(buffer)) {
    return __imgui_memory_editor_window(title, buffer, offset, size);
}

/// @function imgui_memory_editor_contents
/// @param {Real} buffer
/// @param {Real} [offset=0]
/// @param {Real} [size=buffer_get_size⌊buffer⌉]
/// @return {Undefined}
function imgui_memory_editor_contents(buffer, offset=0, size=buffer_get_size(buffer)) {
    return __imgui_memory_editor_contents(buffer, offset, size);
}

/// @function imgui_get_font
/// @return {Pointer}
function imgui_get_font() {
    return __imgui_get_font();
}

/// @function imgui_push_font
/// @param {Any} [_ptr=undefined]
/// @return {Undefined}
function imgui_push_font(_ptr=undefined) {
    return __imgui_push_font(_ptr);
}

/// @function imgui_pop_font
/// @return {Undefined}
function imgui_pop_font() {
    return __imgui_pop_font();
}

/// @function imgui_add_font_from_file
/// @param {String} file
/// @param {Real} size
/// @return {Pointer|Undefined}
function imgui_add_font_from_file(file, size) {
    return __imgui_add_font_from_file(file, size);
}

/// @function imgui_add_font_default
/// @return {Unknown<unset>}
function imgui_add_font_default() {
    return __imgui_add_font_default();
}

/// @function imgui_get_font_size
/// @return {Real}
function imgui_get_font_size() {
    return __imgui_get_font_size();
}

/// @function imgui_is_key_down
/// @param {ImGuiKey} key
/// @param {ImGuiID} [owner_id=undefined]
/// @return {Bool}
function imgui_is_key_down(key, owner_id=undefined) {
    return __imgui_is_key_down(key, owner_id);
}

/// @function imgui_is_key_pressed
/// @param {ImGuiKey} key
/// @param {Bool} [_repeat=undefined]
/// @return {Bool}
function imgui_is_key_pressed(key, _repeat=undefined) {
    return __imgui_is_key_pressed(key, _repeat);
}

/// @function imgui_is_key_released
/// @param {ImGuiKey} key
/// @param {ImGuiID} [owner_id=undefined]
/// @return {Bool}
function imgui_is_key_released(key, owner_id=undefined) {
    return __imgui_is_key_released(key, owner_id);
}

/// @function imgui_is_key_chord_pressed
/// @param {ImGuiKeyChord} key_chord
/// @param {ImGuiInputFlags} [flags=undefined]
/// @param {ImGuiID} [owner_id=undefined]
/// @return {Bool}
function imgui_is_key_chord_pressed(key_chord, flags=undefined, owner_id=undefined) {
    return __imgui_is_key_chord_pressed(key_chord, flags, owner_id);
}

/// @function imgui_get_key_pressed_amount
/// @param {ImGuiKey} key
/// @param {Float} repeat_delay
/// @param {Float} rate
/// @return {Real}
function imgui_get_key_pressed_amount(key, repeat_delay, rate) {
    return __imgui_get_key_pressed_amount(key, repeat_delay, rate);
}

/// @function imgui_get_key_name
/// @param {ImGuiKey} key
/// @return {String}
function imgui_get_key_name(key) {
    return __imgui_get_key_name(key);
}

/// @function imgui_get_key_chord_name
/// @param {ImGuiKeyChord} key_chord
/// @return {String}
function imgui_get_key_chord_name(key_chord) {
    return __imgui_get_key_chord_name(key_chord);
}

/// @function imgui_is_mouse_down
/// @param {ImGuiMouseButton} button
/// @param {ImGuiID} [owner_id=undefined]
/// @return {Bool}
function imgui_is_mouse_down(button, owner_id=undefined) {
    return __imgui_is_mouse_down(button, owner_id);
}

/// @function imgui_is_mouse_clicked
/// @param {ImGuiMouseButton} button
/// @param {Bool|ImGuiInputFlags} [repeat_or_flags=undefined]
/// @param {ImGuiID} [owner_id=undefined]
/// @return {Bool}
function imgui_is_mouse_clicked(button, repeat_or_flags=undefined, owner_id=undefined) {
    return __imgui_is_mouse_clicked(button, repeat_or_flags, owner_id);
}

/// @function imgui_is_mouse_released
/// @param {ImGuiMouseButton} button
/// @param {ImGuiID} [owner_id=undefined]
/// @return {Bool}
function imgui_is_mouse_released(button, owner_id=undefined) {
    return __imgui_is_mouse_released(button, owner_id);
}

/// @function imgui_is_mouse_double_clicked
/// @param {ImGuiMouseButton} button
/// @param {ImGuiID} [owner_id=undefined]
/// @return {Bool}
function imgui_is_mouse_double_clicked(button, owner_id=undefined) {
    return __imgui_is_mouse_double_clicked(button, owner_id);
}

/// @function imgui_get_mouse_clicked_count
/// @param {ImGuiMouseButton} button
/// @return {Real}
function imgui_get_mouse_clicked_count(button) {
    return __imgui_get_mouse_clicked_count(button);
}

/// @function imgui_is_mouse_hovering_rect
/// @param {Real} min_x
/// @param {Real} min_y
/// @param {Real} max_x
/// @param {Real} max_y
/// @param {Bool} [clip=true]
/// @return {Bool}
function imgui_is_mouse_hovering_rect(min_x, min_y, max_x, max_y, clip=true) {
    return __imgui_is_mouse_hovering_rect(min_x, min_y, max_x, max_y, clip);
}

/// @function imgui_is_mouse_pos_valid
/// @param {Real} mouse_x
/// @param {Real} mouse_y
/// @return {Bool}
function imgui_is_mouse_pos_valid(mouse_x, mouse_y) {
    return __imgui_is_mouse_pos_valid(mouse_x, mouse_y);
}

/// @function imgui_is_any_mouse_down
/// @return {Bool}
function imgui_is_any_mouse_down() {
    return __imgui_is_any_mouse_down();
}

/// @function imgui_is_mouse_dragging
/// @param {ImGuiMouseButton} button
/// @param {Real} [lock_threshold=-1]
/// @return {Bool}
function imgui_is_mouse_dragging(button, lock_threshold=-1) {
    return __imgui_is_mouse_dragging(button, lock_threshold);
}

/// @function imgui_get_mouse_pos_x
/// @return {Real}
function imgui_get_mouse_pos_x() {
    return __imgui_get_mouse_pos_x();
}

/// @function imgui_get_mouse_pos_y
/// @return {Real}
function imgui_get_mouse_pos_y() {
    return __imgui_get_mouse_pos_y();
}

/// @function imgui_get_mouse_pos_on_opening_current_popup_x
/// @return {Real}
function imgui_get_mouse_pos_on_opening_current_popup_x() {
    return __imgui_get_mouse_pos_on_opening_current_popup_x();
}

/// @function imgui_get_mouse_pos_on_opening_current_popup_y
/// @return {Real}
function imgui_get_mouse_pos_on_opening_current_popup_y() {
    return __imgui_get_mouse_pos_on_opening_current_popup_y();
}

/// @function imgui_get_mouse_drag_delta_x
/// @param {ImGuiMouseButton} button
/// @param {Real} [lock_threshold=-1]
/// @return {Real}
function imgui_get_mouse_drag_delta_x(button, lock_threshold=-1) {
    return __imgui_get_mouse_drag_delta_x(button, lock_threshold);
}

/// @function imgui_get_mouse_drag_delta_y
/// @param {ImGuiMouseButton} button
/// @param {Real} [lock_threshold=-1]
/// @return {Real}
function imgui_get_mouse_drag_delta_y(button, lock_threshold=-1) {
    return __imgui_get_mouse_drag_delta_y(button, lock_threshold);
}

/// @function imgui_reset_mouse_drag_delta
/// @param {ImGuiMouseButton} button
/// @return {Undefined}
function imgui_reset_mouse_drag_delta(button) {
    return __imgui_reset_mouse_drag_delta(button);
}

/// @function imgui_shortcut
/// @param {ImGuiKeyChord} key_chord
/// @param {ImGuiInputFlags} flags
/// @param {ImGuiID} [owner_id=undefined]
/// @return {Bool}
function imgui_shortcut(key_chord, flags, owner_id=undefined) {
    return __imgui_shortcut(key_chord, flags, owner_id);
}

/// @function imgui_set_next_item_shortcut
/// @param {ImGuiKeyChord} key_chord
/// @param {ImGuiInputFlags} flags
/// @return {Undefined}
function imgui_set_next_item_shortcut(key_chord, flags) {
    return __imgui_set_next_item_shortcut(key_chord, flags);
}

/// @function imgui_set_item_key_owner
/// @param {ImGuiKey} key
/// @param {ImGuiInputFlags} [flags=undefined]
/// @return {Undefined}
function imgui_set_item_key_owner(key, flags=undefined) {
    return __imgui_set_item_key_owner(key, flags);
}

/// @function imgui_input_text
/// @param {String} label
/// @param {String} val
/// @param {Enum.ImGuiInputTextFlags} [flags=ImGuiInputTextFlags.None]
/// @return {String}
function imgui_input_text(label, val, flags=ImGuiInputTextFlags.None) {
    return __imgui_input_text(label, val, flags);
}

/// @function imgui_input_textmultiline
/// @param {String} label
/// @param {String} val
/// @param {Real} [width=0]
/// @param {Real} [height=0]
/// @param {Enum.ImGuiInputTextFlags} [flags=ImGuiInputTextFlags.None]
/// @return {String}
function imgui_input_textmultiline(label, val, width=0, height=0, flags=ImGuiInputTextFlags.None) {
    return __imgui_input_textmultiline(label, val, width, height, flags);
}

/// @function imgui_input_textwithhint
/// @param {String} label
/// @param {String} hint
/// @param {String} val
/// @param {Enum.ImGuiInputTextFlags} [flags=ImGuiInputTextFlags.None]
/// @return {String}
function imgui_input_textwithhint(label, hint, val, flags=ImGuiInputTextFlags.None) {
    return __imgui_input_textwithhint(label, hint, val, flags);
}

/// @function imgui_input_float
/// @param {String} label
/// @param {Real} v
/// @param {Real} [step=0]
/// @param {Real} [step_fast=0]
/// @param {String} [format=%.3f]
/// @param {Enum.ImGuiInputTextFlags} [flags=ImGuiInputTextFlags.None]
/// @return {Real}
function imgui_input_float(label, v, step=0, step_fast=0, format="%.3f", flags=ImGuiInputTextFlags.None) {
    return __imgui_input_float(label, v, step, step_fast, format, flags);
}

/// @function imgui_input_float2
/// @param {String} label
/// @param {Array<Real>} v
/// @param {Real} [step=0]
/// @param {Real} [step_fast=0]
/// @param {String} [format=%.3f]
/// @param {Enum.ImGuiInputTextFlags} [flags=ImGuiInputTextFlags.None]
/// @return {Bool}
function imgui_input_float2(label, v, step=0, step_fast=0, format="%.3f", flags=ImGuiInputTextFlags.None) {
    return __imgui_input_float2(label, v, step, step_fast, format, flags);
}

/// @function imgui_input_float3
/// @param {String} label
/// @param {Array<Real>} v
/// @param {Real} [step=0]
/// @param {Real} [step_fast=0]
/// @param {String} [format=%.3f]
/// @param {Enum.ImGuiInputTextFlags} [flags=ImGuiInputTextFlags.None]
/// @return {Bool}
function imgui_input_float3(label, v, step=0, step_fast=0, format="%.3f", flags=ImGuiInputTextFlags.None) {
    return __imgui_input_float3(label, v, step, step_fast, format, flags);
}

/// @function imgui_input_float4
/// @param {String} label
/// @param {Array<Real>} v
/// @param {Real} [step=0]
/// @param {Real} [step_fast=0]
/// @param {String} [format=%.3f]
/// @param {Enum.ImGuiInputTextFlags} [flags=ImGuiInputTextFlags.None]
/// @return {Bool}
function imgui_input_float4(label, v, step=0, step_fast=0, format="%.3f", flags=ImGuiInputTextFlags.None) {
    return __imgui_input_float4(label, v, step, step_fast, format, flags);
}

/// @function imgui_input_floatn
/// @param {String} label
/// @param {Array<Real>} v
/// @param {Real} [step=0]
/// @param {Real} [step_fast=0]
/// @param {String} [format=%.3f]
/// @param {Enum.ImGuiInputTextFlags} [flags=ImGuiInputTextFlags.None]
/// @return {Bool}
function imgui_input_floatn(label, v, step=0, step_fast=0, format="%.3f", flags=ImGuiInputTextFlags.None) {
    return __imgui_input_floatn(label, v, step, step_fast, format, flags, array_length(v));
}

/// @function imgui_input_int
/// @param {String} label
/// @param {Real} v
/// @param {Real} [step=0]
/// @param {Real} [step_fast=0]
/// @param {Enum.ImGuiInputTextFlags} [flags=ImGuiInputTextFlags.None]
/// @return {Real}
function imgui_input_int(label, v, step=0, step_fast=0, flags=ImGuiInputTextFlags.None) {
    return __imgui_input_int(label, v, step, step_fast, flags);
}

/// @function imgui_input_int2
/// @param {String} label
/// @param {Array<Real>} v
/// @param {Enum.ImGuiInputTextFlags} [flags=ImGuiInputTextFlags.None]
/// @return {Bool}
function imgui_input_int2(label, v, flags=ImGuiInputTextFlags.None) {
    return __imgui_input_int2(label, v, flags);
}

/// @function imgui_input_int3
/// @param {String} label
/// @param {Array<Real>} v
/// @param {Enum.ImGuiInputTextFlags} [flags=ImGuiInputTextFlags.None]
/// @return {Bool}
function imgui_input_int3(label, v, flags=ImGuiInputTextFlags.None) {
    return __imgui_input_int3(label, v, flags);
}

/// @function imgui_input_int4
/// @param {String} label
/// @param {Array<Real>} v
/// @param {Enum.ImGuiInputTextFlags} [flags=ImGuiInputTextFlags.None]
/// @return {Bool}
function imgui_input_int4(label, v, flags=ImGuiInputTextFlags.None) {
    return __imgui_input_int4(label, v, flags);
}

/// @function imgui_input_intn
/// @param {String} label
/// @param {Array<Real>} v
/// @param {Enum.ImGuiInputTextFlags} [flags=ImGuiInputTextFlags.None]
/// @return {Bool}
function imgui_input_intn(label, v, flags=ImGuiInputTextFlags.None) {
    return __imgui_input_intn(label, v, flags, array_length(v));
}

/// @function imgui_input_double
/// @param {String} label
/// @param {Real} v
/// @param {Real} [step=0]
/// @param {Real} [step_fast=0]
/// @param {String} [format=%.6f]
/// @param {Enum.ImGuiInputTextFlags} [flags=ImGuiInputTextFlags.None]
/// @return {Real}
function imgui_input_double(label, v, step=0, step_fast=0, format="%.6f", flags=ImGuiInputTextFlags.None) {
    return __imgui_input_double(label, v, step, step_fast, format, flags);
}

/// @function imgui_spacing
/// @return {Undefined}
function imgui_spacing() {
    return __imgui_spacing();
}

/// @function imgui_dummy
/// @param {Real} width
/// @param {Real} height
/// @return {Undefined}
function imgui_dummy(width, height) {
    return __imgui_dummy(width, height);
}

/// @function imgui_newline
/// @return {Undefined}
function imgui_newline() {
    return __imgui_newline();
}

/// @function imgui_align_text_to_frame_padding
/// @return {Undefined}
function imgui_align_text_to_frame_padding() {
    return __imgui_align_text_to_frame_padding();
}

/// @function imgui_separator
/// @return {Undefined}
function imgui_separator() {
    return __imgui_separator();
}

/// @function imgui_separator_text
/// @param {String} label
/// @return {Undefined}
function imgui_separator_text(label) {
    return __imgui_separator_text(label);
}

/// @function imgui_indent
/// @param {Real} [indent_w=0]
/// @return {Undefined}
function imgui_indent(indent_w=0) {
    return __imgui_indent(indent_w);
}

/// @function imgui_unindent
/// @param {Real} [indent_w=0]
/// @return {Undefined}
function imgui_unindent(indent_w=0) {
    return __imgui_unindent(indent_w);
}

/// @function imgui_sameline
/// @param {Real} [offset_from_start_x=0]
/// @param {Real} [spacing=-1]
/// @return {Undefined}
function imgui_sameline(offset_from_start_x=0, spacing=-1) {
    return __imgui_sameline(offset_from_start_x, spacing);
}

/// @function imgui_begin_group
/// @return {Undefined}
function imgui_begin_group() {
    return __imgui_begin_group();
}

/// @function imgui_end_group
/// @return {Undefined}
function imgui_end_group() {
    return __imgui_end_group();
}

/// @function imgui_get_cursor_pos_x
/// @return {Real}
function imgui_get_cursor_pos_x() {
    return __imgui_get_cursor_pos_x();
}

/// @function imgui_get_cursor_pos_y
/// @return {Real}
function imgui_get_cursor_pos_y() {
    return __imgui_get_cursor_pos_y();
}

/// @function imgui_get_cursor_start_pos_x
/// @return {Real}
function imgui_get_cursor_start_pos_x() {
    return __imgui_get_cursor_start_pos_x();
}

/// @function imgui_get_cursor_start_pos_y
/// @return {Real}
function imgui_get_cursor_start_pos_y() {
    return __imgui_get_cursor_start_pos_y();
}

/// @function imgui_get_cursor_screen_pos_x
/// @return {Real}
function imgui_get_cursor_screen_pos_x() {
    return __imgui_get_cursor_screen_pos_x();
}

/// @function imgui_get_cursor_screen_pos_y
/// @return {Real}
function imgui_get_cursor_screen_pos_y() {
    return __imgui_get_cursor_screen_pos_y();
}

/// @function imgui_set_cursor_screen_pos
/// @param {Real} _x
/// @param {Real} _y
/// @return {Undefined}
function imgui_set_cursor_screen_pos(_x, _y) {
    return __imgui_set_cursor_screen_pos(_x, _y);
}

/// @function imgui_set_cursor_pos
/// @param {Real} local_x
/// @param {Real} local_y
/// @return {Undefined}
function imgui_set_cursor_pos(local_x, local_y) {
    return __imgui_set_cursor_pos(local_x, local_y);
}

/// @function imgui_set_cursor_pos_x
/// @param {Real} local_x
/// @return {Undefined}
function imgui_set_cursor_pos_x(local_x) {
    return __imgui_set_cursor_pos_x(local_x);
}

/// @function imgui_set_cursor_pos_y
/// @param {Real} local_y
/// @return {Undefined}
function imgui_set_cursor_pos_y(local_y) {
    return __imgui_set_cursor_pos_y(local_y);
}

/// @function imgui_get_text_line_height
/// @return {Real}
function imgui_get_text_line_height() {
    return __imgui_get_text_line_height();
}

/// @function imgui_get_text_line_height_with_spacing
/// @return {Real}
function imgui_get_text_line_height_with_spacing() {
    return __imgui_get_text_line_height_with_spacing();
}

/// @function imgui_get_frame_height
/// @return {Real}
function imgui_get_frame_height() {
    return __imgui_get_frame_height();
}

/// @function imgui_get_frame_height_with_spacing
/// @return {Real}
function imgui_get_frame_height_with_spacing() {
    return __imgui_get_frame_height_with_spacing();
}

/// @function imgui_get_content_region_avail_x
/// @return {Real}
function imgui_get_content_region_avail_x() {
    return __imgui_get_content_region_avail_x();
}

/// @function imgui_get_content_region_avail_y
/// @return {Real}
function imgui_get_content_region_avail_y() {
    return __imgui_get_content_region_avail_y();
}

/// @function imgui_get_content_region_max_x
/// @return {Real}
function imgui_get_content_region_max_x() {
    return __imgui_get_content_region_max_x();
}

/// @function imgui_get_content_region_max_y
/// @return {Real}
function imgui_get_content_region_max_y() {
    return __imgui_get_content_region_max_y();
}

/// @function imgui_get_window_content_region_min_x
/// @return {Real}
function imgui_get_window_content_region_min_x() {
    return __imgui_get_window_content_region_min_x();
}

/// @function imgui_get_window_content_region_min_y
/// @return {Real}
function imgui_get_window_content_region_min_y() {
    return __imgui_get_window_content_region_min_y();
}

/// @function imgui_get_window_content_region_max_x
/// @return {Real}
function imgui_get_window_content_region_max_x() {
    return __imgui_get_window_content_region_max_x();
}

/// @function imgui_get_window_content_region_max_y
/// @return {Real}
function imgui_get_window_content_region_max_y() {
    return __imgui_get_window_content_region_max_y();
}

/// @function imgui_push_item_width
/// @param {Real} item_width
/// @return {Undefined}
function imgui_push_item_width(item_width) {
    return __imgui_push_item_width(item_width);
}

/// @function imgui_pop_item_width
/// @return {Undefined}
function imgui_pop_item_width() {
    return __imgui_pop_item_width();
}

/// @function imgui_set_next_item_width
/// @param {Real} item_width
/// @return {Undefined}
function imgui_set_next_item_width(item_width) {
    return __imgui_set_next_item_width(item_width);
}

/// @function imgui_calc_item_width
/// @return {Real}
function imgui_calc_item_width() {
    return __imgui_calc_item_width();
}

/// @function imgui_push_text_wrap_pos
/// @param {Real} [wrap_local_pos_x=0]
/// @return {Undefined}
function imgui_push_text_wrap_pos(wrap_local_pos_x=0) {
    return __imgui_push_text_wrap_pos(wrap_local_pos_x);
}

/// @function imgui_pop_text_wrap_pos
/// @return {Undefined}
function imgui_pop_text_wrap_pos() {
    return __imgui_pop_text_wrap_pos();
}

/// @function imgui_push_clip_rect
/// @param {Real} clip_min_x
/// @param {Real} clip_min_y
/// @param {Real} clip_max_x
/// @param {Real} clip_max_y
/// @param {Bool} intersect_with_current_clip_rect
/// @return {Undefined}
function imgui_push_clip_rect(clip_min_x, clip_min_y, clip_max_x, clip_max_y, intersect_with_current_clip_rect) {
    return __imgui_push_clip_rect(clip_min_x, clip_min_y, clip_max_x, clip_max_y, intersect_with_current_clip_rect);
}

/// @function imgui_pop_clip_rect
/// @return {Undefined}
function imgui_pop_clip_rect() {
    return __imgui_pop_clip_rect();
}

/// @function imgui_begin_listbox
/// @param {String} label
/// @param {Real} [width=0]
/// @param {Real} [height=0]
/// @return {Bool}
function imgui_begin_listbox(label, width=0, height=0) {
    return __imgui_begin_listbox(label, width, height);
}

/// @function imgui_end_listbox
/// @return {Undefined}
function imgui_end_listbox() {
    return __imgui_end_listbox();
}

/// @function imgui_listbox
/// @return {Unknown<unset>}
function imgui_listbox() {
    return __imgui_listbox();
}

/// @function imgui_begin_menubar
/// @return {Bool}
function imgui_begin_menubar() {
    return __imgui_begin_menubar();
}

/// @function imgui_end_menubar
/// @return {Undefined}
function imgui_end_menubar() {
    return __imgui_end_menubar();
}

/// @function imgui_begin_mainmenubar
/// @return {Bool}
function imgui_begin_mainmenubar() {
    return __imgui_begin_mainmenubar();
}

/// @function imgui_end_mainmenubar
/// @return {Undefined}
function imgui_end_mainmenubar() {
    return __imgui_end_mainmenubar();
}

/// @function imgui_begin_menu
/// @param {String} label
/// @param {Bool} [enabled=true]
/// @return {Bool}
function imgui_begin_menu(label, enabled=true) {
    return __imgui_begin_menu(label, enabled);
}

/// @function imgui_end_menu
/// @return {Undefined}
function imgui_end_menu() {
    return __imgui_end_menu();
}

/// @function imgui_menu_item
/// @param {String} label
/// @param {String} [shortcut=]
/// @param {Bool} [selected=undefined]
/// @param {Bool} [enabled=true]
/// @param {Enum.ImGuiReturnMask} [mask=ImGuiReturnMask.Return]
/// @return {Real}
function imgui_menu_item(label, shortcut="", selected=undefined, enabled=true, mask=ImGuiReturnMask.Return) {
    return __imgui_menu_item(label, shortcut, selected, enabled, mask);
}

/// @function imgui_begin_drag_drop_source
/// @param {Enum.ImGuiDragDropFlags} [flags=ImGuiDragDropFlags.None]
/// @return {Bool}
function imgui_begin_drag_drop_source(flags=ImGuiDragDropFlags.None) {
    return __imgui_begin_drag_drop_source(flags);
}

/// @function imgui_end_drag_drop_source
/// @return {Undefined}
function imgui_end_drag_drop_source() {
    return __imgui_end_drag_drop_source();
}

/// @function imgui_begin_drag_drop_target
/// @return {Bool}
function imgui_begin_drag_drop_target() {
    return __imgui_begin_drag_drop_target();
}

/// @function imgui_end_drag_drop_target
/// @return {Undefined}
function imgui_end_drag_drop_target() {
    return __imgui_end_drag_drop_target();
}

/// @function imgui_set_drag_drop_payload
/// @param {String} type
/// @param {Any} data
/// @param {Enum.ImGuiCond} [cond=ImGuiCond.None]
/// @return {Bool}
function imgui_set_drag_drop_payload(type, data, cond=ImGuiCond.None) {
    return __imgui_set_drag_drop_payload(type, data, cond);
}

/// @function imgui_accept_drag_drop_payload
/// @param {String} type
/// @param {Enum.ImGuiDragDropFlags} [flags=ImGuiDragDropFlags.None]
/// @return {Any|Undefined}
function imgui_accept_drag_drop_payload(type, flags=ImGuiDragDropFlags.None) {
    return __imgui_accept_drag_drop_payload(type, flags);
}

/// @function imgui_get_drag_drop_payload
/// @return {Any|Undefined}
function imgui_get_drag_drop_payload() {
    return __imgui_get_drag_drop_payload();
}

/// @function imgui_get_payload_type
/// @return {String|Undefined}
function imgui_get_payload_type() {
    return __imgui_get_payload_type();
}

/// @function imgui_plot_lines
/// @param {String} label
/// @param {Array<Real>} values
/// @param {Real} [values_offset=0]
/// @param {String} [overlay_text=]
/// @param {Real} [scale_min=0]
/// @param {Real} [scale_max=0]
/// @param {Real} [graph_width=0]
/// @param {Real} [graph_height=0]
/// @return {Undefined}
function imgui_plot_lines(label, values, values_offset=0, overlay_text="", scale_min=0, scale_max=0, graph_width=0, graph_height=0) {
    return __imgui_plot_lines(label, values, values_offset, overlay_text, scale_min, scale_max, graph_width, graph_height, array_length(values));
}

/// @function imgui_plot_histogram
/// @param {String} label
/// @param {Array<Real>} values
/// @param {Real} [values_offset=0]
/// @param {String} [overlay_text=]
/// @param {Real} [scale_min=0]
/// @param {Real} [scale_max=0]
/// @param {Real} [graph_width=0]
/// @param {Real} [graph_height=0]
/// @return {Undefined}
function imgui_plot_histogram(label, values, values_offset=0, overlay_text="", scale_min=0, scale_max=0, graph_width=0, graph_height=0) {
    return __imgui_plot_histogram(label, values, values_offset, overlay_text, scale_min, scale_max, graph_width, graph_height, array_length(values));
}

/// @function imgui_begin_popup
/// @param {String} str_id
/// @param {Enum.ImGuiWindowFlags} [flags=ImGuiWindowFlags.None]
/// @return {Bool}
function imgui_begin_popup(str_id, flags=ImGuiWindowFlags.None) {
    return __imgui_begin_popup(str_id, flags);
}

/// @function imgui_begin_popup_modal
/// @param {String} name
/// @param {Bool} [open=undefined]
/// @param {Enum.ImGuiWindowFlags} [flags=ImGuiWindowFlags.None]
/// @param {Enum.ImGuiReturnMask} [mask=ImGuiReturnMask.Return]
/// @return {Real}
function imgui_begin_popup_modal(name, open=undefined, flags=ImGuiWindowFlags.None, mask=ImGuiReturnMask.Return) {
    return __imgui_begin_popup_modal(name, open, flags, mask);
}

/// @function imgui_end_popup
/// @return {Undefined}
function imgui_end_popup() {
    return __imgui_end_popup();
}

/// @function imgui_open_popup
/// @param {String} str_id
/// @param {Enum.ImGuiPopupFlags} [flags=ImGuiPopupFlags.None]
/// @return {Undefined}
function imgui_open_popup(str_id, flags=ImGuiPopupFlags.None) {
    return __imgui_open_popup(str_id, flags);
}

/// @function imgui_open_popup_on_item_click
/// @param {String} [str_id=undefined]
/// @param {Enum.ImGuiPopupFlags} [flags=ImGuiPopupFlags.MouseButtonRight]
/// @return {Undefined}
function imgui_open_popup_on_item_click(str_id="undefined", flags=ImGuiPopupFlags.MouseButtonRight) {
    return __imgui_open_popup_on_item_click(str_id, flags);
}

/// @function imgui_close_current_popup
/// @return {Undefined}
function imgui_close_current_popup() {
    return __imgui_close_current_popup();
}

/// @function imgui_begin_popup_context_item
/// @param {String} [str_id=undefined]
/// @param {Enum.ImGuiPopupFlags} [flags=ImGuiPopupFlags.MouseButtonRight]
/// @return {Bool}
function imgui_begin_popup_context_item(str_id="undefined", flags=ImGuiPopupFlags.MouseButtonRight) {
    return __imgui_begin_popup_context_item(str_id, flags);
}

/// @function imgui_begin_popup_context_window
/// @param {String} [str_id=undefined]
/// @param {Enum.ImGuiPopupFlags} [flags=ImGuiPopupFlags.MouseButtonRight]
/// @return {Bool}
function imgui_begin_popup_context_window(str_id="undefined", flags=ImGuiPopupFlags.MouseButtonRight) {
    return __imgui_begin_popup_context_window(str_id, flags);
}

/// @function imgui_begin_popup_context_void
/// @param {String} [str_id=undefined]
/// @param {Enum.ImGuiPopupFlags} [flags=ImGuiPopupFlags.MouseButtonRight]
/// @return {Bool}
function imgui_begin_popup_context_void(str_id="undefined", flags=ImGuiPopupFlags.MouseButtonRight) {
    return __imgui_begin_popup_context_void(str_id, flags);
}

/// @function imgui_is_popup_open
/// @param {String} str_id
/// @param {Enum.ImGuiPopupFlags} [flags=ImGuiPopupFlags.None]
/// @return {Bool}
function imgui_is_popup_open(str_id, flags=ImGuiPopupFlags.None) {
    return __imgui_is_popup_open(str_id, flags);
}

/// @function imgui_selectable
/// @param {String} label
/// @param {Bool} [selected=false]
/// @param {Enum.ImGuiSelectableFlags} [flags=ImGuiSelectableFlags.None]
/// @param {Real} [width=0]
/// @param {Real} [height=0]
/// @return {Bool}
function imgui_selectable(label, selected=false, flags=ImGuiSelectableFlags.None, width=0, height=0) {
    return __imgui_selectable(label, selected, flags, width, height);
}

/// @function imgui_is_item_toggled_selection
/// @return {Bool}
function imgui_is_item_toggled_selection() {
    return __imgui_is_item_toggled_selection();
}

/// @function imgui_create_multi_select_basic_storage
/// @param {Struct} yystruct
/// @return {Pointer}
function imgui_create_multi_select_basic_storage(yystruct) {
    return __imgui_create_multi_select_basic_storage(yystruct);
}

/// @function imgui_destroy_multi_select_basic_storage
/// @param {Pointer} storage_ptr
/// @return {Undefined}
function imgui_destroy_multi_select_basic_storage(storage_ptr) {
    return __imgui_destroy_multi_select_basic_storage(storage_ptr);
}

/// @function imgui_begin_multi_select
/// @param {ImGuiMultiSelectFlags} flags
/// @param {Real} size
/// @param {Real} items_count
/// @return {ImGuiMultiSelectIO}
function imgui_begin_multi_select(flags, size, items_count) {
    return __imgui_begin_multi_select(flags, size, items_count);
}

/// @function imgui_selection_storage_apply_requests
/// @param {ImGuiSelectionBasicStorage} selection
/// @param {ImGuiMultiSelectIO} ms_io
/// @return {Undefined}
function imgui_selection_storage_apply_requests(selection, ms_io) {
    return __imgui_selection_storage_apply_requests(selection, ms_io);
}

/// @function imgui_end_multi_select
/// @return {ImGuiMultiSelectIO}
function imgui_end_multi_select() {
    return __imgui_end_multi_select();
}

/// @function imgui_set_next_item_selection_user_data
/// @param {Real} idx
/// @return {Unknown<unset>}
function imgui_set_next_item_selection_user_data(idx) {
    return __imgui_set_next_item_selection_user_data(idx);
}

/// @function imgui_selection_storage_contains
/// @param {ImGuiSelectionBasicStorage} selection
/// @param {Real} idx
/// @return {Bool}
function imgui_selection_storage_contains(selection, idx) {
    return __imgui_selection_storage_contains(selection, idx);
}

/// @function imgui_selection_storage_size
/// @param {ImGuiSelectionBasicStorage} selection
/// @param {Any} [value=undefined]
/// @return {Real}
function imgui_selection_storage_size(selection, value=undefined) {
    return __imgui_selection_storage_size(selection, value);
}

/// @function imgui_slider_float
/// @param {String} label
/// @param {Real} v
/// @param {Real} [v_min=0]
/// @param {Real} [v_max=0]
/// @param {String} [format=%.3f]
/// @param {Enum.ImGuiSliderFlags} [flags=ImGuiSliderFlags.None]
/// @return {Real}
function imgui_slider_float(label, v, v_min=0, v_max=0, format="%.3f", flags=ImGuiSliderFlags.None) {
    return __imgui_slider_float(label, v, v_min, v_max, format, flags);
}

/// @function imgui_slider_float2
/// @param {String} label
/// @param {Array<Real>} v
/// @param {Real} [v_min=0]
/// @param {Real} [v_max=0]
/// @param {String} [format=%.3f]
/// @param {Enum.ImGuiSliderFlags} [flags=ImGuiSliderFlags.None]
/// @return {Bool}
function imgui_slider_float2(label, v, v_min=0, v_max=0, format="%.3f", flags=ImGuiSliderFlags.None) {
    return __imgui_slider_float2(label, v, v_min, v_max, format, flags);
}

/// @function imgui_slider_float3
/// @param {String} label
/// @param {Array<Real>} v
/// @param {Real} [v_min=0]
/// @param {Real} [v_max=0]
/// @param {String} [format=%.3f]
/// @param {Enum.ImGuiSliderFlags} [flags=ImGuiSliderFlags.None]
/// @return {Bool}
function imgui_slider_float3(label, v, v_min=0, v_max=0, format="%.3f", flags=ImGuiSliderFlags.None) {
    return __imgui_slider_float3(label, v, v_min, v_max, format, flags);
}

/// @function imgui_slider_float4
/// @param {String} label
/// @param {Array<Real>} v
/// @param {Real} [v_min=0]
/// @param {Real} [v_max=0]
/// @param {String} [format=%.3f]
/// @param {Enum.ImGuiSliderFlags} [flags=ImGuiSliderFlags.None]
/// @return {Bool}
function imgui_slider_float4(label, v, v_min=0, v_max=0, format="%.3f", flags=ImGuiSliderFlags.None) {
    return __imgui_slider_float4(label, v, v_min, v_max, format, flags);
}

/// @function imgui_slider_floatn
/// @param {String} label
/// @param {Array<Real>} v
/// @param {Real} [v_speed=1]
/// @param {Real} [v_min=0]
/// @param {Real} [v_max=0]
/// @param {String} [format=%.3f]
/// @param {Enum.ImGuiSliderFlags} [flags=ImGuiSliderFlags.None]
/// @return {Bool}
function imgui_slider_floatn(label, v, v_speed=1, v_min=0, v_max=0, format="%.3f", flags=ImGuiSliderFlags.None) {
    return __imgui_slider_floatn(label, v, v_speed, v_min, v_max, format, flags, array_length(v));
}

/// @function imgui_slider_int
/// @param {String} label
/// @param {Real} v
/// @param {Real} [v_min=0]
/// @param {Real} [v_max=0]
/// @param {String} [format=%d]
/// @param {Enum.ImGuiSliderFlags} [flags=ImGuiSliderFlags.None]
/// @return {Real}
function imgui_slider_int(label, v, v_min=0, v_max=0, format="%d", flags=ImGuiSliderFlags.None) {
    return __imgui_slider_int(label, v, v_min, v_max, format, flags);
}

/// @function imgui_slider_int2
/// @param {String} label
/// @param {Array<Real>} v
/// @param {Real} [v_min=0]
/// @param {Real} [v_max=0]
/// @param {String} [format=%d]
/// @param {Enum.ImGuiSliderFlags} [flags=ImGuiSliderFlags.None]
/// @return {Bool}
function imgui_slider_int2(label, v, v_min=0, v_max=0, format="%d", flags=ImGuiSliderFlags.None) {
    return __imgui_slider_int2(label, v, v_min, v_max, format, flags);
}

/// @function imgui_slider_int3
/// @param {String} label
/// @param {Array<Real>} v
/// @param {Real} [v_min=0]
/// @param {Real} [v_max=0]
/// @param {String} [format=%d]
/// @param {Enum.ImGuiSliderFlags} [flags=ImGuiSliderFlags.None]
/// @return {Bool}
function imgui_slider_int3(label, v, v_min=0, v_max=0, format="%d", flags=ImGuiSliderFlags.None) {
    return __imgui_slider_int3(label, v, v_min, v_max, format, flags);
}

/// @function imgui_slider_int4
/// @param {String} label
/// @param {Array<Real>} v
/// @param {Real} [v_min=0]
/// @param {Real} [v_max=0]
/// @param {String} [format=%d]
/// @param {Enum.ImGuiSliderFlags} [flags=ImGuiSliderFlags.None]
/// @return {Bool}
function imgui_slider_int4(label, v, v_min=0, v_max=0, format="%d", flags=ImGuiSliderFlags.None) {
    return __imgui_slider_int4(label, v, v_min, v_max, format, flags);
}

/// @function imgui_slider_intn
/// @param {String} label
/// @param {Array<Real>} v
/// @param {Real} [v_min=0]
/// @param {Real} [v_max=0]
/// @param {String} [format=%d]
/// @param {Enum.ImGuiSliderFlags} [flags=ImGuiSliderFlags.None]
/// @return {Bool}
function imgui_slider_intn(label, v, v_min=0, v_max=0, format="%d", flags=ImGuiSliderFlags.None) {
    return __imgui_slider_intn(label, v, v_min, v_max, format, flags, array_length(v));
}

/// @function imgui_vslider_float
/// @param {String} label
/// @param {Real} width
/// @param {Real} height
/// @param {Real} v
/// @param {Real} [v_min=0]
/// @param {Real} [v_max=0]
/// @param {String} [format=%.3f]
/// @param {Enum.ImGuiSliderFlags} [flags=ImGuiSliderFlags.None]
/// @return {Real}
function imgui_vslider_float(label, width, height, v, v_min=0, v_max=0, format="%.3f", flags=ImGuiSliderFlags.None) {
    return __imgui_vslider_float(label, width, height, v, v_min, v_max, format, flags);
}

/// @function imgui_vslider_int
/// @param {String} label
/// @param {Real} width
/// @param {Real} height
/// @param {Real} v
/// @param {Real} [v_min=0]
/// @param {Real} [v_max=0]
/// @param {String} [format=%d]
/// @param {Enum.ImGuiSliderFlags} [flags=ImGuiSliderFlags.None]
/// @return {Real}
function imgui_vslider_int(label, width, height, v, v_min=0, v_max=0, format="%d", flags=ImGuiSliderFlags.None) {
    return __imgui_vslider_int(label, width, height, v, v_min, v_max, format, flags);
}

/// @function imgui_slider_angle
/// @param {String} label
/// @param {Real} v_rad
/// @param {Real} [v_degrees_min=0]
/// @param {Real} [v_degrees_max=0]
/// @param {String} [format=%d]
/// @param {Enum.ImGuiSliderFlags} [flags=ImGuiSliderFlags.None]
/// @return {Real}
function imgui_slider_angle(label, v_rad, v_degrees_min=0, v_degrees_max=0, format="%d", flags=ImGuiSliderFlags.None) {
    return __imgui_slider_angle(label, v_rad, v_degrees_min, v_degrees_max, format, flags);
}

/// @function imgui_style_colors_dark
/// @return {Undefined}
function imgui_style_colors_dark() {
    return __imgui_style_colors_dark();
}

/// @function imgui_style_colors_light
/// @return {Undefined}
function imgui_style_colors_light() {
    return __imgui_style_colors_light();
}

/// @function imgui_style_colors_classic
/// @return {Undefined}
function imgui_style_colors_classic() {
    return __imgui_style_colors_classic();
}

/// @function imgui_push_style_color
/// @param {Real} idx
/// @param {Real} col
/// @param {Real} alpha
/// @return {Undefined}
function imgui_push_style_color(idx, col, alpha) {
    return __imgui_push_style_color(idx, col, alpha);
}

/// @function imgui_pop_style_color
/// @param {Real} [count=1]
/// @return {Undefined}
function imgui_pop_style_color(count=1) {
    return __imgui_pop_style_color(count);
}

/// @function imgui_push_style_var
/// @param {Real} idx
/// @param {Real} val
/// @param {Any} [val2=undefined]
/// @return {Undefined}
function imgui_push_style_var(idx, val, val2=undefined) {
    return __imgui_push_style_var(idx, val, val2);
}

/// @function imgui_push_style_var_x
/// @param {Real} idx
/// @param {Real} val_x
/// @return {Undefined}
function imgui_push_style_var_x(idx, val_x) {
    return __imgui_push_style_var_x(idx, val_x);
}

/// @function imgui_push_style_var_y
/// @param {Real} idx
/// @param {Real} val_y
/// @return {Undefined}
function imgui_push_style_var_y(idx, val_y) {
    return __imgui_push_style_var_y(idx, val_y);
}

/// @function imgui_pop_style_var
/// @param {Real} [count=1]
/// @return {Undefined}
function imgui_pop_style_var(count=1) {
    return __imgui_pop_style_var(count);
}

/// @function imgui_get_style_color
/// @param {Real} idx
/// @return {Real}
function imgui_get_style_color(idx) {
    return __imgui_get_style_color(idx);
}

/// @function imgui_get_style_color_name
/// @param {Real} idx
/// @return {String}
function imgui_get_style_color_name(idx) {
    return __imgui_get_style_color_name(idx);
}

/// @function imgui_set_style_color
/// @param {Real} idx
/// @param {Real} col
/// @param {Real} alpha
/// @return {Undefined}
function imgui_set_style_color(idx, col, alpha) {
    return __imgui_set_style_color(idx, col, alpha);
}

/// @function imgui_set_style_var
/// @param {Real} idx
/// @param {Any} val
/// @param {Any} [val2=undefined]
/// @return {Undefined}
function imgui_set_style_var(idx, val, val2=undefined) {
    return __imgui_set_style_var(idx, val, val2);
}

/// @function imgui_begin_table
/// @param {String} str_id
/// @param {Real} column
/// @param {Enum.ImGuiTableFlags} [flags=ImGuiTableFlags.None]
/// @param {Real} [outer_width=0]
/// @param {Real} [outer_height=0]
/// @param {Real} [inner_width=0]
/// @return {Bool}
function imgui_begin_table(str_id, column, flags=ImGuiTableFlags.None, outer_width=0, outer_height=0, inner_width=0) {
    return __imgui_begin_table(str_id, column, flags, outer_width, outer_height, inner_width);
}

/// @function imgui_end_table
/// @return {Undefined}
function imgui_end_table() {
    return __imgui_end_table();
}

/// @function imgui_table_next_row
/// @param {Enum.ImGuiTableRowFlags} [row_flags=ImGuiTableRowFlags.None]
/// @param {Real} [min_row_height=0]
/// @return {Undefined}
function imgui_table_next_row(row_flags=ImGuiTableRowFlags.None, min_row_height=0) {
    return __imgui_table_next_row(row_flags, min_row_height);
}

/// @function imgui_table_next_column
/// @return {Bool}
function imgui_table_next_column() {
    return __imgui_table_next_column();
}

/// @function imgui_table_set_column_index
/// @param {Real} column_n
/// @return {Bool}
function imgui_table_set_column_index(column_n) {
    return __imgui_table_set_column_index(column_n);
}

/// @function imgui_table_setup_column
/// @param {String} label
/// @param {Enum.ImGuiTableColumnFlags} [flags=ImGuiTableColumnFlags.None]
/// @param {Real} [user_id=0]
/// @return {Undefined}
function imgui_table_setup_column(label, flags=ImGuiTableColumnFlags.None, user_id=0) {
    return __imgui_table_setup_column(label, flags, user_id);
}

/// @function imgui_table_setup_scroll_freeze
/// @param {Real} cols
/// @param {Real} rows
/// @return {Undefined}
function imgui_table_setup_scroll_freeze(cols, rows) {
    return __imgui_table_setup_scroll_freeze(cols, rows);
}

/// @function imgui_table_headers_row
/// @return {Undefined}
function imgui_table_headers_row() {
    return __imgui_table_headers_row();
}

/// @function imgui_table_angled_headers_row
/// @return {Undefined}
function imgui_table_angled_headers_row() {
    return __imgui_table_angled_headers_row();
}

/// @function imgui_table_header
/// @param {String} label
/// @return {Undefined}
function imgui_table_header(label) {
    return __imgui_table_header(label);
}

/// @function imgui_table_get_hovered_column
/// @return {Real}
function imgui_table_get_hovered_column() {
    return __imgui_table_get_hovered_column();
}

/// @function imgui_table_get_column_count
/// @return {Real}
function imgui_table_get_column_count() {
    return __imgui_table_get_column_count();
}

/// @function imgui_table_get_column_index
/// @return {Real}
function imgui_table_get_column_index() {
    return __imgui_table_get_column_index();
}

/// @function imgui_table_get_column_name
/// @param {Real} [column_n=-1]
/// @return {String}
function imgui_table_get_column_name(column_n=-1) {
    return __imgui_table_get_column_name(column_n);
}

/// @function imgui_table_get_column_flags
/// @param {Real} [column_n=-1]
/// @return {Real}
function imgui_table_get_column_flags(column_n=-1) {
    return __imgui_table_get_column_flags(column_n);
}

/// @function imgui_table_get_row_index
/// @return {Real}
function imgui_table_get_row_index() {
    return __imgui_table_get_row_index();
}

/// @function imgui_table_set_column_enabled
/// @param {Real} column_n
/// @param {Bool} v
/// @return {Undefined}
function imgui_table_set_column_enabled(column_n, v) {
    return __imgui_table_set_column_enabled(column_n, v);
}

/// @function imgui_table_set_bg_color
/// @param {Real} target
/// @param {Real} col
/// @param {Real} [column_n=-1]
/// @return {Undefined}
function imgui_table_set_bg_color(target, col, column_n=-1) {
    return __imgui_table_set_bg_color(target, col, column_n);
}

/// @function imgui_columns
/// @param {Real} [count=1]
/// @param {String} [_id=]
/// @param {Bool} [border=true]
/// @return {Undefined}
function imgui_columns(count=1, _id="", border=true) {
    return __imgui_columns(count, _id, border);
}

/// @function imgui_next_column
/// @return {Undefined}
function imgui_next_column() {
    return __imgui_next_column();
}

/// @function imgui_get_column_index
/// @return {Real}
function imgui_get_column_index() {
    return __imgui_get_column_index();
}

/// @function imgui_get_column_width
/// @param {Real} [column_index=-1]
/// @return {Real}
function imgui_get_column_width(column_index=-1) {
    return __imgui_get_column_width(column_index);
}

/// @function imgui_set_column_width
/// @param {Real} column_index
/// @param {Real} width
/// @return {Undefined}
function imgui_set_column_width(column_index, width) {
    return __imgui_set_column_width(column_index, width);
}

/// @function imgui_get_column_offset
/// @param {Real} [column_index=-1]
/// @return {Real}
function imgui_get_column_offset(column_index=-1) {
    return __imgui_get_column_offset(column_index);
}

/// @function imgui_set_column_offset
/// @param {Real} column_index
/// @param {Real} offset_x
/// @return {Undefined}
function imgui_set_column_offset(column_index, offset_x) {
    return __imgui_set_column_offset(column_index, offset_x);
}

/// @function imgui_get_columns_count
/// @return {Real}
function imgui_get_columns_count() {
    return __imgui_get_columns_count();
}

/// @function imgui_begin_tab_bar
/// @param {String} str_id
/// @param {Enum.ImGuiTabBarFlags} [flags=ImGuiTabBarFlags.None]
/// @return {Bool}
function imgui_begin_tab_bar(str_id, flags=ImGuiTabBarFlags.None) {
    return __imgui_begin_tab_bar(str_id, flags);
}

/// @function imgui_end_tab_bar
/// @return {Undefined}
function imgui_end_tab_bar() {
    return __imgui_end_tab_bar();
}

/// @function imgui_begin_tab_item
/// @param {String} label
/// @param {Bool} [open=undefined]
/// @param {Enum.ImGuiTabItemFlags} [flags=ImGuiTabItemFlags.None]
/// @param {Enum.ImGuiReturnMask} [mask=ImGuiReturnMask.Return]
/// @return {Real}
function imgui_begin_tab_item(label, open=undefined, flags=ImGuiTabItemFlags.None, mask=ImGuiReturnMask.Return) {
    return __imgui_begin_tab_item(label, open, flags, mask);
}

/// @function imgui_end_tab_item
/// @return {Undefined}
function imgui_end_tab_item() {
    return __imgui_end_tab_item();
}

/// @function imgui_tab_item_button
/// @param {String} label
/// @param {Enum.ImGuiTabItemFlags} [flags=ImGuiTabItemFlags.None]
/// @return {Bool}
function imgui_tab_item_button(label, flags=ImGuiTabItemFlags.None) {
    return __imgui_tab_item_button(label, flags);
}

/// @function imgui_set_tab_item_closed
/// @param {String} tab_or_docked_window_label
/// @return {Undefined}
function imgui_set_tab_item_closed(tab_or_docked_window_label) {
    return __imgui_set_tab_item_closed(tab_or_docked_window_label);
}

/// @function imgui_text_unformatted
/// @param {String} text
/// @return {Undefined}
function imgui_text_unformatted(text) {
    return __imgui_text_unformatted(text);
}

/// @function imgui_text
/// @param {String} val
/// @return {Undefined}
function imgui_text(val) {
    return __imgui_text(val);
}

/// @function imgui_text_colored
/// @param {String} val
/// @param {Real} color
/// @param {Real} [alpha=1]
/// @return {Undefined}
function imgui_text_colored(val, color, alpha=1) {
    return __imgui_text_colored(val, color, alpha);
}

/// @function imgui_text_disabled
/// @param {String} val
/// @return {Undefined}
function imgui_text_disabled(val) {
    return __imgui_text_disabled(val);
}

/// @function imgui_text_wrapped
/// @param {String} val
/// @return {Undefined}
function imgui_text_wrapped(val) {
    return __imgui_text_wrapped(val);
}

/// @function imgui_label_text
/// @param {String} label
/// @param {String} val
/// @return {Undefined}
function imgui_label_text(label, val) {
    return __imgui_label_text(label, val);
}

/// @function imgui_bullet_text
/// @param {String} val
/// @return {Undefined}
function imgui_bullet_text(val) {
    return __imgui_bullet_text(val);
}

/// @function imgui_value
/// @return {Unknown<unset>}
function imgui_value() {
    return __imgui_value();
}

/// @function imgui_begin_tooltip
/// @return {Undefined}
function imgui_begin_tooltip() {
    return __imgui_begin_tooltip();
}

/// @function imgui_end_tooltip
/// @return {Undefined}
function imgui_end_tooltip() {
    return __imgui_end_tooltip();
}

/// @function imgui_set_tooltip
/// @param {String} val
/// @return {Undefined}
function imgui_set_tooltip(val) {
    return __imgui_set_tooltip(val);
}

/// @function imgui_tree_node
/// @param {String} label
/// @return {Bool}
function imgui_tree_node(label) {
    return __imgui_tree_node(label);
}

/// @function imgui_tree_node_ex
/// @param {String} label
/// @param {Enum.ImGuiTreeNodeFlags} [flags=ImGuiTreeNodeFlags.None]
/// @return {Bool}
function imgui_tree_node_ex(label, flags=ImGuiTreeNodeFlags.None) {
    return __imgui_tree_node_ex(label, flags);
}

/// @function imgui_tree_push
/// @param {String} str_id
/// @return {Undefined}
function imgui_tree_push(str_id) {
    return __imgui_tree_push(str_id);
}

/// @function imgui_tree_pop
/// @return {Undefined}
function imgui_tree_pop() {
    return __imgui_tree_pop();
}

/// @function imgui_get_tree_node_to_label_spacing
/// @return {Real}
function imgui_get_tree_node_to_label_spacing() {
    return __imgui_get_tree_node_to_label_spacing();
}

/// @function imgui_set_next_item_open
/// @param {Bool} is_open
/// @param {Enum.ImGuiCond} [cond=ImGuiCond.None]
/// @return {Undefined}
function imgui_set_next_item_open(is_open, cond=ImGuiCond.None) {
    return __imgui_set_next_item_open(is_open, cond);
}

/// @function imgui_collapsing_header
/// @param {String} label
/// @param {Bool} [_visible=undefined]
/// @param {Enum.ImGuiTreeNodeFlags} [flags=ImGuiTreeNodeFlags.None]
/// @param {Enum.ImGuiReturnMask} [mask=ImGuiReturnMask.Return]
/// @return {Real}
function imgui_collapsing_header(label, _visible=undefined, flags=ImGuiTreeNodeFlags.None, mask=ImGuiReturnMask.Return) {
    return __imgui_collapsing_header(label, _visible, flags, mask);
}

/// @function imgui_button
/// @param {String} label
/// @param {Real} [width=0]
/// @param {Real} [height=0]
/// @return {Bool}
function imgui_button(label, width=0, height=0) {
    return __imgui_button(label, width, height);
}

/// @function imgui_small_button
/// @param {String} label
/// @return {Bool}
function imgui_small_button(label) {
    return __imgui_small_button(label);
}

/// @function imgui_invisible_button
/// @param {String} _id
/// @param {Real} [width=0]
/// @param {Real} [height=0]
/// @param {Enum.ImGuiButtonFlags} [flags=ImGuiButtonFlags.None]
/// @return {Bool}
function imgui_invisible_button(_id, width=0, height=0, flags=ImGuiButtonFlags.None) {
    return __imgui_invisible_button(_id, width, height, flags);
}

/// @function imgui_arrow_button
/// @param {String} str_id
/// @param {Real} dir
/// @return {Bool}
function imgui_arrow_button(str_id, dir) {
    return __imgui_arrow_button(str_id, dir);
}

/// @function imgui_image
/// @param {Real} sprite
/// @param {Real} subimg
/// @param {Real} [color=c_white]
/// @param {Real} [alpha=1]
/// @param {Real} [width=sprite_get_width⌊sprite⌉]
/// @param {Real} [height=sprite_get_height⌊sprite⌉]
/// @return {Undefined}
function imgui_image(sprite, subimg, color=c_white, alpha=1, width=sprite_get_width(sprite), height=sprite_get_height(sprite)) {
    if (!(ImGui.__GFlags & ImGuiGFlags.RENDERER_GM)) texture_set_stage(0, sprite_get_texture(sprite, subimg)); 
    return __imgui_image(sprite, subimg, color, alpha, width, height, sprite_get_uvs(sprite, subimg));
}

/// @function imgui_image_button
/// @param {String} str_id
/// @param {Real} sprite
/// @param {Real} subimg
/// @param {Real} color
/// @param {Real} alpha
/// @param {Real} bg_color
/// @param {Real} bg_alpha
/// @param {Real} [width=sprite_get_width⌊sprite⌉]
/// @param {Real} [height=sprite_get_height⌊sprite⌉]
/// @return {Bool}
function imgui_image_button(str_id, sprite, subimg, color, alpha, bg_color, bg_alpha, width=sprite_get_width(sprite), height=sprite_get_height(sprite)) {
    if (!(ImGui.__GFlags & ImGuiGFlags.RENDERER_GM)) texture_set_stage(0, sprite_get_texture(sprite, subimg)); 
    return __imgui_image_button(str_id, sprite, subimg, color, alpha, bg_color, bg_alpha, width, height, sprite_get_uvs(sprite, subimg));
}

/// @function imgui_surface
/// @param {Real} surface
/// @param {Real} [color=c_white]
/// @param {Real} [alpha=1]
/// @param {Real} [width=surface_get_width⌊surface⌉]
/// @param {Real} [height=surface_get_height⌊surface⌉]
/// @return {Undefined}
function imgui_surface(surface, color=c_white, alpha=1, width=surface_get_width(surface), height=surface_get_height(surface)) {
    var _tex = surface_get_texture(surface); if (!(ImGui.__GFlags & ImGuiGFlags.RENDERER_GM)) {texture_set_stage(0, _tex);};
    return __imgui_surface(surface, color, alpha, width, height, texture_get_uvs(_tex));
}

/// @function imgui_checkbox
/// @param {String} label
/// @param {Bool} checked
/// @return {Bool}
function imgui_checkbox(label, checked) {
    return __imgui_checkbox(label, checked);
}

/// @function imgui_checkbox_flags
/// @param {String} label
/// @param {Real} flags
/// @param {Real} flags_value
/// @return {Real}
function imgui_checkbox_flags(label, flags, flags_value) {
    return __imgui_checkbox_flags(label, flags, flags_value);
}

/// @function imgui_radio_button
/// @param {String} label
/// @param {Bool} active
/// @return {Bool}
function imgui_radio_button(label, active) {
    return __imgui_radio_button(label, active);
}

/// @function imgui_progressbar
/// @param {Real} _frac
/// @param {Real} [width=0]
/// @param {Real} [height=0]
/// @param {String} [overlay=]
/// @return {Undefined}
function imgui_progressbar(_frac, width=0, height=0, overlay="") {
    return __imgui_progressbar(_frac, width, height, overlay);
}

/// @function imgui_bullet
/// @return {Undefined}
function imgui_bullet() {
    return __imgui_bullet();
}

/// @function imgui_text_link
/// @param {String} label
/// @return {Undefined}
function imgui_text_link(label) {
    return __imgui_text_link(label);
}

/// @function imgui_text_link_open_url
/// @param {String} label
/// @param {String} url
/// @return {Undefined}
function imgui_text_link_open_url(label, url) {
    return __imgui_text_link_open_url(label, url);
}

/// @function imgui_begin
/// @param {String} name
/// @param {Bool} [open=undefined]
/// @param {Enum.ImGuiWindowFlags} [flags=ImGuiWindowFlags.None]
/// @param {Enum.ImGuiReturnMask} [mask=ImGuiReturnMask.Return]
/// @return {Real}
function imgui_begin(name, open=undefined, flags=ImGuiWindowFlags.None, mask=ImGuiReturnMask.Return) {
    return __imgui_begin(name, open, flags, mask);
}

/// @function imgui_end
/// @return {Undefined}
function imgui_end() {
    return __imgui_end();
}

/// @function imgui_begin_child
/// @param {String} str_id
/// @param {Real} [width=0]
/// @param {Real} [height=0]
/// @param {Enum.ImGuiChildFlags} [child_flags=ImGuiChildFlags.None]
/// @param {Enum.ImGuiWindowFlags} [window_flags=ImGuiWindowFlags.None]
/// @return {Bool}
function imgui_begin_child(str_id, width=0, height=0, child_flags=ImGuiChildFlags.None, window_flags=ImGuiWindowFlags.None) {
    return __imgui_begin_child(str_id, width, height, child_flags, window_flags);
}

/// @function imgui_end_child
/// @return {Undefined}
function imgui_end_child() {
    return __imgui_end_child();
}

/// @function imgui_begin_child_frame
/// @param {Real} _id
/// @param {Real} [width=0]
/// @param {Real} [height=0]
/// @param {Enum.ImGuiWindowFlags} [flags=ImGuiWindowFlags.None]
/// @return {Bool}
function imgui_begin_child_frame(_id, width=0, height=0, flags=ImGuiWindowFlags.None) {
    return __imgui_begin_child_frame(_id, width, height, flags);
}

/// @function imgui_end_child_frame
/// @return {Undefined}
function imgui_end_child_frame() {
    return __imgui_end_child_frame();
}

/// @function imgui_is_window_appearing
/// @return {Bool}
function imgui_is_window_appearing() {
    return __imgui_is_window_appearing();
}

/// @function imgui_is_window_collapsed
/// @return {Bool}
function imgui_is_window_collapsed() {
    return __imgui_is_window_collapsed();
}

/// @function imgui_is_window_focused
/// @param {Enum.ImGuiFocusedFlags} [flags=ImGuiFocusedFlags.None]
/// @return {Bool}
function imgui_is_window_focused(flags=ImGuiFocusedFlags.None) {
    return __imgui_is_window_focused(flags);
}

/// @function imgui_is_window_hovered
/// @param {Enum.ImGuiHoveredFlags} [flags=ImGuiHoveredFlags.None]
/// @return {Bool}
function imgui_is_window_hovered(flags=ImGuiHoveredFlags.None) {
    return __imgui_is_window_hovered(flags);
}

/// @function imgui_get_window_dpi_scale
/// @return {Real}
function imgui_get_window_dpi_scale() {
    return __imgui_get_window_dpi_scale();
}

/// @function imgui_get_window_x
/// @return {Real}
function imgui_get_window_x() {
    return __imgui_get_window_x();
}

/// @function imgui_get_window_y
/// @return {Real}
function imgui_get_window_y() {
    return __imgui_get_window_y();
}

/// @function imgui_get_window_width
/// @return {Real}
function imgui_get_window_width() {
    return __imgui_get_window_width();
}

/// @function imgui_get_window_height
/// @return {Real}
function imgui_get_window_height() {
    return __imgui_get_window_height();
}

/// @function imgui_get_window_viewport
/// @return {Pointer}
function imgui_get_window_viewport() {
    return __imgui_get_window_viewport();
}

/// @function imgui_set_window_font_scale
/// @param {Real} scale
/// @return {Undefined}
function imgui_set_window_font_scale(scale) {
    return __imgui_set_window_font_scale(scale);
}

/// @function imgui_set_next_window_viewport
/// @param {Real} _id
/// @return {Undefined}
function imgui_set_next_window_viewport(_id) {
    return __imgui_set_next_window_viewport(_id);
}

/// @function imgui_set_next_window_pos
/// @param {Real} _x
/// @param {Real} _y
/// @param {Enum.ImGuiCond} [cond=ImGuiCond.None]
/// @param {Real} [pivot_x=0]
/// @param {Real} [pivot_y=0]
/// @return {Undefined}
function imgui_set_next_window_pos(_x, _y, cond=ImGuiCond.None, pivot_x=0, pivot_y=0) {
    return __imgui_set_next_window_pos(_x, _y, cond, pivot_x, pivot_y);
}

/// @function imgui_set_next_window_size
/// @param {Real} width
/// @param {Real} height
/// @param {Enum.ImGuiCond} [cond=ImGuiCond.None]
/// @return {Undefined}
function imgui_set_next_window_size(width, height, cond=ImGuiCond.None) {
    return __imgui_set_next_window_size(width, height, cond);
}

/// @function imgui_set_next_window_size_constraints
/// @param {Real} min_width
/// @param {Real} min_height
/// @param {Real} max_width
/// @param {Real} max_height
/// @return {Undefined}
function imgui_set_next_window_size_constraints(min_width, min_height, max_width, max_height) {
    return __imgui_set_next_window_size_constraints(min_width, min_height, max_width, max_height);
}

/// @function imgui_set_next_window_content_size
/// @param {Real} width
/// @param {Real} height
/// @return {Undefined}
function imgui_set_next_window_content_size(width, height) {
    return __imgui_set_next_window_content_size(width, height);
}

/// @function imgui_set_next_window_collapsed
/// @param {Bool} collapsed
/// @param {Enum.ImGuiCond} [cond=ImGuiCond.None]
/// @return {Undefined}
function imgui_set_next_window_collapsed(collapsed, cond=ImGuiCond.None) {
    return __imgui_set_next_window_collapsed(collapsed, cond);
}

/// @function imgui_set_next_window_focus
/// @return {Undefined}
function imgui_set_next_window_focus() {
    return __imgui_set_next_window_focus();
}

/// @function imgui_set_next_window_scroll
/// @param {Real} scroll_x
/// @param {Real} scroll_y
/// @return {Undefined}
function imgui_set_next_window_scroll(scroll_x, scroll_y) {
    return __imgui_set_next_window_scroll(scroll_x, scroll_y);
}

/// @function imgui_set_next_window_bgalpha
/// @param {Real} alpha
/// @return {Undefined}
function imgui_set_next_window_bgalpha(alpha) {
    return __imgui_set_next_window_bgalpha(alpha);
}

/// @function imgui_get_scroll_x
/// @return {Real}
function imgui_get_scroll_x() {
    return __imgui_get_scroll_x();
}

/// @function imgui_get_scroll_y
/// @return {Real}
function imgui_get_scroll_y() {
    return __imgui_get_scroll_y();
}

/// @function imgui_set_scroll_x
/// @param {Real} scroll_x
/// @return {Undefined}
function imgui_set_scroll_x(scroll_x) {
    return __imgui_set_scroll_x(scroll_x);
}

/// @function imgui_set_scroll_y
/// @param {Real} scroll_y
/// @return {Undefined}
function imgui_set_scroll_y(scroll_y) {
    return __imgui_set_scroll_y(scroll_y);
}

/// @function imgui_get_scroll_max_x
/// @return {Real}
function imgui_get_scroll_max_x() {
    return __imgui_get_scroll_max_x();
}

/// @function imgui_get_scroll_max_y
/// @return {Real}
function imgui_get_scroll_max_y() {
    return __imgui_get_scroll_max_y();
}

/// @function imgui_set_scroll_here_x
/// @param {Real} [center_x_ratio=0.5]
/// @return {Undefined}
function imgui_set_scroll_here_x(center_x_ratio=0.5) {
    return __imgui_set_scroll_here_x(center_x_ratio);
}

/// @function imgui_set_scroll_here_y
/// @param {Real} [center_y_ratio=0.5]
/// @return {Undefined}
function imgui_set_scroll_here_y(center_y_ratio=0.5) {
    return __imgui_set_scroll_here_y(center_y_ratio);
}

/// @function imgui_set_scroll_from_pos_x
/// @param {Real} local_x
/// @param {Real} [center_x_ratio=0.5]
/// @return {Undefined}
function imgui_set_scroll_from_pos_x(local_x, center_x_ratio=0.5) {
    return __imgui_set_scroll_from_pos_x(local_x, center_x_ratio);
}

/// @function imgui_set_scroll_from_pos_y
/// @param {Real} local_y
/// @param {Real} [center_y_ratio=0.5]
/// @return {Undefined}
function imgui_set_scroll_from_pos_y(local_y, center_y_ratio=0.5) {
    return __imgui_set_scroll_from_pos_y(local_y, center_y_ratio);
}

/// @function imgui_set_window_pos
/// @param {String} [name=]
/// @param {Real} [_x=0]
/// @param {Real} [_y=0]
/// @param {Enum.ImGuiCond} [cond=ImGuiCond.None]
/// @return {Undefined}
function imgui_set_window_pos(name="", _x=0, _y=0, cond=ImGuiCond.None) {
    return __imgui_set_window_pos(name, _x, _y, cond);
}

/// @function imgui_set_window_size
/// @param {String} [name=]
/// @param {Real} [width=0]
/// @param {Real} [height=0]
/// @param {Enum.ImGuiCond} [cond=ImGuiCond.None]
/// @return {Undefined}
function imgui_set_window_size(name="", width=0, height=0, cond=ImGuiCond.None) {
    return __imgui_set_window_size(name, width, height, cond);
}

/// @function imgui_set_window_collapsed
/// @param {String} [name=]
/// @param {Bool} [collapsed=true]
/// @param {Enum.ImGuiCond} [cond=ImGuiCond.None]
/// @return {Undefined}
function imgui_set_window_collapsed(name="", collapsed=true, cond=ImGuiCond.None) {
    return __imgui_set_window_collapsed(name, collapsed, cond);
}

/// @function imgui_set_window_focus
/// @param {String} [name=]
/// @return {Undefined}
function imgui_set_window_focus(name="") {
    return __imgui_set_window_focus(name);
}
