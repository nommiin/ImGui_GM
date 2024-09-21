///
/// Draw Event
///

/// If you have EXT_WINWIN and RENDERER_GM, then
/// do NOT __Draw in the Draw event. Because some mysterious memory leak happens.
/// Safest way is to use winwin __Draw(s) in Draw GUI event.

ImGui.__Draw();
