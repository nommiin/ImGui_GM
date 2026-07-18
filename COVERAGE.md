# About
This is an automatically generated file that keeps track of wrapper coverage of the ImGui API. This may not be 100% accurate as it is calculated programatically, but can serve as a good general idea of progress.

# Coverage
291 out of 388 API functions wrapped (**75% complete**)

| Function | Wrapped | Link | Notes |
| -------- | ------- | ---- | ----- |
| ImGui::CreateContext | ✅ | [imgui_api_gm.cpp](https://github.com/nommiin/ImGui_GM/blob/main/dll/imgui_api_gm.cpp#L8) | N/A |
| ImGui::DestroyContext | ✅ | [imgui_api_gm.cpp](https://github.com/nommiin/ImGui_GM/blob/main/dll/imgui_api_gm.cpp#L13) | N/A |
| ImGui::GetCurrentContext | ✅ | [imgui_api_gm.cpp](https://github.com/nommiin/ImGui_GM/blob/main/dll/imgui_api_gm.cpp#L20) | N/A |
| ImGui::SetCurrentContext | ✅ | [imgui_api_gm.cpp](https://github.com/nommiin/ImGui_GM/blob/main/dll/imgui_api_gm.cpp#L25) | N/A |
| ImGui::GetIO | ❌ | N/A | N/A |
| ImGui::GetPlatformIO | ❌ | N/A | Unsupported |
| ImGui::GetStyle | ❌ | N/A | N/A |
| ImGui::NewFrame | ❌ | N/A | Handled internally by [__imgui_update function](https://github.com/nommiin/ImGui_GM/blob/main/dll/main.cpp#L63) |
| ImGui::EndFrame | ✅ | [imgui_window_gm.cpp](https://github.com/nommiin/ImGui_GM/blob/main/dll/imgui_window_gm.cpp#L29) | N/A |
| ImGui::Render | ❌ | N/A | Handled internally by [__imgui_render function](https://github.com/nommiin/ImGui_GM/blob/main/dll/main.cpp#L69) |
| ImGui::GetDrawData | ❌ | N/A | N/A |
| ImGui::ShowDemoWindow | ✅ | [imgui_api_gm.cpp](https://github.com/nommiin/ImGui_GM/blob/main/dll/imgui_api_gm.cpp#L32) | N/A |
| ImGui::ShowMetricsWindow | ✅ | [imgui_api_gm.cpp](https://github.com/nommiin/ImGui_GM/blob/main/dll/imgui_api_gm.cpp#L48) | N/A |
| ImGui::ShowDebugLogWindow | ✅ | [imgui_api_gm.cpp](https://github.com/nommiin/ImGui_GM/blob/main/dll/imgui_api_gm.cpp#L64) | N/A |
| ImGui::ShowIDStackToolWindow | ✅ | [imgui_api_gm.cpp](https://github.com/nommiin/ImGui_GM/blob/main/dll/imgui_api_gm.cpp#L80) | N/A |
| ImGui::ShowAboutWindow | ✅ | [imgui_api_gm.cpp](https://github.com/nommiin/ImGui_GM/blob/main/dll/imgui_api_gm.cpp#L96) | N/A |
| ImGui::ShowStyleEditor | ✅ | [imgui_api_gm.cpp](https://github.com/nommiin/ImGui_GM/blob/main/dll/imgui_api_gm.cpp#L112) | N/A |
| ImGui::ShowStyleSelector | ✅ | [imgui_api_gm.cpp](https://github.com/nommiin/ImGui_GM/blob/main/dll/imgui_api_gm.cpp#L117) | N/A |
| ImGui::ShowFontSelector | ✅ | [imgui_api_gm.cpp](https://github.com/nommiin/ImGui_GM/blob/main/dll/imgui_api_gm.cpp#L124) | N/A |
| ImGui::ShowUserGuide | ✅ | [imgui_api_gm.cpp](https://github.com/nommiin/ImGui_GM/blob/main/dll/imgui_api_gm.cpp#L131) | N/A |
| ImGui::GetVersion | ✅ | [imgui_api_gm.cpp](https://github.com/nommiin/ImGui_GM/blob/main/dll/imgui_api_gm.cpp#L136) | N/A |
| ImGui::StyleColorsDark | ✅ | [imgui_style_gm.cpp](https://github.com/nommiin/ImGui_GM/blob/main/dll/imgui_style_gm.cpp#L3) | N/A |
| ImGui::StyleColorsLight | ✅ | [imgui_style_gm.cpp](https://github.com/nommiin/ImGui_GM/blob/main/dll/imgui_style_gm.cpp#L8) | N/A |
| ImGui::StyleColorsClassic | ✅ | [imgui_style_gm.cpp](https://github.com/nommiin/ImGui_GM/blob/main/dll/imgui_style_gm.cpp#L13) | N/A |
| ImGui::Begin | ✅ | [imgui_window_gm.cpp](https://github.com/nommiin/ImGui_GM/blob/main/dll/imgui_window_gm.cpp#L3) | See [ImGuiReturnMask Usage](https://github.com/nommiin/ImGui_GM/wiki/ImGuiReturnMask-Usage) for more info the `mask` argument |
| ImGui::End | ✅ | [imgui_window_gm.cpp](https://github.com/nommiin/ImGui_GM/blob/main/dll/imgui_window_gm.cpp#L24) | N/A |
| ImGui::BeginChild | ✅ | [imgui_window_gm.cpp](https://github.com/nommiin/ImGui_GM/blob/main/dll/imgui_window_gm.cpp#L34) | N/A |
| ImGui::BeginChild | ✅ | [imgui_window_gm.cpp](https://github.com/nommiin/ImGui_GM/blob/main/dll/imgui_window_gm.cpp#L34) | N/A |
| ImGui::EndChild | ✅ | [imgui_window_gm.cpp](https://github.com/nommiin/ImGui_GM/blob/main/dll/imgui_window_gm.cpp#L49) | N/A |
| ImGui::IsWindowAppearing | ✅ | [imgui_window_gm.cpp](https://github.com/nommiin/ImGui_GM/blob/main/dll/imgui_window_gm.cpp#L74) | N/A |
| ImGui::IsWindowCollapsed | ✅ | [imgui_window_gm.cpp](https://github.com/nommiin/ImGui_GM/blob/main/dll/imgui_window_gm.cpp#L79) | N/A |
| ImGui::IsWindowFocused | ✅ | [imgui_window_gm.cpp](https://github.com/nommiin/ImGui_GM/blob/main/dll/imgui_window_gm.cpp#L84) | N/A |
| ImGui::IsWindowHovered | ✅ | [imgui_window_gm.cpp](https://github.com/nommiin/ImGui_GM/blob/main/dll/imgui_window_gm.cpp#L92) | N/A |
| ImGui::GetWindowDrawList | ✅ | [imgui_drawlist_gm.cpp](https://github.com/nommiin/ImGui_GM/blob/main/dll/imgui_drawlist_gm.cpp#L32) | N/A |
| ImGui::GetWindowDpiScale | ✅ | [imgui_window_gm.cpp](https://github.com/nommiin/ImGui_GM/blob/main/dll/imgui_window_gm.cpp#L100) | N/A |
| ImGui::GetWindowPos | ❌ | N/A | ImVec2 returns are unsupported, use X/Y wrappers |
| ImGui::GetWindowSize | ❌ | N/A | ImVec2 returns are unsupported, use Width/Height wrappers |
| ImGui::GetWindowWidth | ✅ | [imgui_window_gm.cpp](https://github.com/nommiin/ImGui_GM/blob/main/dll/imgui_window_gm.cpp#L119) | N/A |
| ImGui::GetWindowHeight | ✅ | [imgui_window_gm.cpp](https://github.com/nommiin/ImGui_GM/blob/main/dll/imgui_window_gm.cpp#L124) | N/A |
| ImGui::GetWindowViewport | ❌ | N/A | N/A |
| ImGui::SetNextWindowPos | ✅ | [imgui_window_gm.cpp](https://github.com/nommiin/ImGui_GM/blob/main/dll/imgui_window_gm.cpp#L129) | N/A |
| ImGui::SetNextWindowSize | ✅ | [imgui_window_gm.cpp](https://github.com/nommiin/ImGui_GM/blob/main/dll/imgui_window_gm.cpp#L143) | N/A |
| ImGui::SetNextWindowSizeConstraints | ✅ | [imgui_window_gm.cpp](https://github.com/nommiin/ImGui_GM/blob/main/dll/imgui_window_gm.cpp#L153) | N/A |
| ImGui::SetNextWindowContentSize | ✅ | [imgui_window_gm.cpp](https://github.com/nommiin/ImGui_GM/blob/main/dll/imgui_window_gm.cpp#L164) | N/A |
| ImGui::SetNextWindowCollapsed | ✅ | [imgui_window_gm.cpp](https://github.com/nommiin/ImGui_GM/blob/main/dll/imgui_window_gm.cpp#L172) | N/A |
| ImGui::SetNextWindowFocus | ✅ | [imgui_window_gm.cpp](https://github.com/nommiin/ImGui_GM/blob/main/dll/imgui_window_gm.cpp#L181) | N/A |
| ImGui::SetNextWindowScroll | ✅ | [imgui_window_gm.cpp](https://github.com/nommiin/ImGui_GM/blob/main/dll/imgui_window_gm.cpp#L186) | N/A |
| ImGui::SetNextWindowBgAlpha | ✅ | [imgui_window_gm.cpp](https://github.com/nommiin/ImGui_GM/blob/main/dll/imgui_window_gm.cpp#L194) | N/A |
| ImGui::SetNextWindowViewport | ❌ | N/A | N/A |
| ImGui::SetWindowPos | ✅ | [imgui_window_gm.cpp](https://github.com/nommiin/ImGui_GM/blob/main/dll/imgui_window_gm.cpp#L269) | N/A |
| ImGui::SetWindowSize | ✅ | [imgui_window_gm.cpp](https://github.com/nommiin/ImGui_GM/blob/main/dll/imgui_window_gm.cpp#L279) | N/A |
| ImGui::SetWindowCollapsed | ✅ | [imgui_window_gm.cpp](https://github.com/nommiin/ImGui_GM/blob/main/dll/imgui_window_gm.cpp#L296) | N/A |
| ImGui::SetWindowFocus | ✅ | [imgui_window_gm.cpp](https://github.com/nommiin/ImGui_GM/blob/main/dll/imgui_window_gm.cpp#L311) | N/A |
| ImGui::SetWindowPos | ✅ | [imgui_window_gm.cpp](https://github.com/nommiin/ImGui_GM/blob/main/dll/imgui_window_gm.cpp#L269) | N/A |
| ImGui::SetWindowSize | ✅ | [imgui_window_gm.cpp](https://github.com/nommiin/ImGui_GM/blob/main/dll/imgui_window_gm.cpp#L279) | N/A |
| ImGui::SetWindowCollapsed | ✅ | [imgui_window_gm.cpp](https://github.com/nommiin/ImGui_GM/blob/main/dll/imgui_window_gm.cpp#L296) | N/A |
| ImGui::SetWindowFocus | ✅ | [imgui_window_gm.cpp](https://github.com/nommiin/ImGui_GM/blob/main/dll/imgui_window_gm.cpp#L311) | N/A |
| ImGui::GetScrollX | ✅ | [imgui_window_gm.cpp](https://github.com/nommiin/ImGui_GM/blob/main/dll/imgui_window_gm.cpp#L201) | N/A |
| ImGui::GetScrollY | ✅ | [imgui_window_gm.cpp](https://github.com/nommiin/ImGui_GM/blob/main/dll/imgui_window_gm.cpp#L206) | N/A |
| ImGui::SetScrollX | ✅ | [imgui_window_gm.cpp](https://github.com/nommiin/ImGui_GM/blob/main/dll/imgui_window_gm.cpp#L211) | N/A |
| ImGui::SetScrollY | ✅ | [imgui_window_gm.cpp](https://github.com/nommiin/ImGui_GM/blob/main/dll/imgui_window_gm.cpp#L218) | N/A |
| ImGui::GetScrollMaxX | ✅ | [imgui_window_gm.cpp](https://github.com/nommiin/ImGui_GM/blob/main/dll/imgui_window_gm.cpp#L225) | N/A |
| ImGui::GetScrollMaxY | ✅ | [imgui_window_gm.cpp](https://github.com/nommiin/ImGui_GM/blob/main/dll/imgui_window_gm.cpp#L230) | N/A |
| ImGui::SetScrollHereX | ✅ | [imgui_window_gm.cpp](https://github.com/nommiin/ImGui_GM/blob/main/dll/imgui_window_gm.cpp#L235) | N/A |
| ImGui::SetScrollHereY | ✅ | [imgui_window_gm.cpp](https://github.com/nommiin/ImGui_GM/blob/main/dll/imgui_window_gm.cpp#L243) | N/A |
| ImGui::SetScrollFromPosX | ✅ | [imgui_window_gm.cpp](https://github.com/nommiin/ImGui_GM/blob/main/dll/imgui_window_gm.cpp#L251) | N/A |
| ImGui::SetScrollFromPosY | ✅ | [imgui_window_gm.cpp](https://github.com/nommiin/ImGui_GM/blob/main/dll/imgui_window_gm.cpp#L260) | N/A |
| ImGui::PushFont | ✅ | [imgui_fonts_gm.cpp](https://github.com/nommiin/ImGui_GM/blob/main/dll/imgui_fonts_gm.cpp#L13) | Fonts are currently unimplemented |
| ImGui::PopFont | ✅ | [imgui_fonts_gm.cpp](https://github.com/nommiin/ImGui_GM/blob/main/dll/imgui_fonts_gm.cpp#L28) | Fonts are currently unimplemented |
| ImGui::GetFont | ✅ | [imgui_fonts_gm.cpp](https://github.com/nommiin/ImGui_GM/blob/main/dll/imgui_fonts_gm.cpp#L3) | N/A |
| ImGui::GetFontSize | ✅ | [imgui_fonts_gm.cpp](https://github.com/nommiin/ImGui_GM/blob/main/dll/imgui_fonts_gm.cpp#L8) | N/A |
| ImGui::GetFontBaked | ❌ | N/A | N/A |
| ImGui::PushStyleColor | ✅ | [imgui_style_gm.cpp](https://github.com/nommiin/ImGui_GM/blob/main/dll/imgui_style_gm.cpp#L18) | N/A |
| ImGui::PushStyleColor | ✅ | [imgui_style_gm.cpp](https://github.com/nommiin/ImGui_GM/blob/main/dll/imgui_style_gm.cpp#L18) | N/A |
| ImGui::PopStyleColor | ✅ | [imgui_style_gm.cpp](https://github.com/nommiin/ImGui_GM/blob/main/dll/imgui_style_gm.cpp#L27) | N/A |
| ImGui::PushStyleVar | ✅ | [imgui_style_gm.cpp](https://github.com/nommiin/ImGui_GM/blob/main/dll/imgui_style_gm.cpp#L35) | N/A |
| ImGui::PushStyleVar | ✅ | [imgui_style_gm.cpp](https://github.com/nommiin/ImGui_GM/blob/main/dll/imgui_style_gm.cpp#L35) | N/A |
| ImGui::PushStyleVarX | ❌ | N/A | N/A |
| ImGui::PushStyleVarY | ❌ | N/A | N/A |
| ImGui::PopStyleVar | ✅ | [imgui_style_gm.cpp](https://github.com/nommiin/ImGui_GM/blob/main/dll/imgui_style_gm.cpp#L49) | N/A |
| ImGui::PushItemFlag | ✅ | [imgui_api_gm.cpp](https://github.com/nommiin/ImGui_GM/blob/main/dll/imgui_api_gm.cpp#L160) | N/A |
| ImGui::PopItemFlag | ✅ | [imgui_api_gm.cpp](https://github.com/nommiin/ImGui_GM/blob/main/dll/imgui_api_gm.cpp#L168) | N/A |
| ImGui::PushItemWidth | ✅ | [imgui_layout_gm.cpp](https://github.com/nommiin/ImGui_GM/blob/main/dll/imgui_layout_gm.cpp#L215) | N/A |
| ImGui::PopItemWidth | ✅ | [imgui_layout_gm.cpp](https://github.com/nommiin/ImGui_GM/blob/main/dll/imgui_layout_gm.cpp#L222) | N/A |
| ImGui::SetNextItemWidth | ✅ | [imgui_layout_gm.cpp](https://github.com/nommiin/ImGui_GM/blob/main/dll/imgui_layout_gm.cpp#L227) | N/A |
| ImGui::CalcItemWidth | ✅ | [imgui_layout_gm.cpp](https://github.com/nommiin/ImGui_GM/blob/main/dll/imgui_layout_gm.cpp#L234) | N/A |
| ImGui::PushTextWrapPos | ✅ | [imgui_layout_gm.cpp](https://github.com/nommiin/ImGui_GM/blob/main/dll/imgui_layout_gm.cpp#L239) | N/A |
| ImGui::PopTextWrapPos | ✅ | [imgui_layout_gm.cpp](https://github.com/nommiin/ImGui_GM/blob/main/dll/imgui_layout_gm.cpp#L247) | N/A |
| ImGui::GetFontTexUvWhitePixel | ❌ | N/A | N/A |
| ImGui::GetColorU32 | ❌ | N/A | Unsupported, use `ImGui.GetStyleColor` |
| ImGui::GetColorU32 | ❌ | N/A | Unsupported, use `ImGui.GetStyleColor` |
| ImGui::GetColorU32 | ❌ | N/A | Unsupported, use `ImGui.GetStyleColor` |
| ImGui::GetStyleColorVec4 | ❌ | N/A | N/A |
| ImGui::GetCursorScreenPos | ❌ | N/A | ImVec2 returns are unsupported, use X/Y wrappers |
| ImGui::SetCursorScreenPos | ✅ | [imgui_layout_gm.cpp](https://github.com/nommiin/ImGui_GM/blob/main/dll/imgui_layout_gm.cpp#L109) | N/A |
| ImGui::GetContentRegionAvail | ❌ | N/A | ImVec2 returns are unsupported, use X/Y wrappers |
| ImGui::GetCursorPos | ❌ | N/A | ImVec2 returns are unsupported, use X/Y wrappers |
| ImGui::GetCursorPosX | ✅ | [imgui_layout_gm.cpp](https://github.com/nommiin/ImGui_GM/blob/main/dll/imgui_layout_gm.cpp#L71) | N/A |
| ImGui::GetCursorPosY | ✅ | [imgui_layout_gm.cpp](https://github.com/nommiin/ImGui_GM/blob/main/dll/imgui_layout_gm.cpp#L76) | N/A |
| ImGui::SetCursorPos | ✅ | [imgui_layout_gm.cpp](https://github.com/nommiin/ImGui_GM/blob/main/dll/imgui_layout_gm.cpp#L117) | N/A |
| ImGui::SetCursorPosX | ✅ | [imgui_layout_gm.cpp](https://github.com/nommiin/ImGui_GM/blob/main/dll/imgui_layout_gm.cpp#L125) | N/A |
| ImGui::SetCursorPosY | ✅ | [imgui_layout_gm.cpp](https://github.com/nommiin/ImGui_GM/blob/main/dll/imgui_layout_gm.cpp#L132) | N/A |
| ImGui::GetCursorStartPos | ❌ | N/A | ImVec2 returns are unsupported, use X/Y wrappers |
| ImGui::Separator | ✅ | [imgui_layout_gm.cpp](https://github.com/nommiin/ImGui_GM/blob/main/dll/imgui_layout_gm.cpp#L30) | N/A |
| ImGui::SameLine | ✅ | [imgui_layout_gm.cpp](https://github.com/nommiin/ImGui_GM/blob/main/dll/imgui_layout_gm.cpp#L51) | N/A |
| ImGui::NewLine | ✅ | [imgui_layout_gm.cpp](https://github.com/nommiin/ImGui_GM/blob/main/dll/imgui_layout_gm.cpp#L20) | N/A |
| ImGui::Spacing | ✅ | [imgui_layout_gm.cpp](https://github.com/nommiin/ImGui_GM/blob/main/dll/imgui_layout_gm.cpp#L7) | N/A |
| ImGui::Dummy | ✅ | [imgui_layout_gm.cpp](https://github.com/nommiin/ImGui_GM/blob/main/dll/imgui_layout_gm.cpp#L12) | N/A |
| ImGui::Indent | ✅ | [imgui_layout_gm.cpp](https://github.com/nommiin/ImGui_GM/blob/main/dll/imgui_layout_gm.cpp#L35) | N/A |
| ImGui::Unindent | ✅ | [imgui_layout_gm.cpp](https://github.com/nommiin/ImGui_GM/blob/main/dll/imgui_layout_gm.cpp#L43) | N/A |
| ImGui::BeginGroup | ✅ | [imgui_layout_gm.cpp](https://github.com/nommiin/ImGui_GM/blob/main/dll/imgui_layout_gm.cpp#L61) | N/A |
| ImGui::EndGroup | ✅ | [imgui_layout_gm.cpp](https://github.com/nommiin/ImGui_GM/blob/main/dll/imgui_layout_gm.cpp#L66) | N/A |
| ImGui::AlignTextToFramePadding | ✅ | [imgui_layout_gm.cpp](https://github.com/nommiin/ImGui_GM/blob/main/dll/imgui_layout_gm.cpp#L25) | N/A |
| ImGui::GetTextLineHeight | ✅ | [imgui_layout_gm.cpp](https://github.com/nommiin/ImGui_GM/blob/main/dll/imgui_layout_gm.cpp#L139) | N/A |
| ImGui::GetTextLineHeightWithSpacing | ✅ | [imgui_layout_gm.cpp](https://github.com/nommiin/ImGui_GM/blob/main/dll/imgui_layout_gm.cpp#L144) | N/A |
| ImGui::GetFrameHeight | ✅ | [imgui_layout_gm.cpp](https://github.com/nommiin/ImGui_GM/blob/main/dll/imgui_layout_gm.cpp#L149) | N/A |
| ImGui::GetFrameHeightWithSpacing | ✅ | [imgui_layout_gm.cpp](https://github.com/nommiin/ImGui_GM/blob/main/dll/imgui_layout_gm.cpp#L154) | N/A |
| ImGui::PushID | ✅ | [imgui_api_gm.cpp](https://github.com/nommiin/ImGui_GM/blob/main/dll/imgui_api_gm.cpp#L143) | N/A |
| ImGui::PushID | ✅ | [imgui_api_gm.cpp](https://github.com/nommiin/ImGui_GM/blob/main/dll/imgui_api_gm.cpp#L143) | N/A |
| ImGui::PushID | ✅ | [imgui_api_gm.cpp](https://github.com/nommiin/ImGui_GM/blob/main/dll/imgui_api_gm.cpp#L143) | N/A |
| ImGui::PushID | ✅ | [imgui_api_gm.cpp](https://github.com/nommiin/ImGui_GM/blob/main/dll/imgui_api_gm.cpp#L143) | N/A |
| ImGui::PopID | ✅ | [imgui_api_gm.cpp](https://github.com/nommiin/ImGui_GM/blob/main/dll/imgui_api_gm.cpp#L155) | N/A |
| ImGui::GetID | ✅ | [imgui_api_gm.cpp](https://github.com/nommiin/ImGui_GM/blob/main/dll/imgui_api_gm.cpp#L173) | N/A |
| ImGui::GetID | ✅ | [imgui_api_gm.cpp](https://github.com/nommiin/ImGui_GM/blob/main/dll/imgui_api_gm.cpp#L173) | N/A |
| ImGui::GetID | ✅ | [imgui_api_gm.cpp](https://github.com/nommiin/ImGui_GM/blob/main/dll/imgui_api_gm.cpp#L173) | N/A |
| ImGui::GetID | ✅ | [imgui_api_gm.cpp](https://github.com/nommiin/ImGui_GM/blob/main/dll/imgui_api_gm.cpp#L173) | N/A |
| ImGui::TextUnformatted | ✅ | [imgui_text_gm.cpp](https://github.com/nommiin/ImGui_GM/blob/main/dll/imgui_text_gm.cpp#L3) | N/A |
| ImGui::Text | ✅ | [imgui_text_gm.cpp](https://github.com/nommiin/ImGui_GM/blob/main/dll/imgui_text_gm.cpp#L10) | N/A |
| ImGui::TextV | ❌ | N/A | Unsupported, use `string` function in GameMaker for string formatting |
| ImGui::TextColored | ✅ | [imgui_text_gm.cpp](https://github.com/nommiin/ImGui_GM/blob/main/dll/imgui_text_gm.cpp#L17) | N/A |
| ImGui::TextColoredV | ❌ | N/A | Unsupported, use `string` function in GameMaker for string formatting |
| ImGui::TextDisabled | ✅ | [imgui_text_gm.cpp](https://github.com/nommiin/ImGui_GM/blob/main/dll/imgui_text_gm.cpp#L27) | N/A |
| ImGui::TextDisabledV | ❌ | N/A | Unsupported, use `string` function in GameMaker for string formatting |
| ImGui::TextWrapped | ✅ | [imgui_text_gm.cpp](https://github.com/nommiin/ImGui_GM/blob/main/dll/imgui_text_gm.cpp#L34) | N/A |
| ImGui::TextWrappedV | ❌ | N/A | Unsupported, use `string` function in GameMaker for string formatting |
| ImGui::LabelText | ✅ | [imgui_text_gm.cpp](https://github.com/nommiin/ImGui_GM/blob/main/dll/imgui_text_gm.cpp#L41) | N/A |
| ImGui::LabelTextV | ❌ | N/A | Unsupported, use `string` function in GameMaker for string formatting |
| ImGui::BulletText | ✅ | [imgui_text_gm.cpp](https://github.com/nommiin/ImGui_GM/blob/main/dll/imgui_text_gm.cpp#L49) | N/A |
| ImGui::BulletTextV | ❌ | N/A | Unsupported, use `string` function in GameMaker for string formatting |
| ImGui::SeparatorText | ❌ | N/A | N/A |
| ImGui::Button | ✅ | [imgui_widgets_gm.cpp](https://github.com/nommiin/ImGui_GM/blob/main/dll/imgui_widgets_gm.cpp#L7) | N/A |
| ImGui::SmallButton | ✅ | [imgui_widgets_gm.cpp](https://github.com/nommiin/ImGui_GM/blob/main/dll/imgui_widgets_gm.cpp#L18) | N/A |
| ImGui::InvisibleButton | ✅ | [imgui_widgets_gm.cpp](https://github.com/nommiin/ImGui_GM/blob/main/dll/imgui_widgets_gm.cpp#L25) | N/A |
| ImGui::ArrowButton | ✅ | [imgui_widgets_gm.cpp](https://github.com/nommiin/ImGui_GM/blob/main/dll/imgui_widgets_gm.cpp#L38) | N/A |
| ImGui::Checkbox | ✅ | [imgui_widgets_gm.cpp](https://github.com/nommiin/ImGui_GM/blob/main/dll/imgui_widgets_gm.cpp#L134) | N/A |
| ImGui::CheckboxFlags | ✅ | [imgui_widgets_gm.cpp](https://github.com/nommiin/ImGui_GM/blob/main/dll/imgui_widgets_gm.cpp#L143) | N/A |
| ImGui::CheckboxFlags | ✅ | [imgui_widgets_gm.cpp](https://github.com/nommiin/ImGui_GM/blob/main/dll/imgui_widgets_gm.cpp#L143) | N/A |
| ImGui::RadioButton | ✅ | [imgui_widgets_gm.cpp](https://github.com/nommiin/ImGui_GM/blob/main/dll/imgui_widgets_gm.cpp#L153) | N/A |
| ImGui::RadioButton | ✅ | [imgui_widgets_gm.cpp](https://github.com/nommiin/ImGui_GM/blob/main/dll/imgui_widgets_gm.cpp#L153) | N/A |
| ImGui::ProgressBar | ✅ | [imgui_widgets_gm.cpp](https://github.com/nommiin/ImGui_GM/blob/main/dll/imgui_widgets_gm.cpp#L161) | N/A |
| ImGui::Bullet | ✅ | [imgui_widgets_gm.cpp](https://github.com/nommiin/ImGui_GM/blob/main/dll/imgui_widgets_gm.cpp#L174) | N/A |
| ImGui::TextLink | ❌ | N/A | N/A |
| ImGui::TextLinkOpenURL | ❌ | N/A | N/A |
| ImGui::Image | ✅ | [imgui_widgets_gm.cpp](https://github.com/nommiin/ImGui_GM/blob/main/dll/imgui_widgets_gm.cpp#L46) | N/A |
| ImGui::ImageWithBg | ✅ | [imgui_widgets_gm.cpp](https://github.com/nommiin/ImGui_GM/blob/main/dll/imgui_widgets_gm.cpp#L67) | N/A |
| ImGui::ImageButton | ✅ | [imgui_widgets_gm.cpp](https://github.com/nommiin/ImGui_GM/blob/main/dll/imgui_widgets_gm.cpp#L92) | N/A |
| ImGui::BeginCombo | ✅ | [imgui_combo_gm.cpp](https://github.com/nommiin/ImGui_GM/blob/main/dll/imgui_combo_gm.cpp#L3) | N/A |
| ImGui::EndCombo | ✅ | [imgui_combo_gm.cpp](https://github.com/nommiin/ImGui_GM/blob/main/dll/imgui_combo_gm.cpp#L12) | N/A |
| ImGui::Combo | ✅ | [imgui_combo_gm.cpp](https://github.com/nommiin/ImGui_GM/blob/main/dll/imgui_combo_gm.cpp#L17) | N/A |
| ImGui::Combo | ✅ | [imgui_combo_gm.cpp](https://github.com/nommiin/ImGui_GM/blob/main/dll/imgui_combo_gm.cpp#L17) | N/A |
| ImGui::Combo | ✅ | [imgui_combo_gm.cpp](https://github.com/nommiin/ImGui_GM/blob/main/dll/imgui_combo_gm.cpp#L17) | N/A |
| ImGui::DragFloat | ✅ | [imgui_drag_gm.cpp](https://github.com/nommiin/ImGui_GM/blob/main/dll/imgui_drag_gm.cpp#L3) | N/A |
| ImGui::DragFloat2 | ✅ | [imgui_drag_gm.cpp](https://github.com/nommiin/ImGui_GM/blob/main/dll/imgui_drag_gm.cpp#L22) | N/A |
| ImGui::DragFloat3 | ✅ | [imgui_drag_gm.cpp](https://github.com/nommiin/ImGui_GM/blob/main/dll/imgui_drag_gm.cpp#L46) | N/A |
| ImGui::DragFloat4 | ✅ | [imgui_drag_gm.cpp](https://github.com/nommiin/ImGui_GM/blob/main/dll/imgui_drag_gm.cpp#L70) | N/A |
| ImGui::DragFloatRange2 | ✅ | [imgui_drag_gm.cpp](https://github.com/nommiin/ImGui_GM/blob/main/dll/imgui_drag_gm.cpp#L121) | N/A |
| ImGui::DragInt | ✅ | [imgui_drag_gm.cpp](https://github.com/nommiin/ImGui_GM/blob/main/dll/imgui_drag_gm.cpp#L146) | N/A |
| ImGui::DragInt2 | ✅ | [imgui_drag_gm.cpp](https://github.com/nommiin/ImGui_GM/blob/main/dll/imgui_drag_gm.cpp#L165) | N/A |
| ImGui::DragInt3 | ✅ | [imgui_drag_gm.cpp](https://github.com/nommiin/ImGui_GM/blob/main/dll/imgui_drag_gm.cpp#L189) | N/A |
| ImGui::DragInt4 | ✅ | [imgui_drag_gm.cpp](https://github.com/nommiin/ImGui_GM/blob/main/dll/imgui_drag_gm.cpp#L213) | N/A |
| ImGui::DragIntRange2 | ✅ | [imgui_drag_gm.cpp](https://github.com/nommiin/ImGui_GM/blob/main/dll/imgui_drag_gm.cpp#L264) | N/A |
| ImGui::DragScalar | ❌ | N/A | N/A |
| ImGui::DragScalarN | ❌ | N/A | N/A |
| ImGui::SliderFloat | ✅ | [imgui_slider_gm.cpp](https://github.com/nommiin/ImGui_GM/blob/main/dll/imgui_slider_gm.cpp#L3) | N/A |
| ImGui::SliderFloat2 | ✅ | [imgui_slider_gm.cpp](https://github.com/nommiin/ImGui_GM/blob/main/dll/imgui_slider_gm.cpp#L20) | N/A |
| ImGui::SliderFloat3 | ✅ | [imgui_slider_gm.cpp](https://github.com/nommiin/ImGui_GM/blob/main/dll/imgui_slider_gm.cpp#L42) | N/A |
| ImGui::SliderFloat4 | ✅ | [imgui_slider_gm.cpp](https://github.com/nommiin/ImGui_GM/blob/main/dll/imgui_slider_gm.cpp#L64) | N/A |
| ImGui::SliderAngle | ✅ | [imgui_slider_gm.cpp](https://github.com/nommiin/ImGui_GM/blob/main/dll/imgui_slider_gm.cpp#L259) | N/A |
| ImGui::SliderInt | ✅ | [imgui_slider_gm.cpp](https://github.com/nommiin/ImGui_GM/blob/main/dll/imgui_slider_gm.cpp#L113) | N/A |
| ImGui::SliderInt2 | ✅ | [imgui_slider_gm.cpp](https://github.com/nommiin/ImGui_GM/blob/main/dll/imgui_slider_gm.cpp#L130) | N/A |
| ImGui::SliderInt3 | ✅ | [imgui_slider_gm.cpp](https://github.com/nommiin/ImGui_GM/blob/main/dll/imgui_slider_gm.cpp#L152) | N/A |
| ImGui::SliderInt4 | ✅ | [imgui_slider_gm.cpp](https://github.com/nommiin/ImGui_GM/blob/main/dll/imgui_slider_gm.cpp#L174) | N/A |
| ImGui::SliderScalar | ❌ | N/A | N/A |
| ImGui::SliderScalarN | ❌ | N/A | N/A |
| ImGui::VSliderFloat | ✅ | [imgui_slider_gm.cpp](https://github.com/nommiin/ImGui_GM/blob/main/dll/imgui_slider_gm.cpp#L221) | N/A |
| ImGui::VSliderInt | ✅ | [imgui_slider_gm.cpp](https://github.com/nommiin/ImGui_GM/blob/main/dll/imgui_slider_gm.cpp#L240) | N/A |
| ImGui::VSliderScalar | ❌ | N/A | N/A |
| ImGui::InputText | ✅ | [imgui_input_gm.cpp](https://github.com/nommiin/ImGui_GM/blob/main/dll/imgui_input_gm.cpp#L4) | N/A |
| ImGui::InputTextMultiline | ✅ | [imgui_input_gm.cpp](https://github.com/nommiin/ImGui_GM/blob/main/dll/imgui_input_gm.cpp#L17) | N/A |
| ImGui::InputTextWithHint | ✅ | [imgui_input_gm.cpp](https://github.com/nommiin/ImGui_GM/blob/main/dll/imgui_input_gm.cpp#L34) | N/A |
| ImGui::InputFloat | ✅ | [imgui_input_gm.cpp](https://github.com/nommiin/ImGui_GM/blob/main/dll/imgui_input_gm.cpp#L48) | N/A |
| ImGui::InputFloat2 | ✅ | [imgui_input_gm.cpp](https://github.com/nommiin/ImGui_GM/blob/main/dll/imgui_input_gm.cpp#L65) | N/A |
| ImGui::InputFloat3 | ✅ | [imgui_input_gm.cpp](https://github.com/nommiin/ImGui_GM/blob/main/dll/imgui_input_gm.cpp#L87) | N/A |
| ImGui::InputFloat4 | ✅ | [imgui_input_gm.cpp](https://github.com/nommiin/ImGui_GM/blob/main/dll/imgui_input_gm.cpp#L109) | N/A |
| ImGui::InputInt | ✅ | [imgui_input_gm.cpp](https://github.com/nommiin/ImGui_GM/blob/main/dll/imgui_input_gm.cpp#L156) | N/A |
| ImGui::InputInt2 | ✅ | [imgui_input_gm.cpp](https://github.com/nommiin/ImGui_GM/blob/main/dll/imgui_input_gm.cpp#L171) | N/A |
| ImGui::InputInt3 | ✅ | [imgui_input_gm.cpp](https://github.com/nommiin/ImGui_GM/blob/main/dll/imgui_input_gm.cpp#L187) | N/A |
| ImGui::InputInt4 | ✅ | [imgui_input_gm.cpp](https://github.com/nommiin/ImGui_GM/blob/main/dll/imgui_input_gm.cpp#L203) | N/A |
| ImGui::InputDouble | ✅ | [imgui_input_gm.cpp](https://github.com/nommiin/ImGui_GM/blob/main/dll/imgui_input_gm.cpp#L238) | N/A |
| ImGui::InputScalar | ❌ | N/A | N/A |
| ImGui::InputScalarN | ❌ | N/A | N/A |
| ImGui::ColorEdit3 | ✅ | [imgui_color_gm.cpp](https://github.com/nommiin/ImGui_GM/blob/main/dll/imgui_color_gm.cpp#L6) | N/A |
| ImGui::ColorEdit4 | ✅ | [imgui_color_gm.cpp](https://github.com/nommiin/ImGui_GM/blob/main/dll/imgui_color_gm.cpp#L30) | N/A |
| ImGui::ColorPicker3 | ✅ | [imgui_color_gm.cpp](https://github.com/nommiin/ImGui_GM/blob/main/dll/imgui_color_gm.cpp#L18) | N/A |
| ImGui::ColorPicker4 | ✅ | [imgui_color_gm.cpp](https://github.com/nommiin/ImGui_GM/blob/main/dll/imgui_color_gm.cpp#L60) | N/A |
| ImGui::ColorButton | ✅ | [imgui_color_gm.cpp](https://github.com/nommiin/ImGui_GM/blob/main/dll/imgui_color_gm.cpp#L90) | N/A |
| ImGui::SetColorEditOptions | ✅ | [imgui_color_gm.cpp](https://github.com/nommiin/ImGui_GM/blob/main/dll/imgui_color_gm.cpp#L106) | N/A |
| ImGui::TreeNode | ✅ | [imgui_tree_gm.cpp](https://github.com/nommiin/ImGui_GM/blob/main/dll/imgui_tree_gm.cpp#L3) | N/A |
| ImGui::TreeNode | ✅ | [imgui_tree_gm.cpp](https://github.com/nommiin/ImGui_GM/blob/main/dll/imgui_tree_gm.cpp#L3) | N/A |
| ImGui::TreeNode | ✅ | [imgui_tree_gm.cpp](https://github.com/nommiin/ImGui_GM/blob/main/dll/imgui_tree_gm.cpp#L3) | N/A |
| ImGui::TreeNodeV | ❌ | N/A | Unsupported, use `string` function in GameMaker for string formatting |
| ImGui::TreeNodeV | ❌ | N/A | Unsupported, use `string` function in GameMaker for string formatting |
| ImGui::TreeNodeEx | ✅ | [imgui_tree_gm.cpp](https://github.com/nommiin/ImGui_GM/blob/main/dll/imgui_tree_gm.cpp#L10) | N/A |
| ImGui::TreeNodeEx | ✅ | [imgui_tree_gm.cpp](https://github.com/nommiin/ImGui_GM/blob/main/dll/imgui_tree_gm.cpp#L10) | N/A |
| ImGui::TreeNodeEx | ✅ | [imgui_tree_gm.cpp](https://github.com/nommiin/ImGui_GM/blob/main/dll/imgui_tree_gm.cpp#L10) | N/A |
| ImGui::TreeNodeExV | ❌ | N/A | Unsupported, use `string` function in GameMaker for string formatting |
| ImGui::TreeNodeExV | ❌ | N/A | Unsupported, use `string` function in GameMaker for string formatting |
| ImGui::TreePush | ✅ | [imgui_tree_gm.cpp](https://github.com/nommiin/ImGui_GM/blob/main/dll/imgui_tree_gm.cpp#L19) | N/A |
| ImGui::TreePush | ✅ | [imgui_tree_gm.cpp](https://github.com/nommiin/ImGui_GM/blob/main/dll/imgui_tree_gm.cpp#L19) | N/A |
| ImGui::TreePop | ✅ | [imgui_tree_gm.cpp](https://github.com/nommiin/ImGui_GM/blob/main/dll/imgui_tree_gm.cpp#L26) | N/A |
| ImGui::GetTreeNodeToLabelSpacing | ✅ | [imgui_tree_gm.cpp](https://github.com/nommiin/ImGui_GM/blob/main/dll/imgui_tree_gm.cpp#L31) | N/A |
| ImGui::CollapsingHeader | ✅ | [imgui_tree_gm.cpp](https://github.com/nommiin/ImGui_GM/blob/main/dll/imgui_tree_gm.cpp#L45) | See [ImGuiReturnMask Usage](https://github.com/nommiin/ImGui_GM/wiki/ImGuiReturnMask-Usage) for more info the `mask` argument |
| ImGui::CollapsingHeader | ✅ | [imgui_tree_gm.cpp](https://github.com/nommiin/ImGui_GM/blob/main/dll/imgui_tree_gm.cpp#L45) | See [ImGuiReturnMask Usage](https://github.com/nommiin/ImGui_GM/wiki/ImGuiReturnMask-Usage) for more info the `mask` argument |
| ImGui::SetNextItemOpen | ✅ | [imgui_tree_gm.cpp](https://github.com/nommiin/ImGui_GM/blob/main/dll/imgui_tree_gm.cpp#L36) | N/A |
| ImGui::SetNextItemStorageID | ❌ | N/A | N/A |
| ImGui::TreeNodeGetOpen | ❌ | N/A | N/A |
| ImGui::Selectable | ✅ | [imgui_selectable_gm.cpp](https://github.com/nommiin/ImGui_GM/blob/main/dll/imgui_selectable_gm.cpp#L3) | N/A |
| ImGui::Selectable | ✅ | [imgui_selectable_gm.cpp](https://github.com/nommiin/ImGui_GM/blob/main/dll/imgui_selectable_gm.cpp#L3) | N/A |
| ImGui::BeginMultiSelect | ❌ | N/A | N/A |
| ImGui::EndMultiSelect | ❌ | N/A | N/A |
| ImGui::SetNextItemSelectionUserData | ❌ | N/A | N/A |
| ImGui::IsItemToggledSelection | ❌ | N/A | N/A |
| ImGui::BeginListBox | ✅ | [imgui_listbox_gm.cpp](https://github.com/nommiin/ImGui_GM/blob/main/dll/imgui_listbox_gm.cpp#L3) | N/A |
| ImGui::EndListBox | ✅ | [imgui_listbox_gm.cpp](https://github.com/nommiin/ImGui_GM/blob/main/dll/imgui_listbox_gm.cpp#L14) | N/A |
| ImGui::ListBox | ✅ | [imgui_listbox_gm.cpp](https://github.com/nommiin/ImGui_GM/blob/main/dll/imgui_listbox_gm.cpp#L19) | N/A |
| ImGui::ListBox | ✅ | [imgui_listbox_gm.cpp](https://github.com/nommiin/ImGui_GM/blob/main/dll/imgui_listbox_gm.cpp#L19) | N/A |
| ImGui::PlotLines | ✅ | [imgui_plots_gm.cpp](https://github.com/nommiin/ImGui_GM/blob/main/dll/imgui_plots_gm.cpp#L3) | N/A |
| ImGui::PlotLines | ✅ | [imgui_plots_gm.cpp](https://github.com/nommiin/ImGui_GM/blob/main/dll/imgui_plots_gm.cpp#L3) | N/A |
| ImGui::PlotHistogram | ✅ | [imgui_plots_gm.cpp](https://github.com/nommiin/ImGui_GM/blob/main/dll/imgui_plots_gm.cpp#L27) | N/A |
| ImGui::PlotHistogram | ✅ | [imgui_plots_gm.cpp](https://github.com/nommiin/ImGui_GM/blob/main/dll/imgui_plots_gm.cpp#L27) | N/A |
| ImGui::Value | ✅ | [imgui_text_gm.cpp](https://github.com/nommiin/ImGui_GM/blob/main/dll/imgui_text_gm.cpp#L56) | N/A |
| ImGui::Value | ✅ | [imgui_text_gm.cpp](https://github.com/nommiin/ImGui_GM/blob/main/dll/imgui_text_gm.cpp#L56) | N/A |
| ImGui::Value | ✅ | [imgui_text_gm.cpp](https://github.com/nommiin/ImGui_GM/blob/main/dll/imgui_text_gm.cpp#L56) | N/A |
| ImGui::Value | ✅ | [imgui_text_gm.cpp](https://github.com/nommiin/ImGui_GM/blob/main/dll/imgui_text_gm.cpp#L56) | N/A |
| ImGui::BeginMenuBar | ✅ | [imgui_menu_gm.cpp](https://github.com/nommiin/ImGui_GM/blob/main/dll/imgui_menu_gm.cpp#L3) | N/A |
| ImGui::EndMenuBar | ✅ | [imgui_menu_gm.cpp](https://github.com/nommiin/ImGui_GM/blob/main/dll/imgui_menu_gm.cpp#L8) | N/A |
| ImGui::BeginMainMenuBar | ✅ | [imgui_menu_gm.cpp](https://github.com/nommiin/ImGui_GM/blob/main/dll/imgui_menu_gm.cpp#L13) | N/A |
| ImGui::EndMainMenuBar | ✅ | [imgui_menu_gm.cpp](https://github.com/nommiin/ImGui_GM/blob/main/dll/imgui_menu_gm.cpp#L18) | N/A |
| ImGui::BeginMenu | ✅ | [imgui_menu_gm.cpp](https://github.com/nommiin/ImGui_GM/blob/main/dll/imgui_menu_gm.cpp#L23) | N/A |
| ImGui::EndMenu | ✅ | [imgui_menu_gm.cpp](https://github.com/nommiin/ImGui_GM/blob/main/dll/imgui_menu_gm.cpp#L32) | N/A |
| ImGui::MenuItem | ✅ | [imgui_menu_gm.cpp](https://github.com/nommiin/ImGui_GM/blob/main/dll/imgui_menu_gm.cpp#L37) | See [ImGuiReturnMask Usage](https://github.com/nommiin/ImGui_GM/wiki/ImGuiReturnMask-Usage) for more info the `mask` argument |
| ImGui::MenuItem | ✅ | [imgui_menu_gm.cpp](https://github.com/nommiin/ImGui_GM/blob/main/dll/imgui_menu_gm.cpp#L37) | See [ImGuiReturnMask Usage](https://github.com/nommiin/ImGui_GM/wiki/ImGuiReturnMask-Usage) for more info the `mask` argument |
| ImGui::BeginTooltip | ✅ | [imgui_tooltips_gm.cpp](https://github.com/nommiin/ImGui_GM/blob/main/dll/imgui_tooltips_gm.cpp#L3) | N/A |
| ImGui::EndTooltip | ✅ | [imgui_tooltips_gm.cpp](https://github.com/nommiin/ImGui_GM/blob/main/dll/imgui_tooltips_gm.cpp#L8) | N/A |
| ImGui::SetTooltip | ✅ | [imgui_tooltips_gm.cpp](https://github.com/nommiin/ImGui_GM/blob/main/dll/imgui_tooltips_gm.cpp#L13) | N/A |
| ImGui::SetTooltipV | ❌ | N/A | Unsupported, use `string` function in GameMaker for string formatting |
| ImGui::BeginItemTooltip | ❌ | N/A | N/A |
| ImGui::SetItemTooltip | ❌ | N/A | N/A |
| ImGui::SetItemTooltipV | ❌ | N/A | Unsupported, use `string` function in GameMaker for string formatting |
| ImGui::BeginPopup | ✅ | [imgui_popup_gm.cpp](https://github.com/nommiin/ImGui_GM/blob/main/dll/imgui_popup_gm.cpp#L3) | N/A |
| ImGui::BeginPopupModal | ✅ | [imgui_popup_gm.cpp](https://github.com/nommiin/ImGui_GM/blob/main/dll/imgui_popup_gm.cpp#L12) | See [ImGuiReturnMask Usage](https://github.com/nommiin/ImGui_GM/wiki/ImGuiReturnMask-Usage) for more info the `mask` argument |
| ImGui::EndPopup | ✅ | [imgui_popup_gm.cpp](https://github.com/nommiin/ImGui_GM/blob/main/dll/imgui_popup_gm.cpp#L33) | N/A |
| ImGui::OpenPopup | ✅ | [imgui_popup_gm.cpp](https://github.com/nommiin/ImGui_GM/blob/main/dll/imgui_popup_gm.cpp#L38) | N/A |
| ImGui::OpenPopup | ✅ | [imgui_popup_gm.cpp](https://github.com/nommiin/ImGui_GM/blob/main/dll/imgui_popup_gm.cpp#L38) | N/A |
| ImGui::OpenPopupOnItemClick | ✅ | [imgui_popup_gm.cpp](https://github.com/nommiin/ImGui_GM/blob/main/dll/imgui_popup_gm.cpp#L47) | N/A |
| ImGui::CloseCurrentPopup | ✅ | [imgui_popup_gm.cpp](https://github.com/nommiin/ImGui_GM/blob/main/dll/imgui_popup_gm.cpp#L61) | N/A |
| ImGui::BeginPopupContextItem | ✅ | [imgui_popup_gm.cpp](https://github.com/nommiin/ImGui_GM/blob/main/dll/imgui_popup_gm.cpp#L66) | N/A |
| ImGui::BeginPopupContextWindow | ✅ | [imgui_popup_gm.cpp](https://github.com/nommiin/ImGui_GM/blob/main/dll/imgui_popup_gm.cpp#L80) | N/A |
| ImGui::BeginPopupContextVoid | ✅ | [imgui_popup_gm.cpp](https://github.com/nommiin/ImGui_GM/blob/main/dll/imgui_popup_gm.cpp#L94) | N/A |
| ImGui::IsPopupOpen | ✅ | [imgui_popup_gm.cpp](https://github.com/nommiin/ImGui_GM/blob/main/dll/imgui_popup_gm.cpp#L108) | N/A |
| ImGui::BeginTable | ✅ | [imgui_table_gm.cpp](https://github.com/nommiin/ImGui_GM/blob/main/dll/imgui_table_gm.cpp#L3) | N/A |
| ImGui::EndTable | ✅ | [imgui_table_gm.cpp](https://github.com/nommiin/ImGui_GM/blob/main/dll/imgui_table_gm.cpp#L19) | N/A |
| ImGui::TableNextRow | ✅ | [imgui_table_gm.cpp](https://github.com/nommiin/ImGui_GM/blob/main/dll/imgui_table_gm.cpp#L24) | N/A |
| ImGui::TableNextColumn | ✅ | [imgui_table_gm.cpp](https://github.com/nommiin/ImGui_GM/blob/main/dll/imgui_table_gm.cpp#L34) | N/A |
| ImGui::TableSetColumnIndex | ✅ | [imgui_table_gm.cpp](https://github.com/nommiin/ImGui_GM/blob/main/dll/imgui_table_gm.cpp#L39) | N/A |
| ImGui::TableSetupColumn | ✅ | [imgui_table_gm.cpp](https://github.com/nommiin/ImGui_GM/blob/main/dll/imgui_table_gm.cpp#L46) | N/A |
| ImGui::TableSetupScrollFreeze | ✅ | [imgui_table_gm.cpp](https://github.com/nommiin/ImGui_GM/blob/main/dll/imgui_table_gm.cpp#L59) | N/A |
| ImGui::TableHeader | ✅ | [imgui_table_gm.cpp](https://github.com/nommiin/ImGui_GM/blob/main/dll/imgui_table_gm.cpp#L72) | N/A |
| ImGui::TableHeadersRow | ✅ | [imgui_table_gm.cpp](https://github.com/nommiin/ImGui_GM/blob/main/dll/imgui_table_gm.cpp#L67) | N/A |
| ImGui::TableAngledHeadersRow | ❌ | N/A | N/A |
| ImGui::TableGetSortSpecs | ❌ | N/A | N/A |
| ImGui::TableGetColumnCount | ✅ | [imgui_table_gm.cpp](https://github.com/nommiin/ImGui_GM/blob/main/dll/imgui_table_gm.cpp#L79) | N/A |
| ImGui::TableGetColumnIndex | ✅ | [imgui_table_gm.cpp](https://github.com/nommiin/ImGui_GM/blob/main/dll/imgui_table_gm.cpp#L84) | N/A |
| ImGui::TableGetRowIndex | ✅ | [imgui_table_gm.cpp](https://github.com/nommiin/ImGui_GM/blob/main/dll/imgui_table_gm.cpp#L106) | N/A |
| ImGui::TableGetColumnName | ✅ | [imgui_table_gm.cpp](https://github.com/nommiin/ImGui_GM/blob/main/dll/imgui_table_gm.cpp#L89) | N/A |
| ImGui::TableGetColumnFlags | ✅ | [imgui_table_gm.cpp](https://github.com/nommiin/ImGui_GM/blob/main/dll/imgui_table_gm.cpp#L98) | N/A |
| ImGui::TableSetColumnEnabled | ✅ | [imgui_table_gm.cpp](https://github.com/nommiin/ImGui_GM/blob/main/dll/imgui_table_gm.cpp#L111) | N/A |
| ImGui::TableGetHoveredColumn | ❌ | N/A | N/A |
| ImGui::TableSetBgColor | ✅ | [imgui_table_gm.cpp](https://github.com/nommiin/ImGui_GM/blob/main/dll/imgui_table_gm.cpp#L120) | N/A |
| ImGui::Columns | ✅ | [imgui_table_gm.cpp](https://github.com/nommiin/ImGui_GM/blob/main/dll/imgui_table_gm.cpp#L133) | N/A |
| ImGui::NextColumn | ✅ | [imgui_table_gm.cpp](https://github.com/nommiin/ImGui_GM/blob/main/dll/imgui_table_gm.cpp#L145) | N/A |
| ImGui::GetColumnIndex | ✅ | [imgui_table_gm.cpp](https://github.com/nommiin/ImGui_GM/blob/main/dll/imgui_table_gm.cpp#L150) | N/A |
| ImGui::GetColumnWidth | ✅ | [imgui_table_gm.cpp](https://github.com/nommiin/ImGui_GM/blob/main/dll/imgui_table_gm.cpp#L155) | N/A |
| ImGui::SetColumnWidth | ✅ | [imgui_table_gm.cpp](https://github.com/nommiin/ImGui_GM/blob/main/dll/imgui_table_gm.cpp#L163) | N/A |
| ImGui::GetColumnOffset | ✅ | [imgui_table_gm.cpp](https://github.com/nommiin/ImGui_GM/blob/main/dll/imgui_table_gm.cpp#L171) | N/A |
| ImGui::SetColumnOffset | ✅ | [imgui_table_gm.cpp](https://github.com/nommiin/ImGui_GM/blob/main/dll/imgui_table_gm.cpp#L180) | N/A |
| ImGui::GetColumnsCount | ✅ | [imgui_table_gm.cpp](https://github.com/nommiin/ImGui_GM/blob/main/dll/imgui_table_gm.cpp#L188) | N/A |
| ImGui::BeginTabBar | ✅ | [imgui_tabs_gm.cpp](https://github.com/nommiin/ImGui_GM/blob/main/dll/imgui_tabs_gm.cpp#L3) | N/A |
| ImGui::EndTabBar | ✅ | [imgui_tabs_gm.cpp](https://github.com/nommiin/ImGui_GM/blob/main/dll/imgui_tabs_gm.cpp#L12) | N/A |
| ImGui::BeginTabItem | ✅ | [imgui_tabs_gm.cpp](https://github.com/nommiin/ImGui_GM/blob/main/dll/imgui_tabs_gm.cpp#L17) | See [ImGuiReturnMask Usage](https://github.com/nommiin/ImGui_GM/wiki/ImGuiReturnMask-Usage) for more info the `mask` argument |
| ImGui::EndTabItem | ✅ | [imgui_tabs_gm.cpp](https://github.com/nommiin/ImGui_GM/blob/main/dll/imgui_tabs_gm.cpp#L38) | N/A |
| ImGui::TabItemButton | ✅ | [imgui_tabs_gm.cpp](https://github.com/nommiin/ImGui_GM/blob/main/dll/imgui_tabs_gm.cpp#L43) | N/A |
| ImGui::SetTabItemClosed | ✅ | [imgui_tabs_gm.cpp](https://github.com/nommiin/ImGui_GM/blob/main/dll/imgui_tabs_gm.cpp#L52) | N/A |
| ImGui::DockSpace | ✅ | [imgui_docking_gm.cpp](https://github.com/nommiin/ImGui_GM/blob/main/dll/imgui_docking_gm.cpp#L8) | N/A |
| ImGui::DockSpaceOverViewport | ✅ | [imgui_docking_gm.cpp](https://github.com/nommiin/ImGui_GM/blob/main/dll/imgui_docking_gm.cpp#L22) | N/A |
| ImGui::SetNextWindowDockID | ✅ | [imgui_docking_gm.cpp](https://github.com/nommiin/ImGui_GM/blob/main/dll/imgui_docking_gm.cpp#L34) | N/A |
| ImGui::SetNextWindowClass | ✅ | [imgui_docking_gm.cpp](https://github.com/nommiin/ImGui_GM/blob/main/dll/imgui_docking_gm.cpp#L44) | N/A |
| ImGui::GetWindowDockID | ✅ | [imgui_docking_gm.cpp](https://github.com/nommiin/ImGui_GM/blob/main/dll/imgui_docking_gm.cpp#L49) | N/A |
| ImGui::IsWindowDocked | ✅ | [imgui_docking_gm.cpp](https://github.com/nommiin/ImGui_GM/blob/main/dll/imgui_docking_gm.cpp#L54) | N/A |
| ImGui::LogToTTY | ❌ | N/A | N/A |
| ImGui::LogToFile | ❌ | N/A | N/A |
| ImGui::LogToClipboard | ❌ | N/A | N/A |
| ImGui::LogFinish | ❌ | N/A | N/A |
| ImGui::LogButtons | ❌ | N/A | N/A |
| ImGui::LogText | ✅ | [imgui_api_gm.cpp](https://github.com/nommiin/ImGui_GM/blob/main/dll/imgui_api_gm.cpp#L434) | N/A |
| ImGui::LogTextV | ❌ | N/A | Unsupported, use `string` function in GameMaker for string formatting |
| ImGui::BeginDragDropSource | ✅ | [imgui_payload_gm.cpp](https://github.com/nommiin/ImGui_GM/blob/main/dll/imgui_payload_gm.cpp#L3) | N/A |
| ImGui::SetDragDropPayload | ✅ | [imgui_payload_gm.cpp](https://github.com/nommiin/ImGui_GM/blob/main/dll/imgui_payload_gm.cpp#L26) | See [Drag and Drop Payloads](https://github.com/nommiin/ImGui_GM/wiki/Drag-and-Drop-Payloads) for more info on handling payloads |
| ImGui::EndDragDropSource | ✅ | [imgui_payload_gm.cpp](https://github.com/nommiin/ImGui_GM/blob/main/dll/imgui_payload_gm.cpp#L11) | N/A |
| ImGui::BeginDragDropTarget | ✅ | [imgui_payload_gm.cpp](https://github.com/nommiin/ImGui_GM/blob/main/dll/imgui_payload_gm.cpp#L16) | N/A |
| ImGui::AcceptDragDropPayload | ✅ | [imgui_payload_gm.cpp](https://github.com/nommiin/ImGui_GM/blob/main/dll/imgui_payload_gm.cpp#L59) | N/A |
| ImGui::EndDragDropTarget | ✅ | [imgui_payload_gm.cpp](https://github.com/nommiin/ImGui_GM/blob/main/dll/imgui_payload_gm.cpp#L21) | N/A |
| ImGui::GetDragDropPayload | ✅ | [imgui_payload_gm.cpp](https://github.com/nommiin/ImGui_GM/blob/main/dll/imgui_payload_gm.cpp#L73) | N/A |
| ImGui::BeginDisabled | ✅ | [imgui_api_gm.cpp](https://github.com/nommiin/ImGui_GM/blob/main/dll/imgui_api_gm.cpp#L180) | N/A |
| ImGui::EndDisabled | ✅ | [imgui_api_gm.cpp](https://github.com/nommiin/ImGui_GM/blob/main/dll/imgui_api_gm.cpp#L188) | N/A |
| ImGui::PushClipRect | ✅ | [imgui_layout_gm.cpp](https://github.com/nommiin/ImGui_GM/blob/main/dll/imgui_layout_gm.cpp#L252) | N/A |
| ImGui::PopClipRect | ✅ | [imgui_layout_gm.cpp](https://github.com/nommiin/ImGui_GM/blob/main/dll/imgui_layout_gm.cpp#L263) | N/A |
| ImGui::SetItemDefaultFocus | ✅ | [imgui_api_gm.cpp](https://github.com/nommiin/ImGui_GM/blob/main/dll/imgui_api_gm.cpp#L403) | N/A |
| ImGui::SetKeyboardFocusHere | ✅ | [imgui_api_gm.cpp](https://github.com/nommiin/ImGui_GM/blob/main/dll/imgui_api_gm.cpp#L381) | N/A |
| ImGui::SetNavCursorVisible | ❌ | N/A | N/A |
| ImGui::SetNextItemAllowOverlap | ✅ | [imgui_api_gm.cpp](https://github.com/nommiin/ImGui_GM/blob/main/dll/imgui_api_gm.cpp#L311) | N/A |
| ImGui::IsItemHovered | ✅ | [imgui_api_gm.cpp](https://github.com/nommiin/ImGui_GM/blob/main/dll/imgui_api_gm.cpp#L193) | N/A |
| ImGui::IsItemActive | ✅ | [imgui_api_gm.cpp](https://github.com/nommiin/ImGui_GM/blob/main/dll/imgui_api_gm.cpp#L201) | N/A |
| ImGui::IsItemFocused | ✅ | [imgui_api_gm.cpp](https://github.com/nommiin/ImGui_GM/blob/main/dll/imgui_api_gm.cpp#L206) | N/A |
| ImGui::IsItemClicked | ✅ | [imgui_api_gm.cpp](https://github.com/nommiin/ImGui_GM/blob/main/dll/imgui_api_gm.cpp#L211) | N/A |
| ImGui::IsItemVisible | ✅ | [imgui_api_gm.cpp](https://github.com/nommiin/ImGui_GM/blob/main/dll/imgui_api_gm.cpp#L219) | N/A |
| ImGui::IsItemEdited | ✅ | [imgui_api_gm.cpp](https://github.com/nommiin/ImGui_GM/blob/main/dll/imgui_api_gm.cpp#L224) | N/A |
| ImGui::IsItemActivated | ✅ | [imgui_api_gm.cpp](https://github.com/nommiin/ImGui_GM/blob/main/dll/imgui_api_gm.cpp#L229) | N/A |
| ImGui::IsItemDeactivated | ✅ | [imgui_api_gm.cpp](https://github.com/nommiin/ImGui_GM/blob/main/dll/imgui_api_gm.cpp#L234) | N/A |
| ImGui::IsItemDeactivatedAfterEdit | ✅ | [imgui_api_gm.cpp](https://github.com/nommiin/ImGui_GM/blob/main/dll/imgui_api_gm.cpp#L239) | N/A |
| ImGui::IsItemToggledOpen | ✅ | [imgui_api_gm.cpp](https://github.com/nommiin/ImGui_GM/blob/main/dll/imgui_api_gm.cpp#L244) | N/A |
| ImGui::IsAnyItemHovered | ✅ | [imgui_api_gm.cpp](https://github.com/nommiin/ImGui_GM/blob/main/dll/imgui_api_gm.cpp#L249) | N/A |
| ImGui::IsAnyItemActive | ✅ | [imgui_api_gm.cpp](https://github.com/nommiin/ImGui_GM/blob/main/dll/imgui_api_gm.cpp#L254) | N/A |
| ImGui::IsAnyItemFocused | ✅ | [imgui_api_gm.cpp](https://github.com/nommiin/ImGui_GM/blob/main/dll/imgui_api_gm.cpp#L259) | N/A |
| ImGui::GetItemID | ✅ | [imgui_api_gm.cpp](https://github.com/nommiin/ImGui_GM/blob/main/dll/imgui_api_gm.cpp#L264) | N/A |
| ImGui::GetItemRectMin | ❌ | N/A | N/A |
| ImGui::GetItemRectMax | ❌ | N/A | N/A |
| ImGui::GetItemRectSize | ❌ | N/A | N/A |
| ImGui::GetItemFlags | ❌ | N/A | N/A |
| ImGui::GetMainViewport | ✅ | [imgui_docking_gm.cpp](https://github.com/nommiin/ImGui_GM/blob/main/dll/imgui_docking_gm.cpp#L3) | N/A |
| ImGui::GetBackgroundDrawList | ✅ | [imgui_drawlist_gm.cpp](https://github.com/nommiin/ImGui_GM/blob/main/dll/imgui_drawlist_gm.cpp#L4) | N/A |
| ImGui::GetForegroundDrawList | ✅ | [imgui_drawlist_gm.cpp](https://github.com/nommiin/ImGui_GM/blob/main/dll/imgui_drawlist_gm.cpp#L18) | N/A |
| ImGui::IsRectVisible | ✅ | [imgui_api_gm.cpp](https://github.com/nommiin/ImGui_GM/blob/main/dll/imgui_api_gm.cpp#L322) | N/A |
| ImGui::IsRectVisible | ✅ | [imgui_api_gm.cpp](https://github.com/nommiin/ImGui_GM/blob/main/dll/imgui_api_gm.cpp#L322) | N/A |
| ImGui::GetTime | ✅ | [imgui_api_gm.cpp](https://github.com/nommiin/ImGui_GM/blob/main/dll/imgui_api_gm.cpp#L332) | N/A |
| ImGui::GetFrameCount | ✅ | [imgui_api_gm.cpp](https://github.com/nommiin/ImGui_GM/blob/main/dll/imgui_api_gm.cpp#L337) | N/A |
| ImGui::GetDrawListSharedData | ❌ | N/A | N/A |
| ImGui::GetStyleColorName | ✅ | [imgui_style_gm.cpp](https://github.com/nommiin/ImGui_GM/blob/main/dll/imgui_style_gm.cpp#L64) | N/A |
| ImGui::SetStateStorage | ❌ | N/A | N/A |
| ImGui::GetStateStorage | ❌ | N/A | N/A |
| ImGui::CalcTextSize | ❌ | N/A | ImVec2 returns are unsupported, use Width/Height wrappers |
| ImGui::ColorConvertU32ToFloat4 | ❌ | N/A | N/A |
| ImGui::ColorConvertFloat4ToU32 | ❌ | N/A | N/A |
| ImGui::ColorConvertRGBtoHSV | ❌ | N/A | N/A |
| ImGui::ColorConvertHSVtoRGB | ❌ | N/A | N/A |
| ImGui::IsKeyDown | ❌ | N/A | N/A |
| ImGui::IsKeyPressed | ❌ | N/A | N/A |
| ImGui::IsKeyReleased | ❌ | N/A | N/A |
| ImGui::IsKeyChordPressed | ❌ | N/A | N/A |
| ImGui::GetKeyPressedAmount | ❌ | N/A | N/A |
| ImGui::GetKeyName | ❌ | N/A | N/A |
| ImGui::SetNextFrameWantCaptureKeyboard | ❌ | N/A | N/A |
| ImGui::Shortcut | ❌ | N/A | N/A |
| ImGui::SetNextItemShortcut | ❌ | N/A | N/A |
| ImGui::SetItemKeyOwner | ❌ | N/A | N/A |
| ImGui::IsMouseDown | ❌ | N/A | N/A |
| ImGui::IsMouseClicked | ❌ | N/A | N/A |
| ImGui::IsMouseReleased | ❌ | N/A | N/A |
| ImGui::IsMouseDoubleClicked | ❌ | N/A | N/A |
| ImGui::IsMouseReleasedWithDelay | ❌ | N/A | N/A |
| ImGui::GetMouseClickedCount | ❌ | N/A | N/A |
| ImGui::IsMouseHoveringRect | ❌ | N/A | N/A |
| ImGui::IsMousePosValid | ❌ | N/A | N/A |
| ImGui::IsAnyMouseDown | ❌ | N/A | N/A |
| ImGui::GetMousePos | ❌ | N/A | N/A |
| ImGui::GetMousePosOnOpeningCurrentPopup | ❌ | N/A | N/A |
| ImGui::IsMouseDragging | ❌ | N/A | N/A |
| ImGui::GetMouseDragDelta | ❌ | N/A | N/A |
| ImGui::ResetMouseDragDelta | ❌ | N/A | N/A |
| ImGui::GetMouseCursor | ❌ | N/A | N/A |
| ImGui::SetMouseCursor | ❌ | N/A | N/A |
| ImGui::SetNextFrameWantCaptureMouse | ❌ | N/A | N/A |
| ImGui::GetClipboardText | ❌ | N/A | N/A |
| ImGui::SetClipboardText | ❌ | N/A | N/A |
| ImGui::LoadIniSettingsFromDisk | ❌ | N/A | N/A |
| ImGui::LoadIniSettingsFromMemory | ❌ | N/A | N/A |
| ImGui::SaveIniSettingsToDisk | ❌ | N/A | N/A |
| ImGui::SaveIniSettingsToMemory | ❌ | N/A | N/A |
| ImGui::DebugTextEncoding | ❌ | N/A | N/A |
| ImGui::DebugFlashStyleColor | ❌ | N/A | N/A |
| ImGui::DebugStartItemPicker | ❌ | N/A | N/A |
| ImGui::DebugCheckVersionAndDataLayout | ❌ | N/A | N/A |
| ImGui::DebugLog | ❌ | N/A | N/A |
| ImGui::DebugLogV | ❌ | N/A | Unsupported, use `string` function in GameMaker for string formatting |
| ImGui::SetAllocatorFunctions | ❌ | N/A | N/A |
| ImGui::GetAllocatorFunctions | ❌ | N/A | N/A |
| ImGui::MemAlloc | ❌ | N/A | N/A |
| ImGui::MemFree | ❌ | N/A | N/A |
| ImGui::UpdatePlatformWindows | ❌ | N/A | N/A |
| ImGui::RenderPlatformWindowsDefault | ❌ | N/A | N/A |
| ImGui::DestroyPlatformWindows | ❌ | N/A | N/A |
| ImGui::FindViewportByID | ❌ | N/A | N/A |
| ImGui::FindViewportByPlatformHandle | ❌ | N/A | N/A |

# Non-Standard
Below is a table of non-standard functions made specifically for ImGui_GM

| Function | Link |
| -------- | ---- |
| ImGui.GetItemRectMinX() | [imgui_api_gm.cpp](https://github.com/nommiin/ImGui_GM/blob/main/dll/imgui_api_gm.cpp#L269) |
| ImGui.GetItemRectMinY() | [imgui_api_gm.cpp](https://github.com/nommiin/ImGui_GM/blob/main/dll/imgui_api_gm.cpp#L276) |
| ImGui.GetItemRectMaxX() | [imgui_api_gm.cpp](https://github.com/nommiin/ImGui_GM/blob/main/dll/imgui_api_gm.cpp#L283) |
| ImGui.GetItemRectMaxY() | [imgui_api_gm.cpp](https://github.com/nommiin/ImGui_GM/blob/main/dll/imgui_api_gm.cpp#L290) |
| ImGui.GetItemRectSizeX() | [imgui_api_gm.cpp](https://github.com/nommiin/ImGui_GM/blob/main/dll/imgui_api_gm.cpp#L297) |
| ImGui.GetItemRectSizeY() | [imgui_api_gm.cpp](https://github.com/nommiin/ImGui_GM/blob/main/dll/imgui_api_gm.cpp#L304) |
| ImGui.SetItemAllowOverlap() | [imgui_api_gm.cpp](https://github.com/nommiin/ImGui_GM/blob/main/dll/imgui_api_gm.cpp#L316) |
| ImGui.CalcTextWidth(text, hide_text_after_double_hash, wrap_width) | [imgui_api_gm.cpp](https://github.com/nommiin/ImGui_GM/blob/main/dll/imgui_api_gm.cpp#L342) |
| ImGui.CalcTextHeight(text, hide_text_after_double_hash, wrap_width) | [imgui_api_gm.cpp](https://github.com/nommiin/ImGui_GM/blob/main/dll/imgui_api_gm.cpp#L354) |
| ImGui.PushAllowKeyboardFocus() | [imgui_api_gm.cpp](https://github.com/nommiin/ImGui_GM/blob/main/dll/imgui_api_gm.cpp#L366) |
| ImGui.PopAllowKeyboardFocus() | [imgui_api_gm.cpp](https://github.com/nommiin/ImGui_GM/blob/main/dll/imgui_api_gm.cpp#L374) |
| ImGui.PushButtonRepeat() | [imgui_api_gm.cpp](https://github.com/nommiin/ImGui_GM/blob/main/dll/imgui_api_gm.cpp#L389) |
| ImGui.PopButtonRepeat() | [imgui_api_gm.cpp](https://github.com/nommiin/ImGui_GM/blob/main/dll/imgui_api_gm.cpp#L397) |
| ImGui.ConfigFlagsGet() | [imgui_api_gm.cpp](https://github.com/nommiin/ImGui_GM/blob/main/dll/imgui_api_gm.cpp#L408) |
| ImGui.ConfigFlagsSet(flags) | [imgui_api_gm.cpp](https://github.com/nommiin/ImGui_GM/blob/main/dll/imgui_api_gm.cpp#L416) |
| ImGui.ConfigFlagToggle(flag) | [imgui_api_gm.cpp](https://github.com/nommiin/ImGui_GM/blob/main/dll/imgui_api_gm.cpp#L424) |
| ImGui.WantKeyboardCapture(val) | [imgui_api_gm.cpp](https://github.com/nommiin/ImGui_GM/blob/main/dll/imgui_api_gm.cpp#L441) |
| ImGui.WantMouseCapture(val) | [imgui_api_gm.cpp](https://github.com/nommiin/ImGui_GM/blob/main/dll/imgui_api_gm.cpp#L456) |
| ImGui.WantTextInput(val) | [imgui_api_gm.cpp](https://github.com/nommiin/ImGui_GM/blob/main/dll/imgui_api_gm.cpp#L471) |
| ImGui.WantMouseCaptureUnlessPopupClose(val) | [imgui_api_gm.cpp](https://github.com/nommiin/ImGui_GM/blob/main/dll/imgui_api_gm.cpp#L486) |
| ImGui.DockBuilderDockWindow(window_name, node_id) | [imgui_docking_gm.cpp](https://github.com/nommiin/ImGui_GM/blob/main/dll/imgui_docking_gm.cpp#L62) |
| ImGui.DockBuilderGetNode(node_id) | [imgui_docking_gm.cpp](https://github.com/nommiin/ImGui_GM/blob/main/dll/imgui_docking_gm.cpp#L70) |
| ImGui.DockBuilderGetCentralNode(node_id) | [imgui_docking_gm.cpp](https://github.com/nommiin/ImGui_GM/blob/main/dll/imgui_docking_gm.cpp#L77) |
| ImGui.DockBuilderAddNode(node_id, flags) | [imgui_docking_gm.cpp](https://github.com/nommiin/ImGui_GM/blob/main/dll/imgui_docking_gm.cpp#L84) |
| ImGui.DockBuilderRemoveNode(node_id) | [imgui_docking_gm.cpp](https://github.com/nommiin/ImGui_GM/blob/main/dll/imgui_docking_gm.cpp#L94) |
| ImGui.DockBuilderRemoveNodeDockedWindows(node_id, clear_settings_refs) | [imgui_docking_gm.cpp](https://github.com/nommiin/ImGui_GM/blob/main/dll/imgui_docking_gm.cpp#L101) |
| ImGui.DockBuilderRemoveNodeChildNodes(node_id) | [imgui_docking_gm.cpp](https://github.com/nommiin/ImGui_GM/blob/main/dll/imgui_docking_gm.cpp#L110) |
| ImGui.DockBuilderSetNodePos(node_id, _x, _y) | [imgui_docking_gm.cpp](https://github.com/nommiin/ImGui_GM/blob/main/dll/imgui_docking_gm.cpp#L117) |
| ImGui.DockBuilderSetNodeSize(node_id, width, height) | [imgui_docking_gm.cpp](https://github.com/nommiin/ImGui_GM/blob/main/dll/imgui_docking_gm.cpp#L126) |
| ImGui.DockBuilderSplitNode(node_id, split_dir, size_ratio_for_node_at_dir) | [imgui_docking_gm.cpp](https://github.com/nommiin/ImGui_GM/blob/main/dll/imgui_docking_gm.cpp#L135) |
| ImGui.DockBuilderCopyDockSpace() | [imgui_docking_gm.cpp](https://github.com/nommiin/ImGui_GM/blob/main/dll/imgui_docking_gm.cpp#L148) |
| ImGui.DockBuilderCopyDockNode() | [imgui_docking_gm.cpp](https://github.com/nommiin/ImGui_GM/blob/main/dll/imgui_docking_gm.cpp#L153) |
| ImGui.DockBuilderCopyWindowSettings(src_name, dst_name) | [imgui_docking_gm.cpp](https://github.com/nommiin/ImGui_GM/blob/main/dll/imgui_docking_gm.cpp#L158) |
| ImGui.DockBuilderFinish(node_id) | [imgui_docking_gm.cpp](https://github.com/nommiin/ImGui_GM/blob/main/dll/imgui_docking_gm.cpp#L166) |
| ImGui.DragFloatN(label, v, v_speed, v_min, v_max, format, flags, count) | [imgui_drag_gm.cpp](https://github.com/nommiin/ImGui_GM/blob/main/dll/imgui_drag_gm.cpp#L94) |
| ImGui.DragIntN(label, v, v_speed, v_min, v_max, format, flags, count) | [imgui_drag_gm.cpp](https://github.com/nommiin/ImGui_GM/blob/main/dll/imgui_drag_gm.cpp#L237) |
| ImGui.DrawListAddLine(list, x1, y1, x2, y2, col, alpha, thickness) | [imgui_drawlist_gm.cpp](https://github.com/nommiin/ImGui_GM/blob/main/dll/imgui_drawlist_gm.cpp#L37) |
| ImGui.DrawListAddRect(list, x1, y1, x2, y2, col, alpha, rounding, thickness, flags) | [imgui_drawlist_gm.cpp](https://github.com/nommiin/ImGui_GM/blob/main/dll/imgui_drawlist_gm.cpp#L57) |
| ImGui.DrawListAddRectFilled(list, x1, y1, x2, y2, col, alpha, rounding, flags) | [imgui_drawlist_gm.cpp](https://github.com/nommiin/ImGui_GM/blob/main/dll/imgui_drawlist_gm.cpp#L82) |
| ImGui.DrawListAddRectFilledMultiColor(list, x1, y1, x2, y2, col1, col2, col3, col4, alpha) | [imgui_drawlist_gm.cpp](https://github.com/nommiin/ImGui_GM/blob/main/dll/imgui_drawlist_gm.cpp#L104) |
| ImGui.DrawListAddQuad(list, x1, y1, x2, y2, x3, y3, x4, y4, col, alpha, thickness) | [imgui_drawlist_gm.cpp](https://github.com/nommiin/ImGui_GM/blob/main/dll/imgui_drawlist_gm.cpp#L124) |
| ImGui.DrawListAddQuadFilled(list, x1, y1, x2, y2, x3, y3, x4, y4, col, alpha) | [imgui_drawlist_gm.cpp](https://github.com/nommiin/ImGui_GM/blob/main/dll/imgui_drawlist_gm.cpp#L148) |
| ImGui.DrawListAddTriangle(list, x1, y1, x2, y2, x3, y3, col, alpha, thickness) | [imgui_drawlist_gm.cpp](https://github.com/nommiin/ImGui_GM/blob/main/dll/imgui_drawlist_gm.cpp#L169) |
| ImGui.DrawListAddTriangleFilled(list, x1, y1, x2, y2, x3, y3, col, alpha) | [imgui_drawlist_gm.cpp](https://github.com/nommiin/ImGui_GM/blob/main/dll/imgui_drawlist_gm.cpp#L190) |
| ImGui.DrawListAddCircle(list, _x, _y, radius, col, alpha, num_segments, thickness) | [imgui_drawlist_gm.cpp](https://github.com/nommiin/ImGui_GM/blob/main/dll/imgui_drawlist_gm.cpp#L209) |
| ImGui.DrawListAddCircleFilled(list, _x, _y, radius, col, alpha, num_segments) | [imgui_drawlist_gm.cpp](https://github.com/nommiin/ImGui_GM/blob/main/dll/imgui_drawlist_gm.cpp#L230) |
| ImGui.DrawListAddNgon(list, _x, _y, radius, col, alpha, num_segments, thickness) | [imgui_drawlist_gm.cpp](https://github.com/nommiin/ImGui_GM/blob/main/dll/imgui_drawlist_gm.cpp#L248) |
| ImGui.DrawListAddNgonFilled(list, _x, _y, radius, col, alpha, num_segments) | [imgui_drawlist_gm.cpp](https://github.com/nommiin/ImGui_GM/blob/main/dll/imgui_drawlist_gm.cpp#L269) |
| ImGui.DrawListAddText(list, _x, _y, text, col, alpha) | [imgui_drawlist_gm.cpp](https://github.com/nommiin/ImGui_GM/blob/main/dll/imgui_drawlist_gm.cpp#L287) |
| ImGui.DrawListAddTextFont(list, _x, _y, text, font, font_size, col, alpha, wrap_width) | [imgui_drawlist_gm.cpp](https://github.com/nommiin/ImGui_GM/blob/main/dll/imgui_drawlist_gm.cpp#L303) |
| ImGui.DrawListAddPolyline(list, positions, col, alpha, thickness, flags, num_points) | [imgui_drawlist_gm.cpp](https://github.com/nommiin/ImGui_GM/blob/main/dll/imgui_drawlist_gm.cpp#L325) |
| ImGui.DrawListAddConvexPolyFilled(list, positions, col, alpha, num_points) | [imgui_drawlist_gm.cpp](https://github.com/nommiin/ImGui_GM/blob/main/dll/imgui_drawlist_gm.cpp#L359) |
| ImGui.DrawListAddBezierCubic(list, x1, y1, x2, y2, x3, y3, x4, y4, col, alpha, thickness, num_segments) | [imgui_drawlist_gm.cpp](https://github.com/nommiin/ImGui_GM/blob/main/dll/imgui_drawlist_gm.cpp#L385) |
| ImGui.DrawListAddBezierQuadratic(list, x1, y1, x2, y2, x3, y3, col, alpha, thickness, num_segments) | [imgui_drawlist_gm.cpp](https://github.com/nommiin/ImGui_GM/blob/main/dll/imgui_drawlist_gm.cpp#L411) |
| ImGui.DrawListPathFillConvex(list, col, alpha) | [imgui_drawlist_gm.cpp](https://github.com/nommiin/ImGui_GM/blob/main/dll/imgui_drawlist_gm.cpp#L435) |
| ImGui.DrawListPathStroke(list, col, alpha, thickness, flags) | [imgui_drawlist_gm.cpp](https://github.com/nommiin/ImGui_GM/blob/main/dll/imgui_drawlist_gm.cpp#L448) |
| ImGui.DrawListPathClear(list) | [imgui_drawlist_gm.cpp](https://github.com/nommiin/ImGui_GM/blob/main/dll/imgui_drawlist_gm.cpp#L466) |
| ImGui.DrawListPathLineTo(list, _x, _y) | [imgui_drawlist_gm.cpp](https://github.com/nommiin/ImGui_GM/blob/main/dll/imgui_drawlist_gm.cpp#L474) |
| ImGui.DrawListPathLineToMergeDuplicate(list, _x, _y) | [imgui_drawlist_gm.cpp](https://github.com/nommiin/ImGui_GM/blob/main/dll/imgui_drawlist_gm.cpp#L484) |
| ImGui.DrawListPathArcTo(list, _x, _y, radius, a_min, a_max, num_segments) | [imgui_drawlist_gm.cpp](https://github.com/nommiin/ImGui_GM/blob/main/dll/imgui_drawlist_gm.cpp#L494) |
| ImGui.DrawListPathArcToFast(list, _x, _y, radius, a_min_of_12, a_max_of_12) | [imgui_drawlist_gm.cpp](https://github.com/nommiin/ImGui_GM/blob/main/dll/imgui_drawlist_gm.cpp#L509) |
| ImGui.DrawListPathBezierCubicCurveTo(list, x2, y2, x3, y3, x4, y4, num_segments) | [imgui_drawlist_gm.cpp](https://github.com/nommiin/ImGui_GM/blob/main/dll/imgui_drawlist_gm.cpp#L522) |
| ImGui.DrawListPathBezierQuadraticCurveTo(list, x2, y2, x3, y3, num_segments) | [imgui_drawlist_gm.cpp](https://github.com/nommiin/ImGui_GM/blob/main/dll/imgui_drawlist_gm.cpp#L538) |
| ImGui.DrawListPathRect(list, x1, y1, x2, y2, rounding, flags) | [imgui_drawlist_gm.cpp](https://github.com/nommiin/ImGui_GM/blob/main/dll/imgui_drawlist_gm.cpp#L552) |
| ImGui.DrawListAddImage(list, sprite, subimg, x1, y1, x2, y2, col, alpha, uv) | [imgui_drawlist_gm.cpp](https://github.com/nommiin/ImGui_GM/blob/main/dll/imgui_drawlist_gm.cpp#L568) |
| ImGui.DrawListAddImageRounded(list, sprite, subimg, x1, y1, x2, y2, rounding, col, alpha, flags, uv) | [imgui_drawlist_gm.cpp](https://github.com/nommiin/ImGui_GM/blob/main/dll/imgui_drawlist_gm.cpp#L595) |
| ImGui.DrawListPushClipRect(list, clip_min_x, clip_min_y, clip_max_x, clip_max_y, intersect_with_current_clip_rect) | [imgui_drawlist_gm.cpp](https://github.com/nommiin/ImGui_GM/blob/main/dll/imgui_drawlist_gm.cpp#L625) |
| ImGui.DrawlistPushClipRectFullscreen(list) | [imgui_drawlist_gm.cpp](https://github.com/nommiin/ImGui_GM/blob/main/dll/imgui_drawlist_gm.cpp#L638) |
| ImGui.DrawListPopClipRect(list) | [imgui_drawlist_gm.cpp](https://github.com/nommiin/ImGui_GM/blob/main/dll/imgui_drawlist_gm.cpp#L645) |
| ImGui.DrawListPushTexture(list, sprite, subimg) | [imgui_drawlist_gm.cpp](https://github.com/nommiin/ImGui_GM/blob/main/dll/imgui_drawlist_gm.cpp#L653) |
| ImGui.DrawListPopTexture(list) | [imgui_drawlist_gm.cpp](https://github.com/nommiin/ImGui_GM/blob/main/dll/imgui_drawlist_gm.cpp#L663) |
| ImGui.DrawListFlagsGet(list) | [imgui_drawlist_gm.cpp](https://github.com/nommiin/ImGui_GM/blob/main/dll/imgui_drawlist_gm.cpp#L671) |
| ImGui.DrawListFlagsSet(list, flags) | [imgui_drawlist_gm.cpp](https://github.com/nommiin/ImGui_GM/blob/main/dll/imgui_drawlist_gm.cpp#L679) |
| ImGui.DrawListFlagToggle(list, flag) | [imgui_drawlist_gm.cpp](https://github.com/nommiin/ImGui_GM/blob/main/dll/imgui_drawlist_gm.cpp#L688) |
| ImGui.MemoryEditorShowWindow(title, buffer, offset, size) | [imgui_ext_memeditor_gm.cpp](https://github.com/nommiin/ImGui_GM/blob/main/dll/imgui_ext_memeditor_gm.cpp#L5) |
| ImGui.MemoryEditorDrawContents(buffer, offset, size) | [imgui_ext_memeditor_gm.cpp](https://github.com/nommiin/ImGui_GM/blob/main/dll/imgui_ext_memeditor_gm.cpp#L18) |
| ImGui.TextEditorCreate() | [imgui_ext_text_editor_gm.cpp](https://github.com/nommiin/ImGui_GM/blob/main/dll/imgui_ext_text_editor_gm.cpp#L12) |
| ImGui.TextEditorSetTabSize(_id, enabled) | [imgui_ext_text_editor_gm.cpp](https://github.com/nommiin/ImGui_GM/blob/main/dll/imgui_ext_text_editor_gm.cpp#L22) |
| ImGui.TextEditorGetTabSize(_id) | [imgui_ext_text_editor_gm.cpp](https://github.com/nommiin/ImGui_GM/blob/main/dll/imgui_ext_text_editor_gm.cpp#L33) |
| ImGui.TextEditorSetInsertSpacesOnTabs(_id, enabled) | [imgui_ext_text_editor_gm.cpp](https://github.com/nommiin/ImGui_GM/blob/main/dll/imgui_ext_text_editor_gm.cpp#L42) |
| ImGui.TextEditorIsInsertSpacesOnTabs(_id) | [imgui_ext_text_editor_gm.cpp](https://github.com/nommiin/ImGui_GM/blob/main/dll/imgui_ext_text_editor_gm.cpp#L53) |
| ImGui.TextEditorSetLineSpacing(_id, amount) | [imgui_ext_text_editor_gm.cpp](https://github.com/nommiin/ImGui_GM/blob/main/dll/imgui_ext_text_editor_gm.cpp#L62) |
| ImGui.TextEditorGetLineSpacing(_id) | [imgui_ext_text_editor_gm.cpp](https://github.com/nommiin/ImGui_GM/blob/main/dll/imgui_ext_text_editor_gm.cpp#L73) |
| ImGui.TextEditorSetReadOnlyEnabled(_id, enabled) | [imgui_ext_text_editor_gm.cpp](https://github.com/nommiin/ImGui_GM/blob/main/dll/imgui_ext_text_editor_gm.cpp#L82) |
| ImGui.TextEditorIsReadOnlyEnabled(_id) | [imgui_ext_text_editor_gm.cpp](https://github.com/nommiin/ImGui_GM/blob/main/dll/imgui_ext_text_editor_gm.cpp#L93) |
| ImGui.TextEditorSetAutoIndentEnabled(_id, enabled) | [imgui_ext_text_editor_gm.cpp](https://github.com/nommiin/ImGui_GM/blob/main/dll/imgui_ext_text_editor_gm.cpp#L102) |
| ImGui.TextEditorIsAutoIndentEnabled(_id) | [imgui_ext_text_editor_gm.cpp](https://github.com/nommiin/ImGui_GM/blob/main/dll/imgui_ext_text_editor_gm.cpp#L113) |
| ImGui.TextEditorSetShowWhitespacesEnabled(_id, enabled) | [imgui_ext_text_editor_gm.cpp](https://github.com/nommiin/ImGui_GM/blob/main/dll/imgui_ext_text_editor_gm.cpp#L122) |
| ImGui.TextEditorIsShowWhitespacesEnabled(_id) | [imgui_ext_text_editor_gm.cpp](https://github.com/nommiin/ImGui_GM/blob/main/dll/imgui_ext_text_editor_gm.cpp#L133) |
| ImGui.TextEditorSetShowSpacesEnabled(_id, enabled) | [imgui_ext_text_editor_gm.cpp](https://github.com/nommiin/ImGui_GM/blob/main/dll/imgui_ext_text_editor_gm.cpp#L142) |
| ImGui.TextEditorIsShowSpacesEnabled(_id) | [imgui_ext_text_editor_gm.cpp](https://github.com/nommiin/ImGui_GM/blob/main/dll/imgui_ext_text_editor_gm.cpp#L153) |
| ImGui.TextEditorSetShowTabsEnabled(_id, enabled) | [imgui_ext_text_editor_gm.cpp](https://github.com/nommiin/ImGui_GM/blob/main/dll/imgui_ext_text_editor_gm.cpp#L162) |
| ImGui.TextEditorIsShowTabsEnabled(_id) | [imgui_ext_text_editor_gm.cpp](https://github.com/nommiin/ImGui_GM/blob/main/dll/imgui_ext_text_editor_gm.cpp#L173) |
| ImGui.TextEditorSetShowLineNumbersEnabled(_id, enabled) | [imgui_ext_text_editor_gm.cpp](https://github.com/nommiin/ImGui_GM/blob/main/dll/imgui_ext_text_editor_gm.cpp#L182) |
| ImGui.TextEditorIsShowLineNumbersEnabled(_id) | [imgui_ext_text_editor_gm.cpp](https://github.com/nommiin/ImGui_GM/blob/main/dll/imgui_ext_text_editor_gm.cpp#L193) |
| ImGui.TextEditorSetShowScrollbarMiniMapEnabled(_id, enabled) | [imgui_ext_text_editor_gm.cpp](https://github.com/nommiin/ImGui_GM/blob/main/dll/imgui_ext_text_editor_gm.cpp#L202) |
| ImGui.TextEditorIsShowScrollbarMiniMapEnabled(_id) | [imgui_ext_text_editor_gm.cpp](https://github.com/nommiin/ImGui_GM/blob/main/dll/imgui_ext_text_editor_gm.cpp#L213) |
| ImGui.TextEditorSetShowPanScrollIndicatorEnabled(_id, enabled) | [imgui_ext_text_editor_gm.cpp](https://github.com/nommiin/ImGui_GM/blob/main/dll/imgui_ext_text_editor_gm.cpp#L222) |
| ImGui.TextEditorIsShowPanScrollIndicatorEnabled(_id) | [imgui_ext_text_editor_gm.cpp](https://github.com/nommiin/ImGui_GM/blob/main/dll/imgui_ext_text_editor_gm.cpp#L233) |
| ImGui.TextEditorSetShowMatchingBrackets(_id, enabled) | [imgui_ext_text_editor_gm.cpp](https://github.com/nommiin/ImGui_GM/blob/main/dll/imgui_ext_text_editor_gm.cpp#L242) |
| ImGui.TextEditorIsShowingMatchingBrackets(_id) | [imgui_ext_text_editor_gm.cpp](https://github.com/nommiin/ImGui_GM/blob/main/dll/imgui_ext_text_editor_gm.cpp#L253) |
| ImGui.TextEditorSetCompletePairedGlyphs(_id, enabled) | [imgui_ext_text_editor_gm.cpp](https://github.com/nommiin/ImGui_GM/blob/main/dll/imgui_ext_text_editor_gm.cpp#L262) |
| ImGui.TextEditorIsCompletingPairedGlyphs(_id) | [imgui_ext_text_editor_gm.cpp](https://github.com/nommiin/ImGui_GM/blob/main/dll/imgui_ext_text_editor_gm.cpp#L273) |
| ImGui.TextEditorSetOverwriteEnabled(_id, enabled) | [imgui_ext_text_editor_gm.cpp](https://github.com/nommiin/ImGui_GM/blob/main/dll/imgui_ext_text_editor_gm.cpp#L282) |
| ImGui.TextEditorIsOverwriteEnabled(_id) | [imgui_ext_text_editor_gm.cpp](https://github.com/nommiin/ImGui_GM/blob/main/dll/imgui_ext_text_editor_gm.cpp#L293) |
| ImGui.TextEditorSetMiddleMousePanMode(_id) | [imgui_ext_text_editor_gm.cpp](https://github.com/nommiin/ImGui_GM/blob/main/dll/imgui_ext_text_editor_gm.cpp#L302) |
| ImGui.TextEditorSetMiddleMouseScrollMode(_id) | [imgui_ext_text_editor_gm.cpp](https://github.com/nommiin/ImGui_GM/blob/main/dll/imgui_ext_text_editor_gm.cpp#L312) |
| ImGui.TextEditorIsMiddleMousePanMode(_id) | [imgui_ext_text_editor_gm.cpp](https://github.com/nommiin/ImGui_GM/blob/main/dll/imgui_ext_text_editor_gm.cpp#L322) |
| ImGui.TextEditorSetText(_id, text) | [imgui_ext_text_editor_gm.cpp](https://github.com/nommiin/ImGui_GM/blob/main/dll/imgui_ext_text_editor_gm.cpp#L331) |
| ImGui.TextEditorGetText(_id) | [imgui_ext_text_editor_gm.cpp](https://github.com/nommiin/ImGui_GM/blob/main/dll/imgui_ext_text_editor_gm.cpp#L342) |
| ImGui.TextEditorGetCursorText(_id, cursor) | [imgui_ext_text_editor_gm.cpp](https://github.com/nommiin/ImGui_GM/blob/main/dll/imgui_ext_text_editor_gm.cpp#L352) |
| ImGui.TextEditorGetLineText(_id, line) | [imgui_ext_text_editor_gm.cpp](https://github.com/nommiin/ImGui_GM/blob/main/dll/imgui_ext_text_editor_gm.cpp#L363) |
| ImGui.TextEditorGetSectionText(_id, start_line, start_column, end_line, end_column) | [imgui_ext_text_editor_gm.cpp](https://github.com/nommiin/ImGui_GM/blob/main/dll/imgui_ext_text_editor_gm.cpp#L374) |
| ImGui.TextEditorReplaceSectionText(_id, start_line, start_column, end_line, end_column, text) | [imgui_ext_text_editor_gm.cpp](https://github.com/nommiin/ImGui_GM/blob/main/dll/imgui_ext_text_editor_gm.cpp#L388) |
| ImGui.TextEditorClearText(_id) | [imgui_ext_text_editor_gm.cpp](https://github.com/nommiin/ImGui_GM/blob/main/dll/imgui_ext_text_editor_gm.cpp#L404) |
| ImGui.TextEditorIsEmpty(_id) | [imgui_ext_text_editor_gm.cpp](https://github.com/nommiin/ImGui_GM/blob/main/dll/imgui_ext_text_editor_gm.cpp#L414) |
| ImGui.TextEditorGetLineCount(_id) | [imgui_ext_text_editor_gm.cpp](https://github.com/nommiin/ImGui_GM/blob/main/dll/imgui_ext_text_editor_gm.cpp#L423) |
| ImGui.TextEditorRender(_id, title, width, height, border) | [imgui_ext_text_editor_gm.cpp](https://github.com/nommiin/ImGui_GM/blob/main/dll/imgui_ext_text_editor_gm.cpp#L432) |
| ImGui.TextEditorSetFocus(_id) | [imgui_ext_text_editor_gm.cpp](https://github.com/nommiin/ImGui_GM/blob/main/dll/imgui_ext_text_editor_gm.cpp#L449) |
| ImGui.TextEditorCut(_id) | [imgui_ext_text_editor_gm.cpp](https://github.com/nommiin/ImGui_GM/blob/main/dll/imgui_ext_text_editor_gm.cpp#L459) |
| ImGui.TextEditorCopy(_id) | [imgui_ext_text_editor_gm.cpp](https://github.com/nommiin/ImGui_GM/blob/main/dll/imgui_ext_text_editor_gm.cpp#L469) |
| ImGui.TextEditorPaste(_id) | [imgui_ext_text_editor_gm.cpp](https://github.com/nommiin/ImGui_GM/blob/main/dll/imgui_ext_text_editor_gm.cpp#L479) |
| ImGui.TextEditorUndo(_id) | [imgui_ext_text_editor_gm.cpp](https://github.com/nommiin/ImGui_GM/blob/main/dll/imgui_ext_text_editor_gm.cpp#L489) |
| ImGui.TextEditorRedo(_id) | [imgui_ext_text_editor_gm.cpp](https://github.com/nommiin/ImGui_GM/blob/main/dll/imgui_ext_text_editor_gm.cpp#L499) |
| ImGui.TextEditorCanUndo(_id) | [imgui_ext_text_editor_gm.cpp](https://github.com/nommiin/ImGui_GM/blob/main/dll/imgui_ext_text_editor_gm.cpp#L509) |
| ImGui.TextEditorCanRedo(_id) | [imgui_ext_text_editor_gm.cpp](https://github.com/nommiin/ImGui_GM/blob/main/dll/imgui_ext_text_editor_gm.cpp#L518) |
| ImGui.TextEditorGetUndoIndex(_id) | [imgui_ext_text_editor_gm.cpp](https://github.com/nommiin/ImGui_GM/blob/main/dll/imgui_ext_text_editor_gm.cpp#L527) |
| ImGui.TextEditorSetCursor(_id, line, column) | [imgui_ext_text_editor_gm.cpp](https://github.com/nommiin/ImGui_GM/blob/main/dll/imgui_ext_text_editor_gm.cpp#L536) |
| ImGui.TextEditorSelectAll(_id) | [imgui_ext_text_editor_gm.cpp](https://github.com/nommiin/ImGui_GM/blob/main/dll/imgui_ext_text_editor_gm.cpp#L548) |
| ImGui.TextEditorSelectLine(_id, line) | [imgui_ext_text_editor_gm.cpp](https://github.com/nommiin/ImGui_GM/blob/main/dll/imgui_ext_text_editor_gm.cpp#L558) |
| ImGui.TextEditorSelectLines(_id, start, _end) | [imgui_ext_text_editor_gm.cpp](https://github.com/nommiin/ImGui_GM/blob/main/dll/imgui_ext_text_editor_gm.cpp#L569) |
| ImGui.TextEditorSelectRegion(_id, start_line, start_column, end_line, end_column) | [imgui_ext_text_editor_gm.cpp](https://github.com/nommiin/ImGui_GM/blob/main/dll/imgui_ext_text_editor_gm.cpp#L581) |
| ImGui.TextEditorSelectToBrackets(_id, include_brackets) | [imgui_ext_text_editor_gm.cpp](https://github.com/nommiin/ImGui_GM/blob/main/dll/imgui_ext_text_editor_gm.cpp#L595) |
| ImGui.TextEditorGrowSelectionsToCurlyBrackets(_id) | [imgui_ext_text_editor_gm.cpp](https://github.com/nommiin/ImGui_GM/blob/main/dll/imgui_ext_text_editor_gm.cpp#L607) |
| ImGui.TextEditorShrinkSelectionsToCurlyBrackets(_id) | [imgui_ext_text_editor_gm.cpp](https://github.com/nommiin/ImGui_GM/blob/main/dll/imgui_ext_text_editor_gm.cpp#L617) |
| ImGui.TextEditorAddNextOccurrence(_id) | [imgui_ext_text_editor_gm.cpp](https://github.com/nommiin/ImGui_GM/blob/main/dll/imgui_ext_text_editor_gm.cpp#L627) |
| ImGui.TextEditorSelectAllOccurrences(_id) | [imgui_ext_text_editor_gm.cpp](https://github.com/nommiin/ImGui_GM/blob/main/dll/imgui_ext_text_editor_gm.cpp#L637) |
| ImGui.TextEditorAnyCursorHasSelection(_id) | [imgui_ext_text_editor_gm.cpp](https://github.com/nommiin/ImGui_GM/blob/main/dll/imgui_ext_text_editor_gm.cpp#L647) |
| ImGui.TextEditorAllCursorsHaveSelection(_id) | [imgui_ext_text_editor_gm.cpp](https://github.com/nommiin/ImGui_GM/blob/main/dll/imgui_ext_text_editor_gm.cpp#L656) |
| ImGui.TextEditorCurrentCursorHasSelection(_id) | [imgui_ext_text_editor_gm.cpp](https://github.com/nommiin/ImGui_GM/blob/main/dll/imgui_ext_text_editor_gm.cpp#L665) |
| ImGui.TextEditorClearCursors(_id) | [imgui_ext_text_editor_gm.cpp](https://github.com/nommiin/ImGui_GM/blob/main/dll/imgui_ext_text_editor_gm.cpp#L674) |
| ImGui.TextEditorGetFirstVisibleLine(_id) | [imgui_ext_text_editor_gm.cpp](https://github.com/nommiin/ImGui_GM/blob/main/dll/imgui_ext_text_editor_gm.cpp#L684) |
| ImGui.TextEditorGetLastVisibleLine(_id) | [imgui_ext_text_editor_gm.cpp](https://github.com/nommiin/ImGui_GM/blob/main/dll/imgui_ext_text_editor_gm.cpp#L693) |
| ImGui.TextEditorGetFirstVisibleColumn(_id) | [imgui_ext_text_editor_gm.cpp](https://github.com/nommiin/ImGui_GM/blob/main/dll/imgui_ext_text_editor_gm.cpp#L702) |
| ImGui.TextEditorGetLastVisibleColumn(_id) | [imgui_ext_text_editor_gm.cpp](https://github.com/nommiin/ImGui_GM/blob/main/dll/imgui_ext_text_editor_gm.cpp#L711) |
| ImGui.TextEditorGetLineHeight(_id) | [imgui_ext_text_editor_gm.cpp](https://github.com/nommiin/ImGui_GM/blob/main/dll/imgui_ext_text_editor_gm.cpp#L720) |
| ImGui.TextEditorGetGlyphWidth(_id) | [imgui_ext_text_editor_gm.cpp](https://github.com/nommiin/ImGui_GM/blob/main/dll/imgui_ext_text_editor_gm.cpp#L729) |
| ImGui.AddFontFromFile(file, size) | [imgui_fonts_gm.cpp](https://github.com/nommiin/ImGui_GM/blob/main/dll/imgui_fonts_gm.cpp#L33) |
| ImGui.AddFontDefault() | [imgui_fonts_gm.cpp](https://github.com/nommiin/ImGui_GM/blob/main/dll/imgui_fonts_gm.cpp#L48) |
| ImGui.InputFloatN(label, v, len, step, step_fast, format, flags) | [imgui_input_gm.cpp](https://github.com/nommiin/ImGui_GM/blob/main/dll/imgui_input_gm.cpp#L131) |
| ImGui.InputIntN(label, v, flags, count) | [imgui_input_gm.cpp](https://github.com/nommiin/ImGui_GM/blob/main/dll/imgui_input_gm.cpp#L219) |
| ImGui.GetCursorStartPosX() | [imgui_layout_gm.cpp](https://github.com/nommiin/ImGui_GM/blob/main/dll/imgui_layout_gm.cpp#L81) |
| ImGui.GetCursorStartPosY() | [imgui_layout_gm.cpp](https://github.com/nommiin/ImGui_GM/blob/main/dll/imgui_layout_gm.cpp#L88) |
| ImGui.GetCursorScreenPosX() | [imgui_layout_gm.cpp](https://github.com/nommiin/ImGui_GM/blob/main/dll/imgui_layout_gm.cpp#L95) |
| ImGui.GetCursorScreenPosY() | [imgui_layout_gm.cpp](https://github.com/nommiin/ImGui_GM/blob/main/dll/imgui_layout_gm.cpp#L102) |
| ImGui.GetContentRegionAvailX() | [imgui_layout_gm.cpp](https://github.com/nommiin/ImGui_GM/blob/main/dll/imgui_layout_gm.cpp#L159) |
| ImGui.GetContentRegionAvailY() | [imgui_layout_gm.cpp](https://github.com/nommiin/ImGui_GM/blob/main/dll/imgui_layout_gm.cpp#L166) |
| ImGui.GetContentRegionMaxX() | [imgui_layout_gm.cpp](https://github.com/nommiin/ImGui_GM/blob/main/dll/imgui_layout_gm.cpp#L173) |
| ImGui.GetContentRegionMaxY() | [imgui_layout_gm.cpp](https://github.com/nommiin/ImGui_GM/blob/main/dll/imgui_layout_gm.cpp#L180) |
| ImGui.GetWindowContentRegionMinX() | [imgui_layout_gm.cpp](https://github.com/nommiin/ImGui_GM/blob/main/dll/imgui_layout_gm.cpp#L187) |
| ImGui.GetWindowContentRegionMinY() | [imgui_layout_gm.cpp](https://github.com/nommiin/ImGui_GM/blob/main/dll/imgui_layout_gm.cpp#L194) |
| ImGui.GetWindowContentRegionMaxX() | [imgui_layout_gm.cpp](https://github.com/nommiin/ImGui_GM/blob/main/dll/imgui_layout_gm.cpp#L201) |
| ImGui.GetWindowContentRegionMaxY() | [imgui_layout_gm.cpp](https://github.com/nommiin/ImGui_GM/blob/main/dll/imgui_layout_gm.cpp#L208) |
| ImGui.GetDragDropPayloadType() | [imgui_payload_gm.cpp](https://github.com/nommiin/ImGui_GM/blob/main/dll/imgui_payload_gm.cpp#L83) |
| ImGui.SliderFloatN(label, v, v_speed, v_min, v_max, format, flags, count) | [imgui_slider_gm.cpp](https://github.com/nommiin/ImGui_GM/blob/main/dll/imgui_slider_gm.cpp#L86) |
| ImGui.SliderIntN(label, v, v_min, v_max, format, flags, count) | [imgui_slider_gm.cpp](https://github.com/nommiin/ImGui_GM/blob/main/dll/imgui_slider_gm.cpp#L196) |
| ImGui.GetStyleColor(idx) | [imgui_style_gm.cpp](https://github.com/nommiin/ImGui_GM/blob/main/dll/imgui_style_gm.cpp#L57) |
| ImGui.Surface(surface, color, alpha, width, height, uv) | [imgui_widgets_gm.cpp](https://github.com/nommiin/ImGui_GM/blob/main/dll/imgui_widgets_gm.cpp#L113) |
| ImGui.BeginViewportSideBar(name, viewport, dir, size, window_flags) | [imgui_widgets_gm.cpp](https://github.com/nommiin/ImGui_GM/blob/main/dll/imgui_widgets_gm.cpp#L179) |
| ImGui.BeginChildFrame() | [imgui_window_gm.cpp](https://github.com/nommiin/ImGui_GM/blob/main/dll/imgui_window_gm.cpp#L54) |
| ImGui.EndChildFrame() | [imgui_window_gm.cpp](https://github.com/nommiin/ImGui_GM/blob/main/dll/imgui_window_gm.cpp#L68) |
| ImGui.GetWindowPosX() | [imgui_window_gm.cpp](https://github.com/nommiin/ImGui_GM/blob/main/dll/imgui_window_gm.cpp#L105) |
| ImGui.GetWindowPosY() | [imgui_window_gm.cpp](https://github.com/nommiin/ImGui_GM/blob/main/dll/imgui_window_gm.cpp#L112) |
