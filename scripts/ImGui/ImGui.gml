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

	/// @function BringWindowToDisplayFront(window)
	/// @argument {Pointer} window
	/// @return {Undefined}
	static BringWindowToDisplayFront = function(window) {
		gml_pragma("forceinline");
		return __imgui_bring_window_to_display_front(window);
	}

	/// @function BringWindowToDisplayBack(window)
	/// @argument {Pointer} window
	/// @return {Undefined}
	static BringWindowToDisplayBack = function(window) {
		gml_pragma("forceinline");
		return __imgui_bring_window_to_display_back(window);
	}

	/// @function BringWindowToDisplayBehind(window, behind_window)
	/// @argument {Pointer} window
	/// @argument {Pointer} behind_window
	/// @return {Undefined}
	static BringWindowToDisplayBehind = function(window, behind_window) {
		gml_pragma("forceinline");
		return __imgui_bring_window_to_display_behind(window, behind_window);
	}

	/// @function FindWindowDisplayIndex(window)
	/// @argument {Pointer} window
	/// @return {Real}
	static FindWindowDisplayIndex = function(window) {
		gml_pragma("forceinline");
		return __imgui_find_window_display_index(window);
	}

	/// @function FocusWindow(window)
	/// @argument {Pointer} window
	/// @return {Undefined}
	static FocusWindow = function(window) {
		gml_pragma("forceinline");
		return __imgui_focus_window(window);
	}

	/// @function FocusTopMostWindowUnderOne(under_window, ignore_window)
	/// @argument {Pointer} under_window
	/// @argument {Pointer} [ignore_window=pointer_null]
	/// @return {Undefined}
	static FocusTopMostWindowUnderOne = function(under_window, ignore_window=pointer_null) {
		gml_pragma("forceinline");
		return __imgui_focus_top_mouse_window_under_one(under_window, ignore_window);
	}

	/// @function PushItemFlag(flags, enabled)
	/// @argument {Real} flags
	/// @argument {Bool} enabled
	/// @return {Undefined}
	static PushItemFlag = function(flags, enabled) {
		gml_pragma("forceinline");
		return __imgui_push_item_flag(flags, enabled);
	}

	/// @function PopItemFlag()
	/// @return {Undefined}
	static PopItemFlag = function() {
		gml_pragma("forceinline");
		return __imgui_pop_item_flag();
	}

	/// @function ShowAboutWindow(show)
	/// @argument {Bool} show
	/// @return {Undefined}
	static ShowAboutWindow = function(show) {
		gml_pragma("forceinline");
		return __imgui_show_about(show);
	}

	/// @function ShowDemoWindow(show)
	/// @argument {Bool} show
	/// @return {Undefined}
	static ShowDemoWindow = function(show) {
		gml_pragma("forceinline");
		return __imgui_show_demo(show);
	}

	/// @function ShowStyleEditor()
	/// @return {Undefined}
	static ShowStyleEditor = function() {
		gml_pragma("forceinline");
		return __imgui_show_style();
	}

	/// @function BeginDisabled(disabled)
	/// @argument {Bool} disabled
	/// @return {Undefined}
	static BeginDisabled = function(disabled) {
		gml_pragma("forceinline");
		return __imgui_begin_disabled(disabled);
	}

	/// @function EndDisabled()
	/// @return {Undefined}
	static EndDisabled = function() {
		gml_pragma("forceinline");
		return __imgui_end_disabled();
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

	/// @function PopButtonRepeat()
	/// @return {Undefined}
	static PopButtonRepeat = function() {
		gml_pragma("forceinline");
		return __imgui_pop_button_repeat();
	}

	/// @function PushTextWrapPos(wrap_pos_x)
	/// @argument {Real} wrap_pos_x
	/// @return {Undefined}
	static PushTextWrapPos = function(wrap_pos_x) {
		gml_pragma("forceinline");
		return __imgui_push_text_wrap_pos(wrap_pos_x);
	}

	/// @function PopTextWrapPos()
	/// @return {Undefined}
	static PopTextWrapPos = function() {
		gml_pragma("forceinline");
		return __imgui_pop_text_wrap_pos();
	}

	/// @function IsWindowChildOf(window, potential_parent, popup_hierarchy, dock_hierarchy)
	/// @argument {Pointer} window
	/// @argument {Pointer} potential_parent
	/// @argument {Bool} popup_hierarchy
	/// @argument {Bool} dock_hierarchy
	/// @return {Bool}
	static IsWindowChildOf = function(window, potential_parent, popup_hierarchy, dock_hierarchy) {
		gml_pragma("forceinline");
		return __imgui_is_window_child_of(window, potential_parent, popup_hierarchy, dock_hierarchy);
	}

	/// @function IsWindowWithinBeginStackOf(window, potential_parent)
	/// @argument {Pointer} window
	/// @argument {Pointer} potential_parent
	/// @return {Bool}
	static IsWindowWithinBeginStackOf = function(window, potential_parent) {
		gml_pragma("forceinline");
		return __imgui_is_window_within_begin_stack_of(window, potential_parent);
	}

	/// @function IsWindowAbove(potential_above, potential_below)
	/// @argument {Pointer} potential_above
	/// @argument {Pointer} potential_below
	/// @return {Bool}
	static IsWindowAbove = function(potential_above, potential_below) {
		gml_pragma("forceinline");
		return __imgui_is_window_above(potential_above, potential_below);
	}

	/// @function IsWindowHovered(flags)
	/// @argument {Real} [flags=ImGuiHoveredFlags.AnyWindow]
	/// @return {Bool}
	static IsWindowHovered = function(flags=ImGuiHoveredFlags.AnyWindow) {
		gml_pragma("forceinline");
		return __imgui_is_window_hovered(flags);
	}

	/// @function IsWindowHovered(flags)
	/// @argument {Real} [flags=ImGuiFocusedFlags.AnyWindow]
	/// @return {Bool}
	static IsWindowHovered = function(flags=ImGuiFocusedFlags.AnyWindow) {
		gml_pragma("forceinline");
		return __imgui_is_window_focused(flags);
	}

	/// @function IsWindowDocked()
	/// @return {Bool}
	static IsWindowDocked = function() {
		gml_pragma("forceinline");
		return __imgui_is_window_docked();
	}

	/// @function IsWindowNavFocusable(window)
	/// @argument {Pointer} window
	/// @return {Bool}
	static IsWindowNavFocusable = function(window) {
		gml_pragma("forceinline");
		return __imgui_is_window_nav_focusable(window);
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

	/// @function GetWindowPosX()
	/// @return {Real}
	static GetWindowPosX = function() {
		gml_pragma("forceinline");
		return __imgui_get_window_pos_x();
	}

	/// @function GetWindowPosY()
	/// @return {Real}
	static GetWindowPosY = function() {
		gml_pragma("forceinline");
		return __imgui_get_window_pos_y();
	}

	/// @function SetWindowPos(window, _x, _y, cond)
	/// @argument {Pointer} window
	/// @argument {Real} _x
	/// @argument {Real} _y
	/// @argument {Real} [cond=ImGuiCond.Always]
	/// @return {Undefined}
	static SetWindowPos = function(window, _x, _y, cond=ImGuiCond.Always) {
		gml_pragma("forceinline");
		return __imgui_set_window_pos(window, _x, _y, cond);
	}

	/// @function SetWindowSize(window, width, height, cond)
	/// @argument {Pointer} window
	/// @argument {Real} width
	/// @argument {Real} height
	/// @argument {Real} [cond=ImGuiCond.Always]
	/// @return {Undefined}
	static SetWindowSize = function(window, width, height, cond=ImGuiCond.Always) {
		gml_pragma("forceinline");
		return __imgui_set_window_size(window, width, height, cond);
	}

	/// @function SetWindowCollapsed(window, collapsed, cond)
	/// @argument {Pointer} window
	/// @argument {Real} collapsed
	/// @argument {Real} [cond=ImGuiCond.Always]
	/// @return {Undefined}
	static SetWindowCollapsed = function(window, collapsed, cond=ImGuiCond.Always) {
		gml_pragma("forceinline");
		return __imgui_set_window_collapsed(window, collapsed, cond);
	}

	/// @function IsWindowCollapsed()
	/// @return {Bool}
	static IsWindowCollapsed = function() {
		gml_pragma("forceinline");
		return __imgui_is_window_collapsed();
	}

	/// @function IsWindowAppearing()
	/// @return {Bool}
	static IsWindowAppearing = function() {
		gml_pragma("forceinline");
		return __imgui_is_window_appearing();
	}

	/// @function SetWindowFocus()
	/// @return {Undefined}
	static SetWindowFocus = function() {
		gml_pragma("forceinline");
		return __imgui_set_window_focus();
	}

	/// @function SetNextWindowPos(_x, _y, cond, pivot_x, pivot_y)
	/// @argument {Real} _x
	/// @argument {Real} _y
	/// @argument {Real} [cond=ImGuiCond.Always]
	/// @argument {Real} [pivot_x=0]
	/// @argument {Real} [pivot_y=0]
	/// @return {Undefined}
	static SetNextWindowPos = function(_x, _y, cond=ImGuiCond.Always, pivot_x=0, pivot_y=0) {
		gml_pragma("forceinline");
		return __imgui_set_next_window_pos(_x, _y, cond, pivot_x, pivot_y);
	}

	/// @function SetNextWindowSize(width, height, cond)
	/// @argument {Real} width
	/// @argument {Real} height
	/// @argument {Real} [cond=ImGuiCond.Always]
	/// @return {Undefined}
	static SetNextWindowSize = function(width, height, cond=ImGuiCond.Always) {
		gml_pragma("forceinline");
		return __imgui_set_next_window_size(width, height, cond);
	}

	/// @function SetNextWindowSizeConstraints(width_min, height_min, width_max, height_max)
	/// @argument {Real} width_min
	/// @argument {Real} height_min
	/// @argument {Real} width_max
	/// @argument {Real} height_max
	/// @return {Undefined}
	static SetNextWindowSizeConstraints = function(width_min, height_min, width_max, height_max) {
		gml_pragma("forceinline");
		return __imgui_set_next_window_size_constraints(width_min, height_min, width_max, height_max);
	}

	/// @function SetNextWindowContentSize(width, height)
	/// @argument {Real} width
	/// @argument {Real} height
	/// @return {Undefined}
	static SetNextWindowContentSize = function(width, height) {
		gml_pragma("forceinline");
		return __imgui_set_next_window_content_size(width, height);
	}

	/// @function SetNextWindowScroll(_x, _y)
	/// @argument {Real} _x
	/// @argument {Real} _y
	/// @return {Undefined}
	static SetNextWindowScroll = function(_x, _y) {
		gml_pragma("forceinline");
		return __imgui_set_next_window_scroll(_x, _y);
	}

	/// @function SetNextWindowCollapsed(collapsed, cond)
	/// @argument {Bool} collapsed
	/// @argument {Real} [cond=ImGuiCond.Always]
	/// @return {Undefined}
	static SetNextWindowCollapsed = function(collapsed, cond=ImGuiCond.Always) {
		gml_pragma("forceinline");
		return __imgui_set_next_window_collapsed(collapsed, cond);
	}

	/// @function SetNextWindowFocus()
	/// @return {Undefined}
	static SetNextWindowFocus = function() {
		gml_pragma("forceinline");
		return __imgui_set_next_window_focus();
	}

	/// @function SetNextWindowBgAlpha(alpha)
	/// @argument {Real} alpha
	/// @return {Undefined}
	static SetNextWindowBgAlpha = function(alpha) {
		gml_pragma("forceinline");
		return __imgui_set_next_window_bg_alpha(alpha);
	}

	/// @function SetWindowFontScale(scale)
	/// @argument {Real} scale
	/// @return {Undefined}
	static SetWindowFontScale = function(scale) {
		gml_pragma("forceinline");
		return __imgui_set_window_font_scale(scale);
	}

	/// @function PushStyleVar(_id)
	/// @argument {String|Real} _id
	/// @return {Undefined}
	static PushStyleVar = function(_id) {
		gml_pragma("forceinline");
		return __imgui_pushid(_id);
	}

	/// @function PopID()
	/// @return {Undefined}
	static PopID = function() {
		gml_pragma("forceinline");
		return __imgui_popid();
	}

	/// @function IsRectVisible(width, height)
	/// @argument {Real} width
	/// @argument {Real} height
	/// @return {Bool}
	static IsRectVisible = function(width, height) {
		gml_pragma("forceinline");
		return __imgui_is_rect_visible(width, height);
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

	/// @function GetCursorStartPos()
	/// @return {Real}
	static GetCursorStartPos = function() {
		gml_pragma("forceinline");
		return __imgui_get_cursor_start_x();
	}

	/// @function GetCursorStartPos()
	/// @return {Real}
	static GetCursorStartPos = function() {
		gml_pragma("forceinline");
		return __imgui_get_cursor_start_y();
	}

	/// @function SetCursorPos(_x, _y)
	/// @argument {Real} _x
	/// @argument {Real} _y
	/// @return {Undefined}
	static SetCursorPos = function(_x, _y) {
		gml_pragma("forceinline");
		return __imgui_set_cursor_pos(_x, _y);
	}

	/// @function Indent(width)
	/// @argument {Real} width
	/// @return {Undefined}
	static Indent = function(width) {
		gml_pragma("forceinline");
		return __imgui_indent(width);
	}

	/// @function Unindent(width)
	/// @argument {Real} width
	/// @return {Undefined}
	static Unindent = function(width) {
		gml_pragma("forceinline");
		return __imgui_unindent(width);
	}

	/// @function SetNextItemWidth(width)
	/// @argument {Real} width
	/// @return {Undefined}
	static SetNextItemWidth = function(width) {
		gml_pragma("forceinline");
		return __imgui_set_next_item_width(width);
	}

	/// @function PushItemWidth(width)
	/// @argument {Real} width
	/// @return {Undefined}
	static PushItemWidth = function(width) {
		gml_pragma("forceinline");
		return __imgui_push_item_width(width);
	}

	/// @function PopItemWidth()
	/// @return {Undefined}
	static PopItemWidth = function() {
		gml_pragma("forceinline");
		return __imgui_pop_item_width();
	}

	/// @function CalcItemWidth()
	/// @return {Real}
	static CalcItemWidth = function() {
		gml_pragma("forceinline");
		return __imgui_calc_item_width();
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

	/// @function ScrollToItem(flags)
	/// @argument {Real} flags
	/// @return {Undefined}
	static ScrollToItem = function(flags) {
		gml_pragma("forceinline");
		return __imgui_scroll_to_item(flags);
	}

	/// @function ScrollToRect(window, x1, y1, x2, y2, flags)
	/// @argument {Pointer} window
	/// @argument {Real} x1
	/// @argument {Real} y1
	/// @argument {Real} x2
	/// @argument {Real} y2
	/// @argument {Real} [flags=ImGuiScrollFlags.None]
	/// @return {Undefined}
	static ScrollToRect = function(window, x1, y1, x2, y2, flags=ImGuiScrollFlags.None) {
		gml_pragma("forceinline");
		return __imgui_scroll_to_rect(window, x1, y1, x2, y2, flags);
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

	/// @function SetScrollX(scroll_x, window)
	/// @argument {Real} scroll_x
	/// @argument {Pointer} [window=pointer_null]
	/// @return {Undefined}
	static SetScrollX = function(scroll_x, window=pointer_null) {
		gml_pragma("forceinline");
		return __imgui_set_scroll_x(scroll_x, window);
	}

	/// @function SetScrollY(scroll_x, window)
	/// @argument {Real} scroll_x
	/// @argument {Pointer} [window=pointer_null]
	/// @return {Undefined}
	static SetScrollY = function(scroll_x, window=pointer_null) {
		gml_pragma("forceinline");
		return __imgui_set_scroll_y(scroll_x, window);
	}

	/// @function SetScrollFromPosX(local_x, center_x_ratio, window)
	/// @argument {Real} local_x
	/// @argument {Real} center_x_ratio
	/// @argument {Pointer} [window=pointer_null]
	/// @return {Undefined}
	static SetScrollFromPosX = function(local_x, center_x_ratio, window=pointer_null) {
		gml_pragma("forceinline");
		return __imgui_set_scroll_from_pos_x(local_x, center_x_ratio, window);
	}

	/// @function SetScrollFromPosY(local_y, center_y_ratio, window)
	/// @argument {Real} local_y
	/// @argument {Real} center_y_ratio
	/// @argument {Pointer} [window=pointer_null]
	/// @return {Undefined}
	static SetScrollFromPosY = function(local_y, center_y_ratio, window=pointer_null) {
		gml_pragma("forceinline");
		return __imgui_set_scroll_from_pos_y(local_y, center_y_ratio, window);
	}

	/// @function SetScrollHereX(center_x_ratio)
	/// @argument {Real} center_x_ratio
	/// @return {Undefined}
	static SetScrollHereX = function(center_x_ratio) {
		gml_pragma("forceinline");
		return __imgui_set_scroll_here_x(center_x_ratio);
	}

	/// @function SetScrollHereY(center_y_ratio)
	/// @argument {Real} center_y_ratio
	/// @return {Undefined}
	static SetScrollHereY = function(center_y_ratio) {
		gml_pragma("forceinline");
		return __imgui_set_scroll_here_y(center_y_ratio);
	}

	/// @function IsPopupOpen(str_id, flags)
	/// @argument {String} str_id
	/// @argument {Real} [flags=ImGuiWindowFlags.None]
	/// @return {Bool}
	static IsPopupOpen = function(str_id, flags=ImGuiWindowFlags.None) {
		gml_pragma("forceinline");
		return __imgui_is_popup_open(str_id, flags);
	}

	/// @function GetTopMostPopupModal()
	/// @return {Pointer}
	static GetTopMostPopupModal = function() {
		gml_pragma("forceinline");
		return __imgui_get_topmost_popup_modal();
	}

	/// @function GetTopMostAndVisiblePopupModal()
	/// @return {Pointer}
	static GetTopMostAndVisiblePopupModal = function() {
		gml_pragma("forceinline");
		return __imgui_get_topmost_and_visible_popup_modal();
	}

	/// @function OpenPopup(str_id, flags)
	/// @argument {String} str_id
	/// @argument {Real} [flags=ImGuiWindowFlags.None]
	/// @return {Undefined}
	static OpenPopup = function(str_id, flags=ImGuiWindowFlags.None) {
		gml_pragma("forceinline");
		return __imgui_open_popup(str_id, flags);
	}

	/// @function ClosePopupsOverWindow(ref_window, restore_focus_to_window_under_popup)
	/// @argument {Pointer} ref_window
	/// @argument {Bool} restore_focus_to_window_under_popup
	/// @return {Undefined}
	static ClosePopupsOverWindow = function(ref_window, restore_focus_to_window_under_popup) {
		gml_pragma("forceinline");
		return __imgui_close_popups_over_window(ref_window, restore_focus_to_window_under_popup);
	}

	/// @function ClosePopupsExceptModals()
	/// @return {Undefined}
	static ClosePopupsExceptModals = function() {
		gml_pragma("forceinline");
		return __imgui_close_popups_except_modals();
	}

	/// @function ClosePopupToLevel(remaining, restore_focus_to_window_under_popup)
	/// @argument {Real} remaining
	/// @argument {Bool} restore_focus_to_window_under_popup
	/// @return {Undefined}
	static ClosePopupToLevel = function(remaining, restore_focus_to_window_under_popup) {
		gml_pragma("forceinline");
		return __imgui_close_popup_to_level(remaining, restore_focus_to_window_under_popup);
	}

	/// @function CloseCurrentPopup()
	/// @return {Undefined}
	static CloseCurrentPopup = function() {
		gml_pragma("forceinline");
		return __imgui_close_current_popup();
	}

	/// @function BeginPopup(str_id, flags)
	/// @argument {String} str_id
	/// @argument {Real} [flags=ImGuiWindowFlags.None]
	/// @return {Bool}
	static BeginPopup = function(str_id, flags=ImGuiWindowFlags.None) {
		gml_pragma("forceinline");
		return __imgui_begin_popup(str_id, flags);
	}

	/// @function BeginPopupModal(name, open, flags, ret_mask)
	/// @argument {String} name
	/// @argument {Bool} [open=undefined]
	/// @argument {Real} [flags=ImGuiWindowFlags.None]
	/// @argument {Real} [ret_mask=ImGuiReturnFlags.Open]
	/// @return {Real}
	static BeginPopupModal = function(name, open=undefined, flags=ImGuiWindowFlags.None, ret_mask=ImGuiReturnFlags.Open) {
		gml_pragma("forceinline");
		return __imgui_begin_popup_modal(name, open, flags, ret_mask);
	}

	/// @function EndPopup()
	/// @return {Undefined}
	static EndPopup = function() {
		gml_pragma("forceinline");
		return __imgui_end_popup();
	}

	/// @function IsItemHovered(flags)
	/// @argument {Real} [flags=ImGuiHoveredFlags.None]
	/// @return {Bool}
	static IsItemHovered = function(flags=ImGuiHoveredFlags.None) {
		gml_pragma("forceinline");
		return __imgui_is_item_hovered(flags);
	}

	/// @function Text(text)
	/// @argument {String} text
	/// @return {Undefined}
	static Text = function(text) {
		gml_pragma("forceinline");
		return __imgui_text(text);
	}

	/// @function TextColored(text, color, alpha)
	/// @argument {String} text
	/// @argument {Real} color
	/// @argument {Real} [alpha=1]
	/// @return {Undefined}
	static TextColored = function(text, color, alpha=1) {
		gml_pragma("forceinline");
		return __imgui_text_colored(text, color, alpha);
	}

	/// @function TextDisabled(text)
	/// @argument {String} text
	/// @return {Undefined}
	static TextDisabled = function(text) {
		gml_pragma("forceinline");
		return __imgui_text_disabled(text);
	}

	/// @function TextWrapped(text)
	/// @argument {String} text
	/// @return {Undefined}
	static TextWrapped = function(text) {
		gml_pragma("forceinline");
		return __imgui_text_wrapped(text);
	}

	/// @function LabelText(label, text)
	/// @argument {String} label
	/// @argument {String} text
	/// @return {Undefined}
	static LabelText = function(label, text) {
		gml_pragma("forceinline");
		return __imgui_label_text(label, text);
	}

	/// @function BulletText(text)
	/// @argument {String} text
	/// @return {Undefined}
	static BulletText = function(text) {
		gml_pragma("forceinline");
		return __imgui_bullet_text(text);
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

	/// @function ArrowButton(_id, dir)
	/// @argument {String} _id
	/// @argument {Real} dir
	/// @return {Bool}
	static ArrowButton = function(_id, dir) {
		gml_pragma("forceinline");
		return __imgui_arrow_button(_id, dir);
	}

	/// @function Image(spr, frame, width, height, blend, alpha)
	/// @argument {Real} spr
	/// @argument {Real} [frame=0]
	/// @argument {Real} [width=sprite_get_width(spr)]
	/// @argument {Real} [height=sprite_get_height(spr)]
	/// @argument {Real} [blend=c_white]
	/// @argument {Real} [alpha=1]
	/// @return {Undefined}
	static Image = function(spr, frame=0, width=sprite_get_width(spr), height=sprite_get_height(spr), blend=c_white, alpha=1) {
		gml_pragma("forceinline");
		texture_set_stage(0, sprite_get_texture(spr, frame)); 
		return __imgui_image(spr, frame, width, height, blend, alpha, sprite_get_uvs(spr, frame));
	}

	/// @function ImageButton(_id, spr, frame, width, height, blend, alpha)
	/// @argument {String} _id
	/// @argument {Real} spr
	/// @argument {Real} [frame=0]
	/// @argument {Real} [width=sprite_get_width(spr)]
	/// @argument {Real} [height=sprite_get_height(spr)]
	/// @argument {Real} [blend=c_white]
	/// @argument {Real} [alpha=1]
	/// @return {Bool}
	static ImageButton = function(_id, spr, frame=0, width=sprite_get_width(spr), height=sprite_get_height(spr), blend=c_white, alpha=1) {
		gml_pragma("forceinline");
		texture_set_stage(0, sprite_get_texture(spr, frame)); 
		return __imgui_image_button(_id, spr, frame, width, height, blend, alpha, sprite_get_uvs(spr, frame));
	}

	/// @function Checkbox(label, val)
	/// @argument {String} label
	/// @argument {Bool} val
	/// @return {Bool}
	static Checkbox = function(label, val) {
		gml_pragma("forceinline");
		return __imgui_checkbox(label, val);
	}

	/// @function RadioButton(label, active)
	/// @argument {String} label
	/// @argument {Bool} active
	/// @return {Bool}
	static RadioButton = function(label, active) {
		gml_pragma("forceinline");
		return __imgui_radio_button(label, active);
	}

	/// @function ProgressBar(frac, width, height, overlay)
	/// @argument {Real} frac
	/// @argument {Real} [width=0]
	/// @argument {Real} [height=0]
	/// @argument {String} overlay
	/// @return {Undefined}
	static ProgressBar = function(frac, width=0, height=0, overlay) {
		gml_pragma("forceinline");
		return __imgui_progressbar(frac, width, height, overlay);
	}

	/// @function Bullet()
	/// @return {Undefined}
	static Bullet = function() {
		gml_pragma("forceinline");
		return __imgui_bullet();
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

	/// @function BeginCombo(label, preview_val, flags)
	/// @argument {String} label
	/// @argument {String} preview_val
	/// @argument {Real} [flags=ImGuiComboFlags.None]
	/// @return {Bool}
	static BeginCombo = function(label, preview_val, flags=ImGuiComboFlags.None) {
		gml_pragma("forceinline");
		return __imgui_begin_combo(label, preview_val, flags);
	}

	/// @function EndCombo()
	/// @return {Undefined}
	static EndCombo = function() {
		gml_pragma("forceinline");
		return __imgui_end_combo();
	}

	/// @function DragFloat(label, val, val_speed, val_min, val_max, fmt, flags)
	/// @argument {String} label
	/// @argument {Real} val
	/// @argument {Real} [val_speed=1]
	/// @argument {Real} [val_min=1]
	/// @argument {Real} [val_max=1]
	/// @argument {String} [fmt=%.3f]
	/// @argument {Real} [flags=ImGuiComboFlags.None]
	/// @return {Real}
	static DragFloat = function(label, val, val_speed=1, val_min=1, val_max=1, fmt="%.3f", flags=ImGuiComboFlags.None) {
		gml_pragma("forceinline");
		return __imgui_drag_float(label, val, val_speed, val_min, val_max, fmt, flags);
	}

	/// @function DragFloat2(label, val, val_speed, val_min, val_max, fmt, flags)
	/// @argument {String} label
	/// @argument {Array<Real>} val
	/// @argument {Real} [val_speed=1]
	/// @argument {Real} [val_min=1]
	/// @argument {Real} [val_max=1]
	/// @argument {String} [fmt=%.3f]
	/// @argument {Real} [flags=ImGuiComboFlags.None]
	/// @return {Array<Real>}
	static DragFloat2 = function(label, val, val_speed=1, val_min=1, val_max=1, fmt="%.3f", flags=ImGuiComboFlags.None) {
		gml_pragma("forceinline");
		return __imgui_drag_float2(label, val, val_speed, val_min, val_max, fmt, flags);
	}

	/// @function DragFloat3(label, val, val_speed, val_min, val_max, fmt, flags)
	/// @argument {String} label
	/// @argument {Array<Real>} val
	/// @argument {Real} [val_speed=1]
	/// @argument {Real} [val_min=1]
	/// @argument {Real} [val_max=1]
	/// @argument {String} [fmt=%.3f]
	/// @argument {Real} [flags=ImGuiComboFlags.None]
	/// @return {Array<Real>}
	static DragFloat3 = function(label, val, val_speed=1, val_min=1, val_max=1, fmt="%.3f", flags=ImGuiComboFlags.None) {
		gml_pragma("forceinline");
		return __imgui_drag_float3(label, val, val_speed, val_min, val_max, fmt, flags);
	}

	/// @function DragFloat4(label, val, val_speed, val_min, val_max, fmt, flags)
	/// @argument {String} label
	/// @argument {Array<Real>} val
	/// @argument {Real} [val_speed=1]
	/// @argument {Real} [val_min=1]
	/// @argument {Real} [val_max=1]
	/// @argument {String} [fmt=%.3f]
	/// @argument {Real} [flags=ImGuiComboFlags.None]
	/// @return {Array<Real>}
	static DragFloat4 = function(label, val, val_speed=1, val_min=1, val_max=1, fmt="%.3f", flags=ImGuiComboFlags.None) {
		gml_pragma("forceinline");
		return __imgui_drag_float4(label, val, val_speed, val_min, val_max, fmt, flags);
	}

	/// @function DragFloatRange2(label, val, val_speed, val_min, val_max, fmt, fmt_max, flags)
	/// @argument {String} label
	/// @argument {Array<Real>} val
	/// @argument {Real} [val_speed=1]
	/// @argument {Real} [val_min=1]
	/// @argument {Real} [val_max=1]
	/// @argument {String} [fmt=%.3f]
	/// @argument {String} [fmt_max=%.3f]
	/// @argument {Real} [flags=ImGuiComboFlags.None]
	/// @return {Undefined}
	static DragFloatRange2 = function(label, val, val_speed=1, val_min=1, val_max=1, fmt="%.3f", fmt_max="%.3f", flags=ImGuiComboFlags.None) {
		gml_pragma("forceinline");
		return __imgui_drag_float_range2(label, val, val_speed, val_min, val_max, fmt, fmt_max, flags);
	}

	/// @function DragInt(label, val, val_speed, val_min, val_max, fmt, flags)
	/// @argument {String} label
	/// @argument {Real} val
	/// @argument {Real} [val_speed=1]
	/// @argument {Real} [val_min=1]
	/// @argument {Real} [val_max=1]
	/// @argument {String} [fmt=%d]
	/// @argument {Real} [flags=ImGuiComboFlags.None]
	/// @return {Real}
	static DragInt = function(label, val, val_speed=1, val_min=1, val_max=1, fmt="%d", flags=ImGuiComboFlags.None) {
		gml_pragma("forceinline");
		return __imgui_drag_int(label, val, val_speed, val_min, val_max, fmt, flags);
	}

	/// @function DragInt2(label, val, val_speed, val_min, val_max, fmt, flags)
	/// @argument {String} label
	/// @argument {Array<Real>} val
	/// @argument {Real} [val_speed=1]
	/// @argument {Real} [val_min=1]
	/// @argument {Real} [val_max=1]
	/// @argument {String} [fmt=%d]
	/// @argument {Real} [flags=ImGuiComboFlags.None]
	/// @return {Array<Real>}
	static DragInt2 = function(label, val, val_speed=1, val_min=1, val_max=1, fmt="%d", flags=ImGuiComboFlags.None) {
		gml_pragma("forceinline");
		return __imgui_drag_int2(label, val, val_speed, val_min, val_max, fmt, flags);
	}

	/// @function DragInt3(label, val, val_speed, val_min, val_max, fmt, flags)
	/// @argument {String} label
	/// @argument {Array<Real>} val
	/// @argument {Real} [val_speed=1]
	/// @argument {Real} [val_min=1]
	/// @argument {Real} [val_max=1]
	/// @argument {String} [fmt=%d]
	/// @argument {Real} [flags=ImGuiComboFlags.None]
	/// @return {Array<Real>}
	static DragInt3 = function(label, val, val_speed=1, val_min=1, val_max=1, fmt="%d", flags=ImGuiComboFlags.None) {
		gml_pragma("forceinline");
		return __imgui_drag_int3(label, val, val_speed, val_min, val_max, fmt, flags);
	}

	/// @function DragInt4(label, val, val_speed, val_min, val_max, fmt, flags)
	/// @argument {String} label
	/// @argument {Array<Real>} val
	/// @argument {Real} [val_speed=1]
	/// @argument {Real} [val_min=1]
	/// @argument {Real} [val_max=1]
	/// @argument {String} [fmt=%d]
	/// @argument {Real} [flags=ImGuiComboFlags.None]
	/// @return {Array<Real>}
	static DragInt4 = function(label, val, val_speed=1, val_min=1, val_max=1, fmt="%d", flags=ImGuiComboFlags.None) {
		gml_pragma("forceinline");
		return __imgui_drag_int4(label, val, val_speed, val_min, val_max, fmt, flags);
	}

	/// @function DragIntRange2(label, val, val_speed, val_min, val_max, fmt, fmt_max, flags)
	/// @argument {String} label
	/// @argument {Array<Real>} val
	/// @argument {Real} [val_speed=1]
	/// @argument {Real} [val_min=1]
	/// @argument {Real} [val_max=1]
	/// @argument {String} [fmt=%.3f]
	/// @argument {String} [fmt_max=%.3f]
	/// @argument {Real} [flags=ImGuiComboFlags.None]
	/// @return {Undefined}
	static DragIntRange2 = function(label, val, val_speed=1, val_min=1, val_max=1, fmt="%.3f", fmt_max="%.3f", flags=ImGuiComboFlags.None) {
		gml_pragma("forceinline");
		return __imgui_drag_int_range2(label, val, val_speed, val_min, val_max, fmt, fmt_max, flags);
	}

	/// @function SliderFloat(label, val, val_min, val_max, fmt, flags)
	/// @argument {String} label
	/// @argument {Real} val
	/// @argument {Real} [val_min=1]
	/// @argument {Real} [val_max=1]
	/// @argument {String} [fmt=%.3f]
	/// @argument {Real} [flags=ImGuiSliderFlags.None]
	/// @return {Real}
	static SliderFloat = function(label, val, val_min=1, val_max=1, fmt="%.3f", flags=ImGuiSliderFlags.None) {
		gml_pragma("forceinline");
		return __imgui_slider_float(label, val, val_min, val_max, fmt, flags);
	}

	/// @function SliderFloat2(label, val, val_min, val_max, fmt, flags)
	/// @argument {String} label
	/// @argument {Array<Real>} [val=1]
	/// @argument {Real} [val_min=1]
	/// @argument {Real} [val_max=1]
	/// @argument {String} [fmt=%.3f]
	/// @argument {Real} [flags=ImGuiSliderFlags.None]
	/// @return {Array<Real>}
	static SliderFloat2 = function(label, val=1, val_min=1, val_max=1, fmt="%.3f", flags=ImGuiSliderFlags.None) {
		gml_pragma("forceinline");
		return __imgui_slider_float2(label, val, val_min, val_max, fmt, flags);
	}

	/// @function SliderFloat3(label, val, val_min, val_max, fmt, flags)
	/// @argument {String} label
	/// @argument {Array<Real>} val
	/// @argument {Real} [val_min=1]
	/// @argument {Real} [val_max=1]
	/// @argument {String} [fmt=%.3f]
	/// @argument {Real} [flags=ImGuiSliderFlags.None]
	/// @return {Array<Real>}
	static SliderFloat3 = function(label, val, val_min=1, val_max=1, fmt="%.3f", flags=ImGuiSliderFlags.None) {
		gml_pragma("forceinline");
		return __imgui_slider_float3(label, val, val_min, val_max, fmt, flags);
	}

	/// @function SliderFloat4(label, val, val_min, val_max, fmt, flags)
	/// @argument {String} label
	/// @argument {Array<Real>} [val=1]
	/// @argument {Real} [val_min=1]
	/// @argument {Real} [val_max=1]
	/// @argument {String} [fmt=%.3f]
	/// @argument {Real} [flags=ImGuiSliderFlags.None]
	/// @return {Array<Real>}
	static SliderFloat4 = function(label, val=1, val_min=1, val_max=1, fmt="%.3f", flags=ImGuiSliderFlags.None) {
		gml_pragma("forceinline");
		return __imgui_slider_float4(label, val, val_min, val_max, fmt, flags);
	}

	/// @function SliderAngle(label, v_rad, v_deg_min, v_deg_max, fmt, flags)
	/// @argument {String} label
	/// @argument {Real} v_rad
	/// @argument {Real} [v_deg_min=1]
	/// @argument {Real} [v_deg_max=1]
	/// @argument {String} [fmt=%.0f deg]
	/// @argument {Real} [flags=ImGuiSliderFlags.None]
	/// @return {Real}
	static SliderAngle = function(label, v_rad, v_deg_min=1, v_deg_max=1, fmt="%.0f deg", flags=ImGuiSliderFlags.None) {
		gml_pragma("forceinline");
		return __imgui_slider_angle(label, v_rad, v_deg_min, v_deg_max, fmt, flags);
	}

	/// @function SliderInt(label, val, val_min, val_max, fmt, flags)
	/// @argument {String} label
	/// @argument {Real} val
	/// @argument {Real} [val_min=1]
	/// @argument {Real} [val_max=1]
	/// @argument {String} [fmt=%d]
	/// @argument {Real} [flags=ImGuiSliderFlags.None]
	/// @return {Real}
	static SliderInt = function(label, val, val_min=1, val_max=1, fmt="%d", flags=ImGuiSliderFlags.None) {
		gml_pragma("forceinline");
		return __imgui_slider_int(label, val, val_min, val_max, fmt, flags);
	}

	/// @function SliderInt2(label, val, val_min, val_max, fmt, flags)
	/// @argument {String} label
	/// @argument {Array<Real>} [val=1]
	/// @argument {Real} [val_min=1]
	/// @argument {Real} [val_max=1]
	/// @argument {String} [fmt=%d]
	/// @argument {Real} [flags=ImGuiSliderFlags.None]
	/// @return {Array<Real>}
	static SliderInt2 = function(label, val=1, val_min=1, val_max=1, fmt="%d", flags=ImGuiSliderFlags.None) {
		gml_pragma("forceinline");
		return __imgui_slider_int2(label, val, val_min, val_max, fmt, flags);
	}

	/// @function SliderInt3(label, val, val_min, val_max, fmt, flags)
	/// @argument {String} label
	/// @argument {Array<Real>} [val=1]
	/// @argument {Real} [val_min=1]
	/// @argument {Real} [val_max=1]
	/// @argument {String} [fmt=%d]
	/// @argument {Real} [flags=ImGuiSliderFlags.None]
	/// @return {Array<Real>}
	static SliderInt3 = function(label, val=1, val_min=1, val_max=1, fmt="%d", flags=ImGuiSliderFlags.None) {
		gml_pragma("forceinline");
		return __imgui_slider_int3(label, val, val_min, val_max, fmt, flags);
	}

	/// @function SliderInt4(label, val, val_min, val_max, fmt, flags)
	/// @argument {String} label
	/// @argument {Array<Real>} [val=1]
	/// @argument {Real} [val_min=1]
	/// @argument {Real} [val_max=1]
	/// @argument {String} [fmt=%d]
	/// @argument {Real} [flags=ImGuiSliderFlags.None]
	/// @return {Array<Real>}
	static SliderInt4 = function(label, val=1, val_min=1, val_max=1, fmt="%d", flags=ImGuiSliderFlags.None) {
		gml_pragma("forceinline");
		return __imgui_slider_int4(label, val, val_min, val_max, fmt, flags);
	}

	/// @function InputFloat(label, val, step, step_fast, fmt, flags)
	/// @argument {String} label
	/// @argument {Real} val
	/// @argument {Real} [step=1]
	/// @argument {Real} [step_fast=1]
	/// @argument {String} [fmt=%.3f]
	/// @argument {Real} [flags=ImGuiInputTextFlags.None]
	/// @return {Real}
	static InputFloat = function(label, val, step=1, step_fast=1, fmt="%.3f", flags=ImGuiInputTextFlags.None) {
		gml_pragma("forceinline");
		return __imgui_input_float(label, val, step, step_fast, fmt, flags);
	}

	/// @function InputFloat2(label, val, fmt, flags)
	/// @argument {String} label
	/// @argument {Array<Real>} [val=1]
	/// @argument {String} [fmt=%.3f]
	/// @argument {Real} [flags=ImGuiSliderFlags.None]
	/// @return {Array<Real>}
	static InputFloat2 = function(label, val=1, fmt="%.3f", flags=ImGuiSliderFlags.None) {
		gml_pragma("forceinline");
		return __imgui_input_float2(label, val, fmt, flags);
	}

	/// @function InputFloat3(label, val, fmt, flags)
	/// @argument {String} label
	/// @argument {Array<Real>} [val=1]
	/// @argument {String} [fmt=%.3f]
	/// @argument {Real} [flags=ImGuiSliderFlags.None]
	/// @return {Array<Real>}
	static InputFloat3 = function(label, val=1, fmt="%.3f", flags=ImGuiSliderFlags.None) {
		gml_pragma("forceinline");
		return __imgui_input_float3(label, val, fmt, flags);
	}

	/// @function InputFloat4(label, val, fmt, flags)
	/// @argument {String} label
	/// @argument {Array<Real>} [val=1]
	/// @argument {String} [fmt=%.3f]
	/// @argument {Real} [flags=ImGuiSliderFlags.None]
	/// @return {Array<Real>}
	static InputFloat4 = function(label, val=1, fmt="%.3f", flags=ImGuiSliderFlags.None) {
		gml_pragma("forceinline");
		return __imgui_input_float4(label, val, fmt, flags);
	}

	/// @function InputInt(label, val, step, step_fast, flags)
	/// @argument {String} label
	/// @argument {Real} val
	/// @argument {Real} [step=1]
	/// @argument {Real} [step_fast=100]
	/// @argument {Real} [flags=ImGuiInputTextFlags.None]
	/// @return {Real}
	static InputInt = function(label, val, step=1, step_fast=100, flags=ImGuiInputTextFlags.None) {
		gml_pragma("forceinline");
		return __imgui_input_int(label, val, step, step_fast, flags);
	}

	/// @function InputInt2(label, val, flags)
	/// @argument {String} label
	/// @argument {Array<Real>} [val=1]
	/// @argument {Real} [flags=ImGuiInputTextFlags.None]
	/// @return {Array<Real>}
	static InputInt2 = function(label, val=1, flags=ImGuiInputTextFlags.None) {
		gml_pragma("forceinline");
		return __imgui_input_int2(label, val, flags);
	}

	/// @function InputInt3(label, val, flags)
	/// @argument {String} label
	/// @argument {Array<Real>} [val=1]
	/// @argument {Real} [flags=ImGuiInputTextFlags.None]
	/// @return {Array<Real>}
	static InputInt3 = function(label, val=1, flags=ImGuiInputTextFlags.None) {
		gml_pragma("forceinline");
		return __imgui_input_int3(label, val, flags);
	}

	/// @function InputInt4(label, val, flags)
	/// @argument {String} label
	/// @argument {Array<Real>} [val=1]
	/// @argument {Real} [flags=ImGuiInputTextFlags.None]
	/// @return {Array<Real>}
	static InputInt4 = function(label, val=1, flags=ImGuiInputTextFlags.None) {
		gml_pragma("forceinline");
		return __imgui_input_int4(label, val, flags);
	}

	/// @function InputDouble(label, val, step, step_fast, fmt, flags)
	/// @argument {String} label
	/// @argument {Real} val
	/// @argument {Real} [step=0]
	/// @argument {Real} [step_fast=0]
	/// @argument {String} [fmt=%.6f]
	/// @argument {Real} [flags=ImGuiInputTextFlags.None]
	/// @return {Real}
	static InputDouble = function(label, val, step=0, step_fast=0, fmt="%.6f", flags=ImGuiInputTextFlags.None) {
		gml_pragma("forceinline");
		return __imgui_input_double(label, val, step, step_fast, fmt, flags);
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

	/// @function InputTextWithHint(label, hint, val, flags)
	/// @argument {String} label
	/// @argument {String} hint
	/// @argument {String} val
	/// @argument {Real} [flags=ImGuiInputTextFlags.None]
	/// @return {String}
	static InputTextWithHint = function(label, hint, val, flags=ImGuiInputTextFlags.None) {
		gml_pragma("forceinline");
		return __imgui_input_text_with_hint(label, hint, val, flags);
	}

	/// @function InputTextMultiline(label, val, flags, width, height)
	/// @argument {String} label
	/// @argument {String} val
	/// @argument {Real} [flags=ImGuiInputTextFlags.None]
	/// @argument {Real} [width=0]
	/// @argument {Real} [height=0]
	/// @return {String}
	static InputTextMultiline = function(label, val, flags=ImGuiInputTextFlags.None, width=0, height=0) {
		gml_pragma("forceinline");
		return __imgui_input_text_multiline(label, val, flags, width, height);
	}

	/// @function ColorEdit3(label, color, flags)
	/// @argument {String} label
	/// @argument {Real} color
	/// @argument {Real} [flags=ImGuiColorEditFlags.None]
	/// @return {Real}
	static ColorEdit3 = function(label, color, flags=ImGuiColorEditFlags.None) {
		gml_pragma("forceinline");
		return __imgui_color_edit3(label, color, flags);
	}

	/// @function ColorEdit4(label, color, flags)
	/// @argument {String} label
	/// @argument {Real} color
	/// @argument {Real} [flags=ImGuiColorEditFlags.None]
	/// @return {Real}
	static ColorEdit4 = function(label, color, flags=ImGuiColorEditFlags.None) {
		gml_pragma("forceinline");
		return __imgui_color_edit4(label, color, flags);
	}

	/// @function ColorPicker3(label, color, flags)
	/// @argument {String} label
	/// @argument {Real} color
	/// @argument {Real} [flags=ImGuiColorEditFlags.None]
	/// @return {Real}
	static ColorPicker3 = function(label, color, flags=ImGuiColorEditFlags.None) {
		gml_pragma("forceinline");
		return __imgui_color_picker3(label, color, flags);
	}

	/// @function ColorPicker4(label, color, flags)
	/// @argument {String} label
	/// @argument {Real} color
	/// @argument {Real} [flags=ImGuiColorEditFlags.None]
	/// @return {Real}
	static ColorPicker4 = function(label, color, flags=ImGuiColorEditFlags.None) {
		gml_pragma("forceinline");
		return __imgui_color_picker4(label, color, flags);
	}

	/// @function ColorButton(_id, color, alpha, flags, width, height)
	/// @argument {String} _id
	/// @argument {Real} color
	/// @argument {Real} [alpha=1]
	/// @argument {Real} [flags=ImGuiColorEditFlags.None]
	/// @argument {Real} [width=0]
	/// @argument {Real} [height=0]
	/// @return {Bool}
	static ColorButton = function(_id, color, alpha=1, flags=ImGuiColorEditFlags.None, width=0, height=0) {
		gml_pragma("forceinline");
		return __imgui_color_button(_id, color, alpha, flags, width, height);
	}

	/// @function SetColorEditOptions(flags)
	/// @argument {Real} flags
	/// @return {Undefined}
	static SetColorEditOptions = function(flags) {
		gml_pragma("forceinline");
		return __imgui_set_color_edit_options(flags);
	}

	/// @function TreeNode(label)
	/// @argument {String} label
	/// @return {Bool}
	static TreeNode = function(label) {
		gml_pragma("forceinline");
		return __imgui_treenode(label);
	}

	/// @function TreeNodeEx(label, flags)
	/// @argument {String} label
	/// @argument {Real} [flags=ImGuiTreeNodeFlags.None]
	/// @return {Bool}
	static TreeNodeEx = function(label, flags=ImGuiTreeNodeFlags.None) {
		gml_pragma("forceinline");
		return __imgui_treenode_ex(label, flags);
	}

	/// @function TreePush(_id)
	/// @argument {String} _id
	/// @return {Undefined}
	static TreePush = function(_id) {
		gml_pragma("forceinline");
		return __imgui_tree_push(_id);
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

	/// @function SetNextItemOpen(open, cond)
	/// @argument {Bool} open
	/// @argument {Real} [cond=ImGuiCond.None]
	/// @return {Undefined}
	static SetNextItemOpen = function(open, cond=ImGuiCond.None) {
		gml_pragma("forceinline");
		return __imgui_set_next_item_open(open, cond);
	}

	/// @function CollapsingHeader(label, open, flags, ret_mask)
	/// @argument {String} label
	/// @argument {Bool} open
	/// @argument {Real} [flags=ImGuiTreeNodeFlags.None]
	/// @argument {Real} [ret_mask=ImGuiReturnFlags.Open]
	/// @return {Real}
	static CollapsingHeader = function(label, open, flags=ImGuiTreeNodeFlags.None, ret_mask=ImGuiReturnFlags.Open) {
		gml_pragma("forceinline");
		return __imgui_collapsing_header(label, open, flags, ret_mask);
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

	/// @function ListBox(label, ind, items, height_in_items)
	/// @argument {String} label
	/// @argument {Real} ind
	/// @argument {Array<String>} items
	/// @argument {Real} [height_in_items=-1]
	/// @return {Real}
	static ListBox = function(label, ind, items, height_in_items=-1) {
		gml_pragma("forceinline");
		return __imgui_listbox(label, ind, items, height_in_items);
	}

	/// @function PlotLines(label, values, overlay, width, height, stride)
	/// @argument {String} label
	/// @argument {Array<Any>} values
	/// @argument {String} overlay
	/// @argument {Real} [width=0]
	/// @argument {Real} [height=0]
	/// @argument {Real} [stride=4]
	/// @return {Undefined}
	static PlotLines = function(label, values, overlay, width=0, height=0, stride=4) {
		gml_pragma("forceinline");
		return __imgui_plot_lines(label, values, overlay, width, height, stride);
	}

	/// @function PlotHistogram(label, values, overlay, width, height, stride)
	/// @argument {String} label
	/// @argument {Array<Any>} values
	/// @argument {String} overlay
	/// @argument {Real} [width=0]
	/// @argument {Real} [height=0]
	/// @argument {Real} [stride=4]
	/// @return {Undefined}
	static PlotHistogram = function(label, values, overlay, width=0, height=0, stride=4) {
		gml_pragma("forceinline");
		return __imgui_plot_histogram(label, values, overlay, width, height, stride);
	}

	/// @function BeginMenuBar()
	/// @return {Bool}
	static BeginMenuBar = function() {
		gml_pragma("forceinline");
		return __imgui_begin_menu_bar();
	}

	/// @function EndMenuBar()
	/// @return {Undefined}
	static EndMenuBar = function() {
		gml_pragma("forceinline");
		return __imgui_end_menu_bar();
	}

	/// @function BeginMainMenuBar()
	/// @return {Bool}
	static BeginMainMenuBar = function() {
		gml_pragma("forceinline");
		return __imgui_begin_main_menu_bar();
	}

	/// @function EndMainMenuBar()
	/// @return {Undefined}
	static EndMainMenuBar = function() {
		gml_pragma("forceinline");
		return __imgui_end_main_menu_bar();
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

	/// @function MenuItem(label, shortcut, enabled, selected)
	/// @argument {String} label
	/// @argument {Any} [shortcut=undefined]
	/// @argument {Bool} [enabled=true]
	/// @argument {Bool} [selected=false]
	/// @return {Bool}
	static MenuItem = function(label, shortcut=undefined, enabled=true, selected=false) {
		gml_pragma("forceinline");
		var ___ret =  __imgui_menu_item(label, shortcut, enabled, selected);
		show_debug_message(bruh)
		return ___ret;
	}

	/// @function BeginTabBar(_id, flags)
	/// @argument {String} _id
	/// @argument {Real} [flags=ImGuiTabBarFlags.None]
	/// @return {Bool}
	static BeginTabBar = function(_id, flags=ImGuiTabBarFlags.None) {
		gml_pragma("forceinline");
		return __imgui_begin_tab_bar(_id, flags);
	}

	/// @function EndTabBar()
	/// @return {Undefined}
	static EndTabBar = function() {
		gml_pragma("forceinline");
		return __imgui_end_tab_bar();
	}

	/// @function BeginTabItem(label, open, flags, ret_mask)
	/// @argument {String} label
	/// @argument {Bool} [open=undefined]
	/// @argument {Real} [flags=ImGuiTabItemFlags.None]
	/// @argument {Real} [ret_mask=ImGuiReturnFlags.Visible]
	/// @return {Real}
	static BeginTabItem = function(label, open=undefined, flags=ImGuiTabItemFlags.None, ret_mask=ImGuiReturnFlags.Visible) {
		gml_pragma("forceinline");
		return __imgui_begin_tab_item(label, open, flags, ret_mask);
	}

	/// @function EndTabItem()
	/// @return {Undefined}
	static EndTabItem = function() {
		gml_pragma("forceinline");
		return __imgui_end_tab_item();
	}

	/// @function TabItemButton(label, flags)
	/// @argument {String} label
	/// @argument {Real} [flags=ImGuiTabItemFlags.None]
	/// @return {Bool}
	static TabItemButton = function(label, flags=ImGuiTabItemFlags.None) {
		gml_pragma("forceinline");
		return __imgui_tab_item_button(label, flags);
	}

	/// @function SetTabItemClosed(label)
	/// @argument {String} label
	/// @return {Undefined}
	static SetTabItemClosed = function(label) {
		gml_pragma("forceinline");
		return __imgui_set_tab_item_closed(label);
	}

	/// @function GetStyleColorVec4(idx)
	/// @argument {Real} idx
	/// @return {Real}
	static GetStyleColorVec4 = function(idx) {
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

	/// @function PushStyleColor(idx, color, alpha)
	/// @argument {Real} idx
	/// @argument {Real} color
	/// @argument {Real} [alpha=1]
	/// @return {Undefined}
	static PushStyleColor = function(idx, color, alpha=1) {
		gml_pragma("forceinline");
		return __imgui_push_style_color(idx, color, alpha);
	}

	/// @function PopStyleColor(count)
	/// @argument {Real} [count=1]
	/// @return {Undefined}
	static PopStyleColor = function(count=1) {
		gml_pragma("forceinline");
		return __imgui_pop_style_color(count);
	}

	/// @function PushStyleVar(idx, v1, v2)
	/// @argument {Real} idx
	/// @argument {Real} v1
	/// @argument {Real} [v2=undefined]
	/// @return {Undefined}
	static PushStyleVar = function(idx, v1, v2=undefined) {
		gml_pragma("forceinline");
		return __imgui_push_style_var(idx, v1, v2);
	}

	/// @function PopStyleVar(count)
	/// @argument {Real} [count=1]
	/// @return {Undefined}
	static PopStyleVar = function(count=1) {
		gml_pragma("forceinline");
		return __imgui_pop_style_var(count);
	}

	/// @function Surface(surf, width, height, blend, alpha)
	/// @argument {Real} surf
	/// @argument {Real} [width=surface_get_width(surf)]
	/// @argument {Real} [height=surface_get_height(surf)]
	/// @argument {Real} [blend=c_white]
	/// @argument {Real} [alpha=1]
	/// @return {Undefined}
	static Surface = function(surf, width=surface_get_width(surf), height=surface_get_height(surf), blend=c_white, alpha=1) {
		gml_pragma("forceinline");
		var tex = surface_get_texture(surf); texture_set_stage(0, tex)
		return __imgui_surface(surf, width, height, blend, alpha, texture_get_uvs(tex));
	}

	/// @function Buffer(title, ind, size)
	/// @argument {String} title
	/// @argument {Real} ind
	/// @argument {Real} [size=buffer_get_size(ind)]
	/// @return {Undefined}
	static Buffer = function(title, ind, size=buffer_get_size(ind)) {
		gml_pragma("forceinline");
		return __imgui_buffer(title, ind, size);
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

	/// @section Internal
	/// @desc Where the (GML) magic happens, safe from the gen-bindings script
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
	
	/// @desc EXPERIMENTAL: If set, intercepts ImDrawData from implementation; native used otherwise
	static Translator = undefined; // new ImGui_Translator();
	
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
		if (Translator != undefined) {
			__imgui_render(Translator.Buffer);
			return Translator.Render();
		} else {
			return __imgui_render();
		}
	}
};