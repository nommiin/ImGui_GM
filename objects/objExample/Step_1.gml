///
/// Begin Step Event
///

/// Start new frame
ImGui.__NewFrame();

/// Resize room to match window for drawing correctly in normal Draw event.
room_width = window_get_width();
room_height = window_get_height();
