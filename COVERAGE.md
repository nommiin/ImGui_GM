# About
This is an automatically generated file that keeps track of wrapper coverage of the ImGui API. This may not be 100% accurate as it is calculated programatically, but can serve as a good general idea of progress.

# Coverage

- ![coverage](https://badgen.net/https/raw.githubusercontent.com/nommiin/ImGui_GM/main/extra/badges/coverage.json?icon=awesome)
- 360 out of 393 supported API functions wrapped (**92% complete**)
- 360 out of 408 total API functions wrapped (*88% complete*)
- Note that 15 out of 408 API functions are not supported (4%)

| Function | Wrapped | Link | Notes |
| -------- | ------- | ---- | ----- |
| `ImGui::CreateContext` | ✅ | [imgui_api_gm.cpp](https://github.com/nommiin/ImGui_GM/blob/main/dll/gm/imgui_api_gm.cpp#L8) | N/A |
| `ImGui::DestroyContext` | ✅ | [imgui_api_gm.cpp](https://github.com/nommiin/ImGui_GM/blob/main/dll/gm/imgui_api_gm.cpp#L13) | N/A |
| `ImGui::GetCurrentContext` | ✅ | [imgui_api_gm.cpp](https://github.com/nommiin/ImGui_GM/blob/main/dll/gm/imgui_api_gm.cpp#L20) | N/A |
| `ImGui::SetCurrentContext` | ✅ | [imgui_api_gm.cpp](https://github.com/nommiin/ImGui_GM/blob/main/dll/gm/imgui_api_gm.cpp#L25) | N/A |
| `ImGui::GetIO` | ❌ | N/A | N/A |
| `ImGui::GetPlatformIO` | ❌ | N/A | Unsupported |
| `ImGui::GetStyle` | ❌ | N/A | You can use custom functions (`SetStyleVar` and `SetStyleColor`) to modify the style |
| `ImGui::NewFrame` | ✅ | N/A | Handled internally by `__imgui_new_frame` function |
| `ImGui::EndFrame` | ✅ | N/A | Handled internally by `__imgui_end_frame` function |
| `ImGui::Render` | ✅ | N/A | Handled internally by `__imgui_render` function |
| `ImGui::GetDrawData` | ❌ | N/A | N/A |
| `ImGui::ShowDemoWindow` | ✅ | [imgui_api_gm.cpp](https://github.com/nommiin/ImGui_GM/blob/main/dll/gm/imgui_api_gm.cpp#L32) | N/A |
| `ImGui::ShowMetricsWindow` | ✅ | [imgui_api_gm.cpp](https://github.com/nommiin/ImGui_GM/blob/main/dll/gm/imgui_api_gm.cpp#L48) | N/A |
| `ImGui::ShowDebugLogWindow` | ✅ | [imgui_api_gm.cpp](https://github.com/nommiin/ImGui_GM/blob/main/dll/gm/imgui_api_gm.cpp#L64) | N/A |
| `ImGui::ShowIDStackToolWindow` | ✅ | [imgui_api_gm.cpp](https://github.com/nommiin/ImGui_GM/blob/main/dll/gm/imgui_api_gm.cpp#L80) | N/A |
| `ImGui::ShowAboutWindow` | ✅ | [imgui_api_gm.cpp](https://github.com/nommiin/ImGui_GM/blob/main/dll/gm/imgui_api_gm.cpp#L98) | N/A |
| `ImGui::ShowStyleEditor` | ✅ | [imgui_api_gm.cpp](https://github.com/nommiin/ImGui_GM/blob/main/dll/gm/imgui_api_gm.cpp#L114) | N/A |
| `ImGui::ShowStyleSelector` | ✅ | [imgui_api_gm.cpp](https://github.com/nommiin/ImGui_GM/blob/main/dll/gm/imgui_api_gm.cpp#L119) | N/A |
| `ImGui::ShowFontSelector` | ✅ | [imgui_api_gm.cpp](https://github.com/nommiin/ImGui_GM/blob/main/dll/gm/imgui_api_gm.cpp#L126) | N/A |
| `ImGui::ShowUserGuide` | ✅ | [imgui_api_gm.cpp](https://github.com/nommiin/ImGui_GM/blob/main/dll/gm/imgui_api_gm.cpp#L133) | N/A |
| `ImGui::GetVersion` | ✅ | [imgui_api_gm.cpp](https://github.com/nommiin/ImGui_GM/blob/main/dll/gm/imgui_api_gm.cpp#L138) | N/A |
| `ImGui::StyleColorsDark` | ✅ | [imgui_style_gm.cpp](https://github.com/nommiin/ImGui_GM/blob/main/dll/gm/imgui_style_gm.cpp#L3) | N/A |
| `ImGui::StyleColorsLight` | ✅ | [imgui_style_gm.cpp](https://github.com/nommiin/ImGui_GM/blob/main/dll/gm/imgui_style_gm.cpp#L8) | N/A |
| `ImGui::StyleColorsClassic` | ✅ | [imgui_style_gm.cpp](https://github.com/nommiin/ImGui_GM/blob/main/dll/gm/imgui_style_gm.cpp#L13) | N/A |
| `ImGui::Begin` | ✅ | [imgui_window_gm.cpp](https://github.com/nommiin/ImGui_GM/blob/main/dll/gm/imgui_window_gm.cpp#L3) | See [ImGuiReturnMask Usage](https://github.com/nommiin/ImGui_GM/wiki/ImGuiReturnMask-Usage) for more info the `mask` argument |
| `ImGui::End` | ✅ | [imgui_window_gm.cpp](https://github.com/nommiin/ImGui_GM/blob/main/dll/gm/imgui_window_gm.cpp#L24) | N/A |
| `ImGui::BeginChild` | ✅ | [imgui_window_gm.cpp](https://github.com/nommiin/ImGui_GM/blob/main/dll/gm/imgui_window_gm.cpp#L29) | N/A |
| `ImGui::EndChild` | ✅ | [imgui_window_gm.cpp](https://github.com/nommiin/ImGui_GM/blob/main/dll/gm/imgui_window_gm.cpp#L44) | N/A |
| `ImGui::IsWindowAppearing` | ✅ | [imgui_window_gm.cpp](https://github.com/nommiin/ImGui_GM/blob/main/dll/gm/imgui_window_gm.cpp#L67) | N/A |
| `ImGui::IsWindowCollapsed` | ✅ | [imgui_window_gm.cpp](https://github.com/nommiin/ImGui_GM/blob/main/dll/gm/imgui_window_gm.cpp#L72) | N/A |
| `ImGui::IsWindowFocused` | ✅ | [imgui_window_gm.cpp](https://github.com/nommiin/ImGui_GM/blob/main/dll/gm/imgui_window_gm.cpp#L77) | N/A |
| `ImGui::IsWindowHovered` | ✅ | [imgui_window_gm.cpp](https://github.com/nommiin/ImGui_GM/blob/main/dll/gm/imgui_window_gm.cpp#L85) | N/A |
| `ImGui::GetWindowDrawList` | ✅ | [imgui_drawlist_gm.cpp](https://github.com/nommiin/ImGui_GM/blob/main/dll/gm/imgui_drawlist_gm.cpp#L32) | N/A |
| `ImGui::GetWindowDpiScale` | ✅ | [imgui_window_gm.cpp](https://github.com/nommiin/ImGui_GM/blob/main/dll/gm/imgui_window_gm.cpp#L93) | N/A |
| `ImGui::GetWindowPos` | ✅ | N/A | Use X/Y wrappers. ImVec2 returns are unsupported |
| `ImGui::GetWindowSize` | ✅ | N/A | Use Width/Height wrappers. ImVec2 returns are unsupported |
| `ImGui::GetWindowWidth` | ✅ | [imgui_window_gm.cpp](https://github.com/nommiin/ImGui_GM/blob/main/dll/gm/imgui_window_gm.cpp#L112) | N/A |
| `ImGui::GetWindowHeight` | ✅ | [imgui_window_gm.cpp](https://github.com/nommiin/ImGui_GM/blob/main/dll/gm/imgui_window_gm.cpp#L117) | N/A |
| `ImGui::GetWindowViewport` | ✅ | [imgui_window_gm.cpp](https://github.com/nommiin/ImGui_GM/blob/main/dll/gm/imgui_window_gm.cpp#L122) | N/A |
| `ImGui::SetNextWindowPos` | ✅ | [imgui_window_gm.cpp](https://github.com/nommiin/ImGui_GM/blob/main/dll/gm/imgui_window_gm.cpp#L143) | N/A |
| `ImGui::SetNextWindowSize` | ✅ | [imgui_window_gm.cpp](https://github.com/nommiin/ImGui_GM/blob/main/dll/gm/imgui_window_gm.cpp#L157) | N/A |
| `ImGui::SetNextWindowSizeConstraints` | ✅ | [imgui_window_gm.cpp](https://github.com/nommiin/ImGui_GM/blob/main/dll/gm/imgui_window_gm.cpp#L167) | N/A |
| `ImGui::SetNextWindowContentSize` | ✅ | [imgui_window_gm.cpp](https://github.com/nommiin/ImGui_GM/blob/main/dll/gm/imgui_window_gm.cpp#L178) | N/A |
| `ImGui::SetNextWindowCollapsed` | ✅ | [imgui_window_gm.cpp](https://github.com/nommiin/ImGui_GM/blob/main/dll/gm/imgui_window_gm.cpp#L186) | N/A |
| `ImGui::SetNextWindowFocus` | ✅ | [imgui_window_gm.cpp](https://github.com/nommiin/ImGui_GM/blob/main/dll/gm/imgui_window_gm.cpp#L195) | N/A |
| `ImGui::SetNextWindowScroll` | ✅ | [imgui_window_gm.cpp](https://github.com/nommiin/ImGui_GM/blob/main/dll/gm/imgui_window_gm.cpp#L200) | N/A |
| `ImGui::SetNextWindowBgAlpha` | ✅ | [imgui_window_gm.cpp](https://github.com/nommiin/ImGui_GM/blob/main/dll/gm/imgui_window_gm.cpp#L209) | N/A |
| `ImGui::SetNextWindowViewport` | ✅ | [imgui_window_gm.cpp](https://github.com/nommiin/ImGui_GM/blob/main/dll/gm/imgui_window_gm.cpp#L135) | N/A |
| `ImGui::SetWindowPos` | ✅ | [imgui_window_gm.cpp](https://github.com/nommiin/ImGui_GM/blob/main/dll/gm/imgui_window_gm.cpp#L285) | N/A |
| `ImGui::SetWindowSize` | ✅ | [imgui_window_gm.cpp](https://github.com/nommiin/ImGui_GM/blob/main/dll/gm/imgui_window_gm.cpp#L302) | N/A |
| `ImGui::SetWindowCollapsed` | ✅ | [imgui_window_gm.cpp](https://github.com/nommiin/ImGui_GM/blob/main/dll/gm/imgui_window_gm.cpp#L319) | N/A |
| `ImGui::SetWindowFocus` | ✅ | [imgui_window_gm.cpp](https://github.com/nommiin/ImGui_GM/blob/main/dll/gm/imgui_window_gm.cpp#L334) | N/A |
| `ImGui::SetWindowFontScale` | ✅ | [imgui_window_gm.cpp](https://github.com/nommiin/ImGui_GM/blob/main/dll/gm/imgui_window_gm.cpp#L127) | N/A |
| `ImGui::GetScrollX` | ✅ | [imgui_window_gm.cpp](https://github.com/nommiin/ImGui_GM/blob/main/dll/gm/imgui_window_gm.cpp#L216) | N/A |
| `ImGui::GetScrollY` | ✅ | [imgui_window_gm.cpp](https://github.com/nommiin/ImGui_GM/blob/main/dll/gm/imgui_window_gm.cpp#L221) | N/A |
| `ImGui::SetScrollX` | ✅ | [imgui_window_gm.cpp](https://github.com/nommiin/ImGui_GM/blob/main/dll/gm/imgui_window_gm.cpp#L226) | N/A |
| `ImGui::SetScrollY` | ✅ | [imgui_window_gm.cpp](https://github.com/nommiin/ImGui_GM/blob/main/dll/gm/imgui_window_gm.cpp#L233) | N/A |
| `ImGui::GetScrollMaxX` | ✅ | [imgui_window_gm.cpp](https://github.com/nommiin/ImGui_GM/blob/main/dll/gm/imgui_window_gm.cpp#L240) | N/A |
| `ImGui::GetScrollMaxY` | ✅ | [imgui_window_gm.cpp](https://github.com/nommiin/ImGui_GM/blob/main/dll/gm/imgui_window_gm.cpp#L245) | N/A |
| `ImGui::SetScrollHereX` | ✅ | [imgui_window_gm.cpp](https://github.com/nommiin/ImGui_GM/blob/main/dll/gm/imgui_window_gm.cpp#L250) | N/A |
| `ImGui::SetScrollHereY` | ✅ | [imgui_window_gm.cpp](https://github.com/nommiin/ImGui_GM/blob/main/dll/gm/imgui_window_gm.cpp#L258) | N/A |
| `ImGui::SetScrollFromPosX` | ✅ | [imgui_window_gm.cpp](https://github.com/nommiin/ImGui_GM/blob/main/dll/gm/imgui_window_gm.cpp#L266) | N/A |
| `ImGui::SetScrollFromPosY` | ✅ | [imgui_window_gm.cpp](https://github.com/nommiin/ImGui_GM/blob/main/dll/gm/imgui_window_gm.cpp#L275) | N/A |
| `ImGui::PushFont` | ✅ | [imgui_fonts_gm.cpp](https://github.com/nommiin/ImGui_GM/blob/main/dll/gm/imgui_fonts_gm.cpp#L8) | Fonts are currently unimplemented |
| `ImGui::PopFont` | ✅ | [imgui_fonts_gm.cpp](https://github.com/nommiin/ImGui_GM/blob/main/dll/gm/imgui_fonts_gm.cpp#L20) | Fonts are currently unimplemented |
| `ImGui::PushStyleColor` | ✅ | [imgui_style_gm.cpp](https://github.com/nommiin/ImGui_GM/blob/main/dll/gm/imgui_style_gm.cpp#L18) | N/A |
| `ImGui::PopStyleColor` | ✅ | [imgui_style_gm.cpp](https://github.com/nommiin/ImGui_GM/blob/main/dll/gm/imgui_style_gm.cpp#L27) | N/A |
| `ImGui::PushStyleVar` | ✅ | [imgui_style_gm.cpp](https://github.com/nommiin/ImGui_GM/blob/main/dll/gm/imgui_style_gm.cpp#L35) | N/A |
| `ImGui::PushStyleVarX` | ✅ | [imgui_style_gm.cpp](https://github.com/nommiin/ImGui_GM/blob/main/dll/gm/imgui_style_gm.cpp#L49) | N/A |
| `ImGui::PushStyleVarY` | ✅ | [imgui_style_gm.cpp](https://github.com/nommiin/ImGui_GM/blob/main/dll/gm/imgui_style_gm.cpp#L60) | N/A |
| `ImGui::PopStyleVar` | ✅ | [imgui_style_gm.cpp](https://github.com/nommiin/ImGui_GM/blob/main/dll/gm/imgui_style_gm.cpp#L71) | N/A |
| `ImGui::PushItemFlag` | ✅ | [imgui_api_gm.cpp](https://github.com/nommiin/ImGui_GM/blob/main/dll/gm/imgui_api_gm.cpp#L169) | N/A |
| `ImGui::PopItemFlag` | ✅ | [imgui_api_gm.cpp](https://github.com/nommiin/ImGui_GM/blob/main/dll/gm/imgui_api_gm.cpp#L179) | N/A |
| `ImGui::PushItemWidth` | ✅ | [imgui_layout_gm.cpp](https://github.com/nommiin/ImGui_GM/blob/main/dll/gm/imgui_layout_gm.cpp#L223) | N/A |
| `ImGui::PopItemWidth` | ✅ | [imgui_layout_gm.cpp](https://github.com/nommiin/ImGui_GM/blob/main/dll/gm/imgui_layout_gm.cpp#L230) | N/A |
| `ImGui::SetNextItemWidth` | ✅ | [imgui_layout_gm.cpp](https://github.com/nommiin/ImGui_GM/blob/main/dll/gm/imgui_layout_gm.cpp#L235) | N/A |
| `ImGui::CalcItemWidth` | ✅ | [imgui_layout_gm.cpp](https://github.com/nommiin/ImGui_GM/blob/main/dll/gm/imgui_layout_gm.cpp#L242) | N/A |
| `ImGui::PushTextWrapPos` | ✅ | [imgui_layout_gm.cpp](https://github.com/nommiin/ImGui_GM/blob/main/dll/gm/imgui_layout_gm.cpp#L247) | N/A |
| `ImGui::PopTextWrapPos` | ✅ | [imgui_layout_gm.cpp](https://github.com/nommiin/ImGui_GM/blob/main/dll/gm/imgui_layout_gm.cpp#L255) | N/A |
| `ImGui::GetFont` | ✅ | [imgui_fonts_gm.cpp](https://github.com/nommiin/ImGui_GM/blob/main/dll/gm/imgui_fonts_gm.cpp#L3) | N/A |
| `ImGui::GetFontSize` | ✅ | [imgui_fonts_gm.cpp](https://github.com/nommiin/ImGui_GM/blob/main/dll/gm/imgui_fonts_gm.cpp#L53) | N/A |
| `ImGui::GetFontTexUvWhitePixel` | ❌ | N/A | N/A |
| `ImGui::GetColorU32` | ✅ | N/A | Use `GetStyleColor` |
| `ImGui::GetStyleColorVec4` | ✅ | N/A | Use `ImGui.GetStyleColor` |
| `ImGui::GetCursorScreenPos` | ✅ | N/A | Use X/Y wrappers. ImVec2 returns are unsupported |
| `ImGui::SetCursorScreenPos` | ✅ | [imgui_layout_gm.cpp](https://github.com/nommiin/ImGui_GM/blob/main/dll/gm/imgui_layout_gm.cpp#L117) | N/A |
| `ImGui::GetContentRegionAvail` | ✅ | N/A | Use X/Y wrappers. ImVec2 returns are unsupported |
| `ImGui::GetCursorPos` | ✅ | N/A | Use X/Y wrappers. ImVec2 returns are unsupported |
| `ImGui::GetCursorPosX` | ✅ | [imgui_layout_gm.cpp](https://github.com/nommiin/ImGui_GM/blob/main/dll/gm/imgui_layout_gm.cpp#L79) | N/A |
| `ImGui::GetCursorPosY` | ✅ | [imgui_layout_gm.cpp](https://github.com/nommiin/ImGui_GM/blob/main/dll/gm/imgui_layout_gm.cpp#L84) | N/A |
| `ImGui::SetCursorPos` | ✅ | [imgui_layout_gm.cpp](https://github.com/nommiin/ImGui_GM/blob/main/dll/gm/imgui_layout_gm.cpp#L125) | N/A |
| `ImGui::SetCursorPosX` | ✅ | [imgui_layout_gm.cpp](https://github.com/nommiin/ImGui_GM/blob/main/dll/gm/imgui_layout_gm.cpp#L133) | N/A |
| `ImGui::SetCursorPosY` | ✅ | [imgui_layout_gm.cpp](https://github.com/nommiin/ImGui_GM/blob/main/dll/gm/imgui_layout_gm.cpp#L140) | N/A |
| `ImGui::GetCursorStartPos` | ✅ | N/A | Use X/Y wrappers. ImVec2 returns are unsupported |
| `ImGui::Separator` | ✅ | [imgui_layout_gm.cpp](https://github.com/nommiin/ImGui_GM/blob/main/dll/gm/imgui_layout_gm.cpp#L30) | N/A |
| `ImGui::SameLine` | ✅ | [imgui_layout_gm.cpp](https://github.com/nommiin/ImGui_GM/blob/main/dll/gm/imgui_layout_gm.cpp#L59) | N/A |
| `ImGui::NewLine` | ✅ | [imgui_layout_gm.cpp](https://github.com/nommiin/ImGui_GM/blob/main/dll/gm/imgui_layout_gm.cpp#L20) | N/A |
| `ImGui::Spacing` | ✅ | [imgui_layout_gm.cpp](https://github.com/nommiin/ImGui_GM/blob/main/dll/gm/imgui_layout_gm.cpp#L7) | N/A |
| `ImGui::Dummy` | ✅ | [imgui_layout_gm.cpp](https://github.com/nommiin/ImGui_GM/blob/main/dll/gm/imgui_layout_gm.cpp#L12) | N/A |
| `ImGui::Indent` | ✅ | [imgui_layout_gm.cpp](https://github.com/nommiin/ImGui_GM/blob/main/dll/gm/imgui_layout_gm.cpp#L43) | N/A |
| `ImGui::Unindent` | ✅ | [imgui_layout_gm.cpp](https://github.com/nommiin/ImGui_GM/blob/main/dll/gm/imgui_layout_gm.cpp#L51) | N/A |
| `ImGui::BeginGroup` | ✅ | [imgui_layout_gm.cpp](https://github.com/nommiin/ImGui_GM/blob/main/dll/gm/imgui_layout_gm.cpp#L69) | N/A |
| `ImGui::EndGroup` | ✅ | [imgui_layout_gm.cpp](https://github.com/nommiin/ImGui_GM/blob/main/dll/gm/imgui_layout_gm.cpp#L74) | N/A |
| `ImGui::AlignTextToFramePadding` | ✅ | [imgui_layout_gm.cpp](https://github.com/nommiin/ImGui_GM/blob/main/dll/gm/imgui_layout_gm.cpp#L25) | N/A |
| `ImGui::GetTextLineHeight` | ✅ | [imgui_layout_gm.cpp](https://github.com/nommiin/ImGui_GM/blob/main/dll/gm/imgui_layout_gm.cpp#L147) | N/A |
| `ImGui::GetTextLineHeightWithSpacing` | ✅ | [imgui_layout_gm.cpp](https://github.com/nommiin/ImGui_GM/blob/main/dll/gm/imgui_layout_gm.cpp#L152) | N/A |
| `ImGui::GetFrameHeight` | ✅ | [imgui_layout_gm.cpp](https://github.com/nommiin/ImGui_GM/blob/main/dll/gm/imgui_layout_gm.cpp#L157) | N/A |
| `ImGui::GetFrameHeightWithSpacing` | ✅ | [imgui_layout_gm.cpp](https://github.com/nommiin/ImGui_GM/blob/main/dll/gm/imgui_layout_gm.cpp#L162) | N/A |
| `ImGui::PushID` | ✅ | [imgui_api_gm.cpp](https://github.com/nommiin/ImGui_GM/blob/main/dll/gm/imgui_api_gm.cpp#L145) | N/A |
| `ImGui::PopID` | ✅ | [imgui_api_gm.cpp](https://github.com/nommiin/ImGui_GM/blob/main/dll/gm/imgui_api_gm.cpp#L157) | N/A |
| `ImGui::GetID` | ✅ | [imgui_api_gm.cpp](https://github.com/nommiin/ImGui_GM/blob/main/dll/gm/imgui_api_gm.cpp#L162) | N/A |
| `ImGui::TextUnformatted` | ✅ | [imgui_text_gm.cpp](https://github.com/nommiin/ImGui_GM/blob/main/dll/gm/imgui_text_gm.cpp#L3) | N/A |
| `ImGui::Text` | ✅ | [imgui_text_gm.cpp](https://github.com/nommiin/ImGui_GM/blob/main/dll/gm/imgui_text_gm.cpp#L10) | N/A |
| `ImGui::TextV` | ❌ | N/A | Unsupported, use `string` function in GameMaker for string formatting |
| `ImGui::TextColored` | ✅ | [imgui_text_gm.cpp](https://github.com/nommiin/ImGui_GM/blob/main/dll/gm/imgui_text_gm.cpp#L17) | N/A |
| `ImGui::TextColoredV` | ❌ | N/A | Unsupported, use `string` function in GameMaker for string formatting |
| `ImGui::TextDisabled` | ✅ | [imgui_text_gm.cpp](https://github.com/nommiin/ImGui_GM/blob/main/dll/gm/imgui_text_gm.cpp#L27) | N/A |
| `ImGui::TextDisabledV` | ❌ | N/A | Unsupported, use `string` function in GameMaker for string formatting |
| `ImGui::TextWrapped` | ✅ | [imgui_text_gm.cpp](https://github.com/nommiin/ImGui_GM/blob/main/dll/gm/imgui_text_gm.cpp#L34) | N/A |
| `ImGui::TextWrappedV` | ❌ | N/A | Unsupported, use `string` function in GameMaker for string formatting |
| `ImGui::LabelText` | ✅ | [imgui_text_gm.cpp](https://github.com/nommiin/ImGui_GM/blob/main/dll/gm/imgui_text_gm.cpp#L41) | N/A |
| `ImGui::LabelTextV` | ❌ | N/A | Unsupported, use `string` function in GameMaker for string formatting |
| `ImGui::BulletText` | ✅ | [imgui_text_gm.cpp](https://github.com/nommiin/ImGui_GM/blob/main/dll/gm/imgui_text_gm.cpp#L49) | N/A |
| `ImGui::BulletTextV` | ❌ | N/A | Unsupported, use `string` function in GameMaker for string formatting |
| `ImGui::SeparatorText` | ✅ | [imgui_layout_gm.cpp](https://github.com/nommiin/ImGui_GM/blob/main/dll/gm/imgui_layout_gm.cpp#L35) | N/A |
| `ImGui::Button` | ✅ | [imgui_widgets_gm.cpp](https://github.com/nommiin/ImGui_GM/blob/main/dll/gm/imgui_widgets_gm.cpp#L7) | N/A |
| `ImGui::SmallButton` | ✅ | [imgui_widgets_gm.cpp](https://github.com/nommiin/ImGui_GM/blob/main/dll/gm/imgui_widgets_gm.cpp#L18) | N/A |
| `ImGui::InvisibleButton` | ✅ | [imgui_widgets_gm.cpp](https://github.com/nommiin/ImGui_GM/blob/main/dll/gm/imgui_widgets_gm.cpp#L25) | N/A |
| `ImGui::ArrowButton` | ✅ | [imgui_widgets_gm.cpp](https://github.com/nommiin/ImGui_GM/blob/main/dll/gm/imgui_widgets_gm.cpp#L38) | N/A |
| `ImGui::Checkbox` | ✅ | [imgui_widgets_gm.cpp](https://github.com/nommiin/ImGui_GM/blob/main/dll/gm/imgui_widgets_gm.cpp#L110) | N/A |
| `ImGui::CheckboxFlags` | ✅ | [imgui_widgets_gm.cpp](https://github.com/nommiin/ImGui_GM/blob/main/dll/gm/imgui_widgets_gm.cpp#L119) | N/A |
| `ImGui::RadioButton` | ✅ | [imgui_widgets_gm.cpp](https://github.com/nommiin/ImGui_GM/blob/main/dll/gm/imgui_widgets_gm.cpp#L129) | N/A |
| `ImGui::ProgressBar` | ✅ | [imgui_widgets_gm.cpp](https://github.com/nommiin/ImGui_GM/blob/main/dll/gm/imgui_widgets_gm.cpp#L137) | N/A |
| `ImGui::Bullet` | ✅ | [imgui_widgets_gm.cpp](https://github.com/nommiin/ImGui_GM/blob/main/dll/gm/imgui_widgets_gm.cpp#L150) | N/A |
| `ImGui::TextLink` | ✅ | [imgui_widgets_gm.cpp](https://github.com/nommiin/ImGui_GM/blob/main/dll/gm/imgui_widgets_gm.cpp#L155) | N/A |
| `ImGui::TextLinkOpenURL` | ✅ | [imgui_widgets_gm.cpp](https://github.com/nommiin/ImGui_GM/blob/main/dll/gm/imgui_widgets_gm.cpp#L163) | N/A |
| `ImGui::Image` | ✅ | [imgui_widgets_gm.cpp](https://github.com/nommiin/ImGui_GM/blob/main/dll/gm/imgui_widgets_gm.cpp#L46) | N/A |
| `ImGui::ImageButton` | ✅ | [imgui_widgets_gm.cpp](https://github.com/nommiin/ImGui_GM/blob/main/dll/gm/imgui_widgets_gm.cpp#L67) | N/A |
| `ImGui::BeginCombo` | ✅ | [imgui_combo_gm.cpp](https://github.com/nommiin/ImGui_GM/blob/main/dll/gm/imgui_combo_gm.cpp#L3) | N/A |
| `ImGui::EndCombo` | ✅ | [imgui_combo_gm.cpp](https://github.com/nommiin/ImGui_GM/blob/main/dll/gm/imgui_combo_gm.cpp#L12) | N/A |
| `ImGui::Combo` | ✅ | [imgui_combo_gm.cpp](https://github.com/nommiin/ImGui_GM/blob/main/dll/gm/imgui_combo_gm.cpp#L17) | N/A |
| `ImGui::DragFloat` | ✅ | [imgui_drag_gm.cpp](https://github.com/nommiin/ImGui_GM/blob/main/dll/gm/imgui_drag_gm.cpp#L3) | N/A |
| `ImGui::DragFloat2` | ✅ | [imgui_drag_gm.cpp](https://github.com/nommiin/ImGui_GM/blob/main/dll/gm/imgui_drag_gm.cpp#L22) | N/A |
| `ImGui::DragFloat3` | ✅ | [imgui_drag_gm.cpp](https://github.com/nommiin/ImGui_GM/blob/main/dll/gm/imgui_drag_gm.cpp#L46) | N/A |
| `ImGui::DragFloat4` | ✅ | [imgui_drag_gm.cpp](https://github.com/nommiin/ImGui_GM/blob/main/dll/gm/imgui_drag_gm.cpp#L70) | N/A |
| `ImGui::DragFloatRange2` | ✅ | [imgui_drag_gm.cpp](https://github.com/nommiin/ImGui_GM/blob/main/dll/gm/imgui_drag_gm.cpp#L121) | N/A |
| `ImGui::DragInt` | ✅ | [imgui_drag_gm.cpp](https://github.com/nommiin/ImGui_GM/blob/main/dll/gm/imgui_drag_gm.cpp#L146) | N/A |
| `ImGui::DragInt2` | ✅ | [imgui_drag_gm.cpp](https://github.com/nommiin/ImGui_GM/blob/main/dll/gm/imgui_drag_gm.cpp#L165) | N/A |
| `ImGui::DragInt3` | ✅ | [imgui_drag_gm.cpp](https://github.com/nommiin/ImGui_GM/blob/main/dll/gm/imgui_drag_gm.cpp#L189) | N/A |
| `ImGui::DragInt4` | ✅ | [imgui_drag_gm.cpp](https://github.com/nommiin/ImGui_GM/blob/main/dll/gm/imgui_drag_gm.cpp#L213) | N/A |
| `ImGui::DragIntRange2` | ✅ | [imgui_drag_gm.cpp](https://github.com/nommiin/ImGui_GM/blob/main/dll/gm/imgui_drag_gm.cpp#L264) | N/A |
| `ImGui::DragScalar` | ❌ | N/A | N/A |
| `ImGui::DragScalarN` | ❌ | N/A | N/A |
| `ImGui::SliderFloat` | ✅ | [imgui_slider_gm.cpp](https://github.com/nommiin/ImGui_GM/blob/main/dll/gm/imgui_slider_gm.cpp#L3) | N/A |
| `ImGui::SliderFloat2` | ✅ | [imgui_slider_gm.cpp](https://github.com/nommiin/ImGui_GM/blob/main/dll/gm/imgui_slider_gm.cpp#L20) | N/A |
| `ImGui::SliderFloat3` | ✅ | [imgui_slider_gm.cpp](https://github.com/nommiin/ImGui_GM/blob/main/dll/gm/imgui_slider_gm.cpp#L42) | N/A |
| `ImGui::SliderFloat4` | ✅ | [imgui_slider_gm.cpp](https://github.com/nommiin/ImGui_GM/blob/main/dll/gm/imgui_slider_gm.cpp#L64) | N/A |
| `ImGui::SliderAngle` | ✅ | [imgui_slider_gm.cpp](https://github.com/nommiin/ImGui_GM/blob/main/dll/gm/imgui_slider_gm.cpp#L259) | N/A |
| `ImGui::SliderInt` | ✅ | [imgui_slider_gm.cpp](https://github.com/nommiin/ImGui_GM/blob/main/dll/gm/imgui_slider_gm.cpp#L113) | N/A |
| `ImGui::SliderInt2` | ✅ | [imgui_slider_gm.cpp](https://github.com/nommiin/ImGui_GM/blob/main/dll/gm/imgui_slider_gm.cpp#L130) | N/A |
| `ImGui::SliderInt3` | ✅ | [imgui_slider_gm.cpp](https://github.com/nommiin/ImGui_GM/blob/main/dll/gm/imgui_slider_gm.cpp#L152) | N/A |
| `ImGui::SliderInt4` | ✅ | [imgui_slider_gm.cpp](https://github.com/nommiin/ImGui_GM/blob/main/dll/gm/imgui_slider_gm.cpp#L174) | N/A |
| `ImGui::SliderScalar` | ❌ | N/A | N/A |
| `ImGui::SliderScalarN` | ❌ | N/A | N/A |
| `ImGui::VSliderFloat` | ✅ | [imgui_slider_gm.cpp](https://github.com/nommiin/ImGui_GM/blob/main/dll/gm/imgui_slider_gm.cpp#L221) | N/A |
| `ImGui::VSliderInt` | ✅ | [imgui_slider_gm.cpp](https://github.com/nommiin/ImGui_GM/blob/main/dll/gm/imgui_slider_gm.cpp#L240) | N/A |
| `ImGui::VSliderScalar` | ❌ | N/A | N/A |
| `ImGui::InputText` | ✅ | [imgui_input_widgets_gm.cpp](https://github.com/nommiin/ImGui_GM/blob/main/dll/gm/imgui_input_widgets_gm.cpp#L4) | N/A |
| `ImGui::InputTextMultiline` | ✅ | [imgui_input_widgets_gm.cpp](https://github.com/nommiin/ImGui_GM/blob/main/dll/gm/imgui_input_widgets_gm.cpp#L17) | N/A |
| `ImGui::InputTextWithHint` | ✅ | [imgui_input_widgets_gm.cpp](https://github.com/nommiin/ImGui_GM/blob/main/dll/gm/imgui_input_widgets_gm.cpp#L34) | N/A |
| `ImGui::InputFloat` | ✅ | [imgui_input_widgets_gm.cpp](https://github.com/nommiin/ImGui_GM/blob/main/dll/gm/imgui_input_widgets_gm.cpp#L48) | N/A |
| `ImGui::InputFloat2` | ✅ | [imgui_input_widgets_gm.cpp](https://github.com/nommiin/ImGui_GM/blob/main/dll/gm/imgui_input_widgets_gm.cpp#L65) | N/A |
| `ImGui::InputFloat3` | ✅ | [imgui_input_widgets_gm.cpp](https://github.com/nommiin/ImGui_GM/blob/main/dll/gm/imgui_input_widgets_gm.cpp#L87) | N/A |
| `ImGui::InputFloat4` | ✅ | [imgui_input_widgets_gm.cpp](https://github.com/nommiin/ImGui_GM/blob/main/dll/gm/imgui_input_widgets_gm.cpp#L109) | N/A |
| `ImGui::InputInt` | ✅ | [imgui_input_widgets_gm.cpp](https://github.com/nommiin/ImGui_GM/blob/main/dll/gm/imgui_input_widgets_gm.cpp#L156) | N/A |
| `ImGui::InputInt2` | ✅ | [imgui_input_widgets_gm.cpp](https://github.com/nommiin/ImGui_GM/blob/main/dll/gm/imgui_input_widgets_gm.cpp#L171) | N/A |
| `ImGui::InputInt3` | ✅ | [imgui_input_widgets_gm.cpp](https://github.com/nommiin/ImGui_GM/blob/main/dll/gm/imgui_input_widgets_gm.cpp#L187) | N/A |
| `ImGui::InputInt4` | ✅ | [imgui_input_widgets_gm.cpp](https://github.com/nommiin/ImGui_GM/blob/main/dll/gm/imgui_input_widgets_gm.cpp#L203) | N/A |
| `ImGui::InputDouble` | ✅ | [imgui_input_widgets_gm.cpp](https://github.com/nommiin/ImGui_GM/blob/main/dll/gm/imgui_input_widgets_gm.cpp#L238) | N/A |
| `ImGui::InputScalar` | ❌ | N/A | N/A |
| `ImGui::InputScalarN` | ❌ | N/A | N/A |
| `ImGui::ColorEdit3` | ✅ | [imgui_color_gm.cpp](https://github.com/nommiin/ImGui_GM/blob/main/dll/gm/imgui_color_gm.cpp#L6) | N/A |
| `ImGui::ColorEdit4` | ✅ | [imgui_color_gm.cpp](https://github.com/nommiin/ImGui_GM/blob/main/dll/gm/imgui_color_gm.cpp#L30) | N/A |
| `ImGui::ColorPicker3` | ✅ | [imgui_color_gm.cpp](https://github.com/nommiin/ImGui_GM/blob/main/dll/gm/imgui_color_gm.cpp#L18) | N/A |
| `ImGui::ColorPicker4` | ✅ | [imgui_color_gm.cpp](https://github.com/nommiin/ImGui_GM/blob/main/dll/gm/imgui_color_gm.cpp#L60) | N/A |
| `ImGui::ColorButton` | ✅ | [imgui_color_gm.cpp](https://github.com/nommiin/ImGui_GM/blob/main/dll/gm/imgui_color_gm.cpp#L90) | N/A |
| `ImGui::SetColorEditOptions` | ✅ | [imgui_color_gm.cpp](https://github.com/nommiin/ImGui_GM/blob/main/dll/gm/imgui_color_gm.cpp#L106) | N/A |
| `ImGui::TreeNode` | ✅ | [imgui_tree_gm.cpp](https://github.com/nommiin/ImGui_GM/blob/main/dll/gm/imgui_tree_gm.cpp#L3) | N/A |
| `ImGui::TreeNodeV` | ❌ | N/A | Unsupported, use `string` function in GameMaker for string formatting |
| `ImGui::TreeNodeEx` | ✅ | [imgui_tree_gm.cpp](https://github.com/nommiin/ImGui_GM/blob/main/dll/gm/imgui_tree_gm.cpp#L10) | N/A |
| `ImGui::TreeNodeExV` | ❌ | N/A | Unsupported, use `string` function in GameMaker for string formatting |
| `ImGui::TreePush` | ✅ | [imgui_tree_gm.cpp](https://github.com/nommiin/ImGui_GM/blob/main/dll/gm/imgui_tree_gm.cpp#L19) | N/A |
| `ImGui::TreePop` | ✅ | [imgui_tree_gm.cpp](https://github.com/nommiin/ImGui_GM/blob/main/dll/gm/imgui_tree_gm.cpp#L26) | N/A |
| `ImGui::GetTreeNodeToLabelSpacing` | ✅ | [imgui_tree_gm.cpp](https://github.com/nommiin/ImGui_GM/blob/main/dll/gm/imgui_tree_gm.cpp#L31) | N/A |
| `ImGui::CollapsingHeader` | ✅ | [imgui_tree_gm.cpp](https://github.com/nommiin/ImGui_GM/blob/main/dll/gm/imgui_tree_gm.cpp#L45) | See [ImGuiReturnMask Usage](https://github.com/nommiin/ImGui_GM/wiki/ImGuiReturnMask-Usage) for more info the `mask` argument |
| `ImGui::SetNextItemOpen` | ✅ | [imgui_tree_gm.cpp](https://github.com/nommiin/ImGui_GM/blob/main/dll/gm/imgui_tree_gm.cpp#L36) | N/A |
| `ImGui::SetNextItemStorageID` | ❌ | N/A | N/A |
| `ImGui::Selectable` | ✅ | [imgui_selectable_gm.cpp](https://github.com/nommiin/ImGui_GM/blob/main/dll/gm/imgui_selectable_gm.cpp#L4) | N/A |
| `ImGui::BeginMultiSelect` | ✅ | [imgui_selectable_gm.cpp](https://github.com/nommiin/ImGui_GM/blob/main/dll/gm/imgui_selectable_gm.cpp#L45) | N/A |
| `ImGui::EndMultiSelect` | ✅ | [imgui_selectable_gm.cpp](https://github.com/nommiin/ImGui_GM/blob/main/dll/gm/imgui_selectable_gm.cpp#L77) | N/A |
| `ImGui::SetNextItemSelectionUserData` | ✅ | [imgui_selectable_gm.cpp](https://github.com/nommiin/ImGui_GM/blob/main/dll/gm/imgui_selectable_gm.cpp#L85) | N/A |
| `ImGui::IsItemToggledSelection` | ✅ | [imgui_selectable_gm.cpp](https://github.com/nommiin/ImGui_GM/blob/main/dll/gm/imgui_selectable_gm.cpp#L19) | N/A |
| `ImGui::BeginListBox` | ✅ | [imgui_listbox_gm.cpp](https://github.com/nommiin/ImGui_GM/blob/main/dll/gm/imgui_listbox_gm.cpp#L3) | N/A |
| `ImGui::EndListBox` | ✅ | [imgui_listbox_gm.cpp](https://github.com/nommiin/ImGui_GM/blob/main/dll/gm/imgui_listbox_gm.cpp#L14) | N/A |
| `ImGui::ListBox` | ✅ | [imgui_listbox_gm.cpp](https://github.com/nommiin/ImGui_GM/blob/main/dll/gm/imgui_listbox_gm.cpp#L19) | N/A |
| `ImGui::PlotLines` | ✅ | [imgui_plots_gm.cpp](https://github.com/nommiin/ImGui_GM/blob/main/dll/gm/imgui_plots_gm.cpp#L3) | N/A |
| `ImGui::PlotHistogram` | ✅ | [imgui_plots_gm.cpp](https://github.com/nommiin/ImGui_GM/blob/main/dll/gm/imgui_plots_gm.cpp#L27) | N/A |
| `ImGui::Value` | ✅ | [imgui_text_gm.cpp](https://github.com/nommiin/ImGui_GM/blob/main/dll/gm/imgui_text_gm.cpp#L56) | N/A |
| `ImGui::BeginMenuBar` | ✅ | [imgui_menu_gm.cpp](https://github.com/nommiin/ImGui_GM/blob/main/dll/gm/imgui_menu_gm.cpp#L3) | N/A |
| `ImGui::EndMenuBar` | ✅ | [imgui_menu_gm.cpp](https://github.com/nommiin/ImGui_GM/blob/main/dll/gm/imgui_menu_gm.cpp#L8) | N/A |
| `ImGui::BeginMainMenuBar` | ✅ | [imgui_menu_gm.cpp](https://github.com/nommiin/ImGui_GM/blob/main/dll/gm/imgui_menu_gm.cpp#L13) | N/A |
| `ImGui::EndMainMenuBar` | ✅ | [imgui_menu_gm.cpp](https://github.com/nommiin/ImGui_GM/blob/main/dll/gm/imgui_menu_gm.cpp#L18) | N/A |
| `ImGui::BeginMenu` | ✅ | [imgui_menu_gm.cpp](https://github.com/nommiin/ImGui_GM/blob/main/dll/gm/imgui_menu_gm.cpp#L23) | N/A |
| `ImGui::EndMenu` | ✅ | [imgui_menu_gm.cpp](https://github.com/nommiin/ImGui_GM/blob/main/dll/gm/imgui_menu_gm.cpp#L32) | N/A |
| `ImGui::MenuItem` | ✅ | [imgui_menu_gm.cpp](https://github.com/nommiin/ImGui_GM/blob/main/dll/gm/imgui_menu_gm.cpp#L37) | See [ImGuiReturnMask Usage](https://github.com/nommiin/ImGui_GM/wiki/ImGuiReturnMask-Usage) for more info the `mask` argument |
| `ImGui::BeginTooltip` | ✅ | [imgui_tooltips_gm.cpp](https://github.com/nommiin/ImGui_GM/blob/main/dll/gm/imgui_tooltips_gm.cpp#L3) | N/A |
| `ImGui::EndTooltip` | ✅ | [imgui_tooltips_gm.cpp](https://github.com/nommiin/ImGui_GM/blob/main/dll/gm/imgui_tooltips_gm.cpp#L8) | N/A |
| `ImGui::SetTooltip` | ✅ | [imgui_tooltips_gm.cpp](https://github.com/nommiin/ImGui_GM/blob/main/dll/gm/imgui_tooltips_gm.cpp#L13) | N/A |
| `ImGui::SetTooltipV` | ❌ | N/A | Unsupported, use `string` function in GameMaker for string formatting |
| `ImGui::BeginItemTooltip` | ✅ | [imgui_api_gm.cpp](https://github.com/nommiin/ImGui_GM/blob/main/dll/gm/imgui_api_gm.cpp#L321) | N/A |
| `ImGui::SetItemTooltip` | ✅ | [imgui_api_gm.cpp](https://github.com/nommiin/ImGui_GM/blob/main/dll/gm/imgui_api_gm.cpp#L326) | N/A |
| `ImGui::SetItemTooltipV` | ❌ | N/A | Unsupported, use `string` function in GameMaker for string formatting |
| `ImGui::BeginPopup` | ✅ | [imgui_popup_gm.cpp](https://github.com/nommiin/ImGui_GM/blob/main/dll/gm/imgui_popup_gm.cpp#L3) | N/A |
| `ImGui::BeginPopupModal` | ✅ | [imgui_popup_gm.cpp](https://github.com/nommiin/ImGui_GM/blob/main/dll/gm/imgui_popup_gm.cpp#L12) | See [ImGuiReturnMask Usage](https://github.com/nommiin/ImGui_GM/wiki/ImGuiReturnMask-Usage) for more info the `mask` argument |
| `ImGui::EndPopup` | ✅ | [imgui_popup_gm.cpp](https://github.com/nommiin/ImGui_GM/blob/main/dll/gm/imgui_popup_gm.cpp#L33) | N/A |
| `ImGui::OpenPopup` | ✅ | [imgui_popup_gm.cpp](https://github.com/nommiin/ImGui_GM/blob/main/dll/gm/imgui_popup_gm.cpp#L38) | N/A |
| `ImGui::OpenPopupOnItemClick` | ✅ | [imgui_popup_gm.cpp](https://github.com/nommiin/ImGui_GM/blob/main/dll/gm/imgui_popup_gm.cpp#L47) | N/A |
| `ImGui::CloseCurrentPopup` | ✅ | [imgui_popup_gm.cpp](https://github.com/nommiin/ImGui_GM/blob/main/dll/gm/imgui_popup_gm.cpp#L61) | N/A |
| `ImGui::BeginPopupContextItem` | ✅ | [imgui_popup_gm.cpp](https://github.com/nommiin/ImGui_GM/blob/main/dll/gm/imgui_popup_gm.cpp#L66) | N/A |
| `ImGui::BeginPopupContextWindow` | ✅ | [imgui_popup_gm.cpp](https://github.com/nommiin/ImGui_GM/blob/main/dll/gm/imgui_popup_gm.cpp#L80) | N/A |
| `ImGui::BeginPopupContextVoid` | ✅ | [imgui_popup_gm.cpp](https://github.com/nommiin/ImGui_GM/blob/main/dll/gm/imgui_popup_gm.cpp#L94) | N/A |
| `ImGui::IsPopupOpen` | ✅ | [imgui_popup_gm.cpp](https://github.com/nommiin/ImGui_GM/blob/main/dll/gm/imgui_popup_gm.cpp#L108) | N/A |
| `ImGui::BeginTable` | ✅ | [imgui_table_gm.cpp](https://github.com/nommiin/ImGui_GM/blob/main/dll/gm/imgui_table_gm.cpp#L3) | N/A |
| `ImGui::EndTable` | ✅ | [imgui_table_gm.cpp](https://github.com/nommiin/ImGui_GM/blob/main/dll/gm/imgui_table_gm.cpp#L19) | N/A |
| `ImGui::TableNextRow` | ✅ | [imgui_table_gm.cpp](https://github.com/nommiin/ImGui_GM/blob/main/dll/gm/imgui_table_gm.cpp#L24) | N/A |
| `ImGui::TableNextColumn` | ✅ | [imgui_table_gm.cpp](https://github.com/nommiin/ImGui_GM/blob/main/dll/gm/imgui_table_gm.cpp#L34) | N/A |
| `ImGui::TableSetColumnIndex` | ✅ | [imgui_table_gm.cpp](https://github.com/nommiin/ImGui_GM/blob/main/dll/gm/imgui_table_gm.cpp#L39) | N/A |
| `ImGui::TableSetupColumn` | ✅ | [imgui_table_gm.cpp](https://github.com/nommiin/ImGui_GM/blob/main/dll/gm/imgui_table_gm.cpp#L46) | N/A |
| `ImGui::TableSetupScrollFreeze` | ✅ | [imgui_table_gm.cpp](https://github.com/nommiin/ImGui_GM/blob/main/dll/gm/imgui_table_gm.cpp#L59) | N/A |
| `ImGui::TableHeader` | ✅ | [imgui_table_gm.cpp](https://github.com/nommiin/ImGui_GM/blob/main/dll/gm/imgui_table_gm.cpp#L77) | N/A |
| `ImGui::TableHeadersRow` | ✅ | [imgui_table_gm.cpp](https://github.com/nommiin/ImGui_GM/blob/main/dll/gm/imgui_table_gm.cpp#L67) | N/A |
| `ImGui::TableAngledHeadersRow` | ✅ | [imgui_table_gm.cpp](https://github.com/nommiin/ImGui_GM/blob/main/dll/gm/imgui_table_gm.cpp#L72) | N/A |
| `ImGui::TableGetSortSpecs` | ❌ | N/A | N/A |
| `ImGui::TableGetColumnCount` | ✅ | [imgui_table_gm.cpp](https://github.com/nommiin/ImGui_GM/blob/main/dll/gm/imgui_table_gm.cpp#L89) | N/A |
| `ImGui::TableGetColumnIndex` | ✅ | [imgui_table_gm.cpp](https://github.com/nommiin/ImGui_GM/blob/main/dll/gm/imgui_table_gm.cpp#L94) | N/A |
| `ImGui::TableGetRowIndex` | ✅ | [imgui_table_gm.cpp](https://github.com/nommiin/ImGui_GM/blob/main/dll/gm/imgui_table_gm.cpp#L116) | N/A |
| `ImGui::TableGetColumnName` | ✅ | [imgui_table_gm.cpp](https://github.com/nommiin/ImGui_GM/blob/main/dll/gm/imgui_table_gm.cpp#L99) | N/A |
| `ImGui::TableGetColumnFlags` | ✅ | [imgui_table_gm.cpp](https://github.com/nommiin/ImGui_GM/blob/main/dll/gm/imgui_table_gm.cpp#L108) | N/A |
| `ImGui::TableSetColumnEnabled` | ✅ | [imgui_table_gm.cpp](https://github.com/nommiin/ImGui_GM/blob/main/dll/gm/imgui_table_gm.cpp#L121) | N/A |
| `ImGui::TableGetHoveredColumn` | ✅ | [imgui_table_gm.cpp](https://github.com/nommiin/ImGui_GM/blob/main/dll/gm/imgui_table_gm.cpp#L84) | N/A |
| `ImGui::TableSetBgColor` | ✅ | [imgui_table_gm.cpp](https://github.com/nommiin/ImGui_GM/blob/main/dll/gm/imgui_table_gm.cpp#L129) | N/A |
| `ImGui::Columns` | ✅ | [imgui_table_gm.cpp](https://github.com/nommiin/ImGui_GM/blob/main/dll/gm/imgui_table_gm.cpp#L140) | N/A |
| `ImGui::NextColumn` | ✅ | [imgui_table_gm.cpp](https://github.com/nommiin/ImGui_GM/blob/main/dll/gm/imgui_table_gm.cpp#L152) | N/A |
| `ImGui::GetColumnIndex` | ✅ | [imgui_table_gm.cpp](https://github.com/nommiin/ImGui_GM/blob/main/dll/gm/imgui_table_gm.cpp#L157) | N/A |
| `ImGui::GetColumnWidth` | ✅ | [imgui_table_gm.cpp](https://github.com/nommiin/ImGui_GM/blob/main/dll/gm/imgui_table_gm.cpp#L162) | N/A |
| `ImGui::SetColumnWidth` | ✅ | [imgui_table_gm.cpp](https://github.com/nommiin/ImGui_GM/blob/main/dll/gm/imgui_table_gm.cpp#L170) | N/A |
| `ImGui::GetColumnOffset` | ✅ | [imgui_table_gm.cpp](https://github.com/nommiin/ImGui_GM/blob/main/dll/gm/imgui_table_gm.cpp#L178) | N/A |
| `ImGui::SetColumnOffset` | ✅ | [imgui_table_gm.cpp](https://github.com/nommiin/ImGui_GM/blob/main/dll/gm/imgui_table_gm.cpp#L186) | N/A |
| `ImGui::GetColumnsCount` | ✅ | [imgui_table_gm.cpp](https://github.com/nommiin/ImGui_GM/blob/main/dll/gm/imgui_table_gm.cpp#L194) | N/A |
| `ImGui::BeginTabBar` | ✅ | [imgui_tabs_gm.cpp](https://github.com/nommiin/ImGui_GM/blob/main/dll/gm/imgui_tabs_gm.cpp#L3) | N/A |
| `ImGui::EndTabBar` | ✅ | [imgui_tabs_gm.cpp](https://github.com/nommiin/ImGui_GM/blob/main/dll/gm/imgui_tabs_gm.cpp#L12) | N/A |
| `ImGui::BeginTabItem` | ✅ | [imgui_tabs_gm.cpp](https://github.com/nommiin/ImGui_GM/blob/main/dll/gm/imgui_tabs_gm.cpp#L17) | See [ImGuiReturnMask Usage](https://github.com/nommiin/ImGui_GM/wiki/ImGuiReturnMask-Usage) for more info the `mask` argument |
| `ImGui::EndTabItem` | ✅ | [imgui_tabs_gm.cpp](https://github.com/nommiin/ImGui_GM/blob/main/dll/gm/imgui_tabs_gm.cpp#L38) | N/A |
| `ImGui::TabItemButton` | ✅ | [imgui_tabs_gm.cpp](https://github.com/nommiin/ImGui_GM/blob/main/dll/gm/imgui_tabs_gm.cpp#L43) | N/A |
| `ImGui::SetTabItemClosed` | ✅ | [imgui_tabs_gm.cpp](https://github.com/nommiin/ImGui_GM/blob/main/dll/gm/imgui_tabs_gm.cpp#L52) | N/A |
| `ImGui::DockSpace` | ✅ | [imgui_docking_gm.cpp](https://github.com/nommiin/ImGui_GM/blob/main/dll/gm/imgui_docking_gm.cpp#L6) | N/A |
| `ImGui::DockSpaceOverViewport` | ✅ | [imgui_docking_gm.cpp](https://github.com/nommiin/ImGui_GM/blob/main/dll/gm/imgui_docking_gm.cpp#L44) | N/A |
| `ImGui::SetNextWindowDockID` | ✅ | [imgui_docking_gm.cpp](https://github.com/nommiin/ImGui_GM/blob/main/dll/gm/imgui_docking_gm.cpp#L73) | N/A |
| `ImGui::SetNextWindowClass` | ✅ | [imgui_docking_gm.cpp](https://github.com/nommiin/ImGui_GM/blob/main/dll/gm/imgui_docking_gm.cpp#L83) | N/A |
| `ImGui::GetWindowDockID` | ✅ | [imgui_docking_gm.cpp](https://github.com/nommiin/ImGui_GM/blob/main/dll/gm/imgui_docking_gm.cpp#L97) | N/A |
| `ImGui::IsWindowDocked` | ✅ | [imgui_docking_gm.cpp](https://github.com/nommiin/ImGui_GM/blob/main/dll/gm/imgui_docking_gm.cpp#L102) | N/A |
| `ImGui::LogToTTY` | ✅ | [imgui_api_gm.cpp](https://github.com/nommiin/ImGui_GM/blob/main/dll/gm/imgui_api_gm.cpp#L549) | N/A |
| `ImGui::LogToFile` | ✅ | [imgui_api_gm.cpp](https://github.com/nommiin/ImGui_GM/blob/main/dll/gm/imgui_api_gm.cpp#L568) | N/A |
| `ImGui::LogToClipboard` | ✅ | [imgui_api_gm.cpp](https://github.com/nommiin/ImGui_GM/blob/main/dll/gm/imgui_api_gm.cpp#L541) | N/A |
| `ImGui::LogFinish` | ✅ | [imgui_api_gm.cpp](https://github.com/nommiin/ImGui_GM/blob/main/dll/gm/imgui_api_gm.cpp#L558) | N/A |
| `ImGui::LogButtons` | ✅ | [imgui_api_gm.cpp](https://github.com/nommiin/ImGui_GM/blob/main/dll/gm/imgui_api_gm.cpp#L563) | N/A |
| `ImGui::LogText` | ✅ | [imgui_api_gm.cpp](https://github.com/nommiin/ImGui_GM/blob/main/dll/gm/imgui_api_gm.cpp#L534) | N/A |
| `ImGui::LogTextV` | ❌ | N/A | Unsupported, use `string` function in GameMaker for string formatting |
| `ImGui::BeginDragDropSource` | ✅ | [imgui_payload_gm.cpp](https://github.com/nommiin/ImGui_GM/blob/main/dll/gm/imgui_payload_gm.cpp#L3) | N/A |
| `ImGui::SetDragDropPayload` | ✅ | [imgui_payload_gm.cpp](https://github.com/nommiin/ImGui_GM/blob/main/dll/gm/imgui_payload_gm.cpp#L26) | See [Drag and Drop Payloads](https://github.com/nommiin/ImGui_GM/wiki/Drag-and-Drop-Payloads) for more info on handling payloads |
| `ImGui::EndDragDropSource` | ✅ | [imgui_payload_gm.cpp](https://github.com/nommiin/ImGui_GM/blob/main/dll/gm/imgui_payload_gm.cpp#L11) | N/A |
| `ImGui::BeginDragDropTarget` | ✅ | [imgui_payload_gm.cpp](https://github.com/nommiin/ImGui_GM/blob/main/dll/gm/imgui_payload_gm.cpp#L16) | N/A |
| `ImGui::AcceptDragDropPayload` | ✅ | [imgui_payload_gm.cpp](https://github.com/nommiin/ImGui_GM/blob/main/dll/gm/imgui_payload_gm.cpp#L59) | N/A |
| `ImGui::EndDragDropTarget` | ✅ | [imgui_payload_gm.cpp](https://github.com/nommiin/ImGui_GM/blob/main/dll/gm/imgui_payload_gm.cpp#L21) | N/A |
| `ImGui::GetDragDropPayload` | ✅ | [imgui_payload_gm.cpp](https://github.com/nommiin/ImGui_GM/blob/main/dll/gm/imgui_payload_gm.cpp#L73) | N/A |
| `ImGui::BeginDisabled` | ✅ | [imgui_api_gm.cpp](https://github.com/nommiin/ImGui_GM/blob/main/dll/gm/imgui_api_gm.cpp#L185) | N/A |
| `ImGui::EndDisabled` | ✅ | [imgui_api_gm.cpp](https://github.com/nommiin/ImGui_GM/blob/main/dll/gm/imgui_api_gm.cpp#L193) | N/A |
| `ImGui::PushClipRect` | ✅ | [imgui_layout_gm.cpp](https://github.com/nommiin/ImGui_GM/blob/main/dll/gm/imgui_layout_gm.cpp#L260) | N/A |
| `ImGui::PopClipRect` | ✅ | [imgui_layout_gm.cpp](https://github.com/nommiin/ImGui_GM/blob/main/dll/gm/imgui_layout_gm.cpp#L271) | N/A |
| `ImGui::SetItemDefaultFocus` | ✅ | [imgui_api_gm.cpp](https://github.com/nommiin/ImGui_GM/blob/main/dll/gm/imgui_api_gm.cpp#L408) | N/A |
| `ImGui::SetKeyboardFocusHere` | ✅ | [imgui_api_gm.cpp](https://github.com/nommiin/ImGui_GM/blob/main/dll/gm/imgui_api_gm.cpp#L388) | N/A |
| `ImGui::SetNextItemAllowOverlap` | ✅ | [imgui_api_gm.cpp](https://github.com/nommiin/ImGui_GM/blob/main/dll/gm/imgui_api_gm.cpp#L316) | N/A |
| `ImGui::IsItemHovered` | ✅ | [imgui_api_gm.cpp](https://github.com/nommiin/ImGui_GM/blob/main/dll/gm/imgui_api_gm.cpp#L198) | N/A |
| `ImGui::IsItemActive` | ✅ | [imgui_api_gm.cpp](https://github.com/nommiin/ImGui_GM/blob/main/dll/gm/imgui_api_gm.cpp#L206) | N/A |
| `ImGui::IsItemFocused` | ✅ | [imgui_api_gm.cpp](https://github.com/nommiin/ImGui_GM/blob/main/dll/gm/imgui_api_gm.cpp#L211) | N/A |
| `ImGui::IsItemClicked` | ✅ | [imgui_api_gm.cpp](https://github.com/nommiin/ImGui_GM/blob/main/dll/gm/imgui_api_gm.cpp#L216) | N/A |
| `ImGui::IsItemVisible` | ✅ | [imgui_api_gm.cpp](https://github.com/nommiin/ImGui_GM/blob/main/dll/gm/imgui_api_gm.cpp#L224) | N/A |
| `ImGui::IsItemEdited` | ✅ | [imgui_api_gm.cpp](https://github.com/nommiin/ImGui_GM/blob/main/dll/gm/imgui_api_gm.cpp#L229) | N/A |
| `ImGui::IsItemActivated` | ✅ | [imgui_api_gm.cpp](https://github.com/nommiin/ImGui_GM/blob/main/dll/gm/imgui_api_gm.cpp#L234) | N/A |
| `ImGui::IsItemDeactivated` | ✅ | [imgui_api_gm.cpp](https://github.com/nommiin/ImGui_GM/blob/main/dll/gm/imgui_api_gm.cpp#L239) | N/A |
| `ImGui::IsItemDeactivatedAfterEdit` | ✅ | [imgui_api_gm.cpp](https://github.com/nommiin/ImGui_GM/blob/main/dll/gm/imgui_api_gm.cpp#L244) | N/A |
| `ImGui::IsItemToggledOpen` | ✅ | [imgui_api_gm.cpp](https://github.com/nommiin/ImGui_GM/blob/main/dll/gm/imgui_api_gm.cpp#L249) | N/A |
| `ImGui::IsAnyItemHovered` | ✅ | [imgui_api_gm.cpp](https://github.com/nommiin/ImGui_GM/blob/main/dll/gm/imgui_api_gm.cpp#L254) | N/A |
| `ImGui::IsAnyItemActive` | ✅ | [imgui_api_gm.cpp](https://github.com/nommiin/ImGui_GM/blob/main/dll/gm/imgui_api_gm.cpp#L259) | N/A |
| `ImGui::IsAnyItemFocused` | ✅ | [imgui_api_gm.cpp](https://github.com/nommiin/ImGui_GM/blob/main/dll/gm/imgui_api_gm.cpp#L264) | N/A |
| `ImGui::GetItemID` | ✅ | [imgui_api_gm.cpp](https://github.com/nommiin/ImGui_GM/blob/main/dll/gm/imgui_api_gm.cpp#L269) | N/A |
| `ImGui::GetItemRectMin` | ✅ | N/A | Use X/Y wrappers. ImVec2 returns are unsupported |
| `ImGui::GetItemRectMax` | ✅ | N/A | Use X/Y wrappers. ImVec2 returns are unsupported |
| `ImGui::GetItemRectSize` | ✅ | N/A | Use Width/Height wrappers. ImVec2 returns are unsupported |
| `ImGui::GetMainViewport` | ✅ | [imgui_api_gm.cpp](https://github.com/nommiin/ImGui_GM/blob/main/dll/gm/imgui_api_gm.cpp#L518) | N/A |
| `ImGui::GetBackgroundDrawList` | ✅ | [imgui_drawlist_gm.cpp](https://github.com/nommiin/ImGui_GM/blob/main/dll/gm/imgui_drawlist_gm.cpp#L4) | N/A |
| `ImGui::GetForegroundDrawList` | ✅ | [imgui_drawlist_gm.cpp](https://github.com/nommiin/ImGui_GM/blob/main/dll/gm/imgui_drawlist_gm.cpp#L18) | N/A |
| `ImGui::IsRectVisible` | ✅ | [imgui_api_gm.cpp](https://github.com/nommiin/ImGui_GM/blob/main/dll/gm/imgui_api_gm.cpp#L332) | N/A |
| `ImGui::GetTime` | ✅ | [imgui_api_gm.cpp](https://github.com/nommiin/ImGui_GM/blob/main/dll/gm/imgui_api_gm.cpp#L342) | N/A |
| `ImGui::GetFrameCount` | ✅ | [imgui_api_gm.cpp](https://github.com/nommiin/ImGui_GM/blob/main/dll/gm/imgui_api_gm.cpp#L347) | N/A |
| `ImGui::GetDrawListSharedData` | ❌ | N/A | N/A |
| `ImGui::GetStyleColorName` | ✅ | [imgui_style_gm.cpp](https://github.com/nommiin/ImGui_GM/blob/main/dll/gm/imgui_style_gm.cpp#L86) | N/A |
| `ImGui::SetStateStorage` | ❌ | N/A | N/A |
| `ImGui::GetStateStorage` | ❌ | N/A | N/A |
| `ImGui::CalcTextSize` | ✅ | N/A | Use Width/Height wrappers. ImVec2 returns are unsupported |
| `ImGui::ColorConvertU32ToFloat4` | ❌ | N/A | N/A |
| `ImGui::ColorConvertFloat4ToU32` | ❌ | N/A | N/A |
| `ImGui::ColorConvertRGBtoHSV` | ❌ | N/A | N/A |
| `ImGui::ColorConvertHSVtoRGB` | ❌ | N/A | N/A |
| `ImGui::IsKeyDown` | ✅ | [imgui_input_gm.cpp](https://github.com/nommiin/ImGui_GM/blob/main/dll/gm/imgui_input_gm.cpp#L3) | N/A |
| `ImGui::IsKeyPressed` | ✅ | [imgui_input_gm.cpp](https://github.com/nommiin/ImGui_GM/blob/main/dll/gm/imgui_input_gm.cpp#L20) | N/A |
| `ImGui::IsKeyReleased` | ✅ | [imgui_input_gm.cpp](https://github.com/nommiin/ImGui_GM/blob/main/dll/gm/imgui_input_gm.cpp#L39) | N/A |
| `ImGui::IsKeyChordPressed` | ✅ | [imgui_input_gm.cpp](https://github.com/nommiin/ImGui_GM/blob/main/dll/gm/imgui_input_gm.cpp#L58) | N/A |
| `ImGui::GetKeyPressedAmount` | ✅ | [imgui_input_gm.cpp](https://github.com/nommiin/ImGui_GM/blob/main/dll/gm/imgui_input_gm.cpp#L84) | N/A |
| `ImGui::GetKeyName` | ✅ | [imgui_input_gm.cpp](https://github.com/nommiin/ImGui_GM/blob/main/dll/gm/imgui_input_gm.cpp#L98) | N/A |
| `ImGui::SetNextFrameWantCaptureKeyboard` | ✅ | [imgui_api_gm.cpp](https://github.com/nommiin/ImGui_GM/blob/main/dll/gm/imgui_api_gm.cpp#L582) | N/A |
| `ImGui::Shortcut` | ✅ | [imgui_input_gm.cpp](https://github.com/nommiin/ImGui_GM/blob/main/dll/gm/imgui_input_gm.cpp#L305) | N/A |
| `ImGui::SetNextItemShortcut` | ✅ | [imgui_input_gm.cpp](https://github.com/nommiin/ImGui_GM/blob/main/dll/gm/imgui_input_gm.cpp#L325) | N/A |
| `ImGui::SetItemKeyOwner` | ✅ | [imgui_input_gm.cpp](https://github.com/nommiin/ImGui_GM/blob/main/dll/gm/imgui_input_gm.cpp#L337) | N/A |
| `ImGui::IsMouseDown` | ✅ | [imgui_input_gm.cpp](https://github.com/nommiin/ImGui_GM/blob/main/dll/gm/imgui_input_gm.cpp#L116) | N/A |
| `ImGui::IsMouseClicked` | ✅ | [imgui_input_gm.cpp](https://github.com/nommiin/ImGui_GM/blob/main/dll/gm/imgui_input_gm.cpp#L134) | N/A |
| `ImGui::IsMouseReleased` | ✅ | [imgui_input_gm.cpp](https://github.com/nommiin/ImGui_GM/blob/main/dll/gm/imgui_input_gm.cpp#L155) | N/A |
| `ImGui::IsMouseDoubleClicked` | ✅ | [imgui_input_gm.cpp](https://github.com/nommiin/ImGui_GM/blob/main/dll/gm/imgui_input_gm.cpp#L173) | N/A |
| `ImGui::GetMouseClickedCount` | ✅ | [imgui_input_gm.cpp](https://github.com/nommiin/ImGui_GM/blob/main/dll/gm/imgui_input_gm.cpp#L191) | N/A |
| `ImGui::IsMouseHoveringRect` | ✅ | [imgui_input_gm.cpp](https://github.com/nommiin/ImGui_GM/blob/main/dll/gm/imgui_input_gm.cpp#L202) | N/A |
| `ImGui::IsMousePosValid` | ✅ | [imgui_input_gm.cpp](https://github.com/nommiin/ImGui_GM/blob/main/dll/gm/imgui_input_gm.cpp#L215) | N/A |
| `ImGui::IsAnyMouseDown` | ✅ | [imgui_input_gm.cpp](https://github.com/nommiin/ImGui_GM/blob/main/dll/gm/imgui_input_gm.cpp#L222) | N/A |
| `ImGui::GetMousePos` | ✅ | N/A | Use X/Y wrappers. ImVec2 returns are unsupported |
| `ImGui::GetMousePosOnOpeningCurrentPopup` | ✅ | N/A | Use X/Y wrappers. ImVec2 returns are unsupported |
| `ImGui::IsMouseDragging` | ✅ | [imgui_input_gm.cpp](https://github.com/nommiin/ImGui_GM/blob/main/dll/gm/imgui_input_gm.cpp#L227) | N/A |
| `ImGui::GetMouseDragDelta` | ✅ | N/A | Use X/Y wrappers. ImVec2 returns are unsupported |
| `ImGui::ResetMouseDragDelta` | ✅ | [imgui_input_gm.cpp](https://github.com/nommiin/ImGui_GM/blob/main/dll/gm/imgui_input_gm.cpp#L295) | N/A |
| `ImGui::GetMouseCursor` | ❌ | N/A | Handled internally by GML |
| `ImGui::SetMouseCursor` | ❌ | N/A | Handled internally by GML |
| `ImGui::SetNextFrameWantCaptureMouse` | ✅ | [imgui_api_gm.cpp](https://github.com/nommiin/ImGui_GM/blob/main/dll/gm/imgui_api_gm.cpp#L595) | N/A |
| `ImGui::GetClipboardText` | ❌ | N/A | N/A |
| `ImGui::SetClipboardText` | ❌ | N/A | N/A |
| `ImGui::LoadIniSettingsFromDisk` | ✅ | [imgui_api_gm.cpp](https://github.com/nommiin/ImGui_GM/blob/main/dll/gm/imgui_api_gm.cpp#L452) | N/A |
| `ImGui::LoadIniSettingsFromMemory` | ✅ | [imgui_api_gm.cpp](https://github.com/nommiin/ImGui_GM/blob/main/dll/gm/imgui_api_gm.cpp#L463) | N/A |
| `ImGui::SaveIniSettingsToDisk` | ✅ | [imgui_api_gm.cpp](https://github.com/nommiin/ImGui_GM/blob/main/dll/gm/imgui_api_gm.cpp#L475) | N/A |
| `ImGui::SaveIniSettingsToMemory` | ✅ | [imgui_api_gm.cpp](https://github.com/nommiin/ImGui_GM/blob/main/dll/gm/imgui_api_gm.cpp#L487) | N/A |
| `ImGui::DebugTextEncoding` | ❌ | N/A | N/A |
| `ImGui::DebugFlashStyleColor` | ❌ | N/A | N/A |
| `ImGui::DebugStartItemPicker` | ❌ | N/A | N/A |
| `ImGui::DebugCheckVersionAndDataLayout` | ❌ | N/A | N/A |
| `ImGui::DebugLog` | ❌ | N/A | N/A |
| `ImGui::DebugLogV` | ❌ | N/A | Unsupported, use `string` function in GameMaker for string formatting |
| `ImGui::SetAllocatorFunctions` | ❌ | N/A | N/A |
| `ImGui::GetAllocatorFunctions` | ❌ | N/A | N/A |
| `ImGui::MemAlloc` | ❌ | N/A | N/A |
| `ImGui::MemFree` | ❌ | N/A | N/A |
| `ImGui::UpdatePlatformWindows` | ✅ | N/A | Handled internally by `__imgui_draw` function |
| `ImGui::RenderPlatformWindowsDefault` | ✅ | N/A | Handled internally by `__imgui_draw` function |
| `ImGui::DestroyPlatformWindows` | ✅ | N/A | Handled internally by `__imgui_shutdown` function |
| `ImGui::FindViewportByID` | ✅ | [imgui_docking_gm.cpp](https://github.com/nommiin/ImGui_GM/blob/main/dll/gm/imgui_docking_gm.cpp#L27) | N/A |
| `ImGui::FindViewportByPlatformHandle` | ✅ | [imgui_docking_gm.cpp](https://github.com/nommiin/ImGui_GM/blob/main/dll/gm/imgui_docking_gm.cpp#L35) | N/A |

# Non-Standard
Below is a table of non-standard functions made specifically for ImGui_GM

| Function | Link |
| -------- | ---- |
| `ImGui.GetItemRectMinX()` | [imgui_api_gm.cpp](https://github.com/nommiin/ImGui_GM/blob/main/dll/imgui_api_gm.cpp#L274) |
| `ImGui.GetItemRectMinY()` | [imgui_api_gm.cpp](https://github.com/nommiin/ImGui_GM/blob/main/dll/imgui_api_gm.cpp#L281) |
| `ImGui.GetItemRectMaxX()` | [imgui_api_gm.cpp](https://github.com/nommiin/ImGui_GM/blob/main/dll/imgui_api_gm.cpp#L288) |
| `ImGui.GetItemRectMaxY()` | [imgui_api_gm.cpp](https://github.com/nommiin/ImGui_GM/blob/main/dll/imgui_api_gm.cpp#L295) |
| `ImGui.GetItemRectSizeWidth()` | [imgui_api_gm.cpp](https://github.com/nommiin/ImGui_GM/blob/main/dll/imgui_api_gm.cpp#L302) |
| `ImGui.GetItemRectSizeHeight()` | [imgui_api_gm.cpp](https://github.com/nommiin/ImGui_GM/blob/main/dll/imgui_api_gm.cpp#L309) |
| `ImGui.CalcTextWidth(text, hide_text_after_double_hash, wrap_width)` | [imgui_api_gm.cpp](https://github.com/nommiin/ImGui_GM/blob/main/dll/imgui_api_gm.cpp#L352) |
| `ImGui.CalcTextHeight(text, hide_text_after_double_hash, wrap_width)` | [imgui_api_gm.cpp](https://github.com/nommiin/ImGui_GM/blob/main/dll/imgui_api_gm.cpp#L364) |
| `ImGui.PushAllowKeyboardFocus(allow_keyboard_focus)` | [imgui_api_gm.cpp](https://github.com/nommiin/ImGui_GM/blob/main/dll/imgui_api_gm.cpp#L376) |
| `ImGui.PopAllowKeyboardFocus()` | [imgui_api_gm.cpp](https://github.com/nommiin/ImGui_GM/blob/main/dll/imgui_api_gm.cpp#L383) |
| `ImGui.PushButtonRepeat(_repeat)` | [imgui_api_gm.cpp](https://github.com/nommiin/ImGui_GM/blob/main/dll/imgui_api_gm.cpp#L396) |
| `ImGui.PopButtonRepeat()` | [imgui_api_gm.cpp](https://github.com/nommiin/ImGui_GM/blob/main/dll/imgui_api_gm.cpp#L403) |
| `ImGui.ConfigFlagsGet()` | [imgui_api_gm.cpp](https://github.com/nommiin/ImGui_GM/blob/main/dll/imgui_api_gm.cpp#L413) |
| `ImGui.IniFilename(val)` | [imgui_api_gm.cpp](https://github.com/nommiin/ImGui_GM/blob/main/dll/imgui_api_gm.cpp#L421) |
| `ImGui.WantSaveIniSettings(val)` | [imgui_api_gm.cpp](https://github.com/nommiin/ImGui_GM/blob/main/dll/imgui_api_gm.cpp#L436) |
| `ImGui.ClearIniSettings()` | [imgui_api_gm.cpp](https://github.com/nommiin/ImGui_GM/blob/main/dll/imgui_api_gm.cpp#L495) |
| `ImGui.ConfigFlagsSet(flags)` | [imgui_api_gm.cpp](https://github.com/nommiin/ImGui_GM/blob/main/dll/imgui_api_gm.cpp#L500) |
| `ImGui.ConfigFlagToggle(flag)` | [imgui_api_gm.cpp](https://github.com/nommiin/ImGui_GM/blob/main/dll/imgui_api_gm.cpp#L508) |
| `ImGui.GetViewportID(vp)` | [imgui_api_gm.cpp](https://github.com/nommiin/ImGui_GM/blob/main/dll/imgui_api_gm.cpp#L523) |
| `ImGui.WantKeyboardCapture(val)` | [imgui_api_gm.cpp](https://github.com/nommiin/ImGui_GM/blob/main/dll/imgui_api_gm.cpp#L608) |
| `ImGui.WantMouseCapture(val)` | [imgui_api_gm.cpp](https://github.com/nommiin/ImGui_GM/blob/main/dll/imgui_api_gm.cpp#L623) |
| `ImGui.WantTextInput(val)` | [imgui_api_gm.cpp](https://github.com/nommiin/ImGui_GM/blob/main/dll/imgui_api_gm.cpp#L638) |
| `ImGui.WantMouseCaptureUnlessPopupClose(val)` | [imgui_api_gm.cpp](https://github.com/nommiin/ImGui_GM/blob/main/dll/imgui_api_gm.cpp#L653) |
| `ImGui.DockBuilderDockWindow(window_name, node_id)` | [imgui_docking_gm.cpp](https://github.com/nommiin/ImGui_GM/blob/main/dll/imgui_docking_gm.cpp#L110) |
| `ImGui.DockBuilderGetNode(node_id)` | [imgui_docking_gm.cpp](https://github.com/nommiin/ImGui_GM/blob/main/dll/imgui_docking_gm.cpp#L118) |
| `ImGui.DockBuilderGetCentralNode(node_id)` | [imgui_docking_gm.cpp](https://github.com/nommiin/ImGui_GM/blob/main/dll/imgui_docking_gm.cpp#L125) |
| `ImGui.DockBuilderAddNode(node_id, flags)` | [imgui_docking_gm.cpp](https://github.com/nommiin/ImGui_GM/blob/main/dll/imgui_docking_gm.cpp#L132) |
| `ImGui.DockBuilderRemoveNode(node_id)` | [imgui_docking_gm.cpp](https://github.com/nommiin/ImGui_GM/blob/main/dll/imgui_docking_gm.cpp#L142) |
| `ImGui.DockBuilderRemoveNodeDockedWindows(node_id, clear_settings_refs)` | [imgui_docking_gm.cpp](https://github.com/nommiin/ImGui_GM/blob/main/dll/imgui_docking_gm.cpp#L149) |
| `ImGui.DockBuilderRemoveNodeChildNodes(node_id)` | [imgui_docking_gm.cpp](https://github.com/nommiin/ImGui_GM/blob/main/dll/imgui_docking_gm.cpp#L158) |
| `ImGui.DockBuilderSetNodePos(node_id, _x, _y)` | [imgui_docking_gm.cpp](https://github.com/nommiin/ImGui_GM/blob/main/dll/imgui_docking_gm.cpp#L165) |
| `ImGui.DockBuilderSetNodeSize(node_id, width, height)` | [imgui_docking_gm.cpp](https://github.com/nommiin/ImGui_GM/blob/main/dll/imgui_docking_gm.cpp#L174) |
| `ImGui.DockBuilderSplitNode(node_id, split_dir, size_ratio_for_node_at_dir)` | [imgui_docking_gm.cpp](https://github.com/nommiin/ImGui_GM/blob/main/dll/imgui_docking_gm.cpp#L183) |
| `ImGui.DockBuilderCopyDockSpace(src_dockspace_id, dst_dockspace_id, window_remap_pairs)` | [imgui_docking_gm.cpp](https://github.com/nommiin/ImGui_GM/blob/main/dll/imgui_docking_gm.cpp#L197) |
| `ImGui.DockBuilderCopyNode(src_node_id, dst_node_id, node_remap_pairs)` | [imgui_docking_gm.cpp](https://github.com/nommiin/ImGui_GM/blob/main/dll/imgui_docking_gm.cpp#L216) |
| `ImGui.DockBuilderCopyWindowSettings(src_name, dst_name)` | [imgui_docking_gm.cpp](https://github.com/nommiin/ImGui_GM/blob/main/dll/imgui_docking_gm.cpp#L234) |
| `ImGui.DockBuilderFinish(node_id)` | [imgui_docking_gm.cpp](https://github.com/nommiin/ImGui_GM/blob/main/dll/imgui_docking_gm.cpp#L242) |
| `ImGui.DragFloatN(label, v, v_speed, v_min, v_max, format, flags, count)` | [imgui_drag_gm.cpp](https://github.com/nommiin/ImGui_GM/blob/main/dll/imgui_drag_gm.cpp#L94) |
| `ImGui.DragIntN(label, v, v_speed, v_min, v_max, format, flags, count)` | [imgui_drag_gm.cpp](https://github.com/nommiin/ImGui_GM/blob/main/dll/imgui_drag_gm.cpp#L237) |
| `ImGui.DrawListAddLine(list, x1, y1, x2, y2, col, thickness)` | [imgui_drawlist_gm.cpp](https://github.com/nommiin/ImGui_GM/blob/main/dll/imgui_drawlist_gm.cpp#L37) |
| `ImGui.DrawListAddRect(list, x1, y1, x2, y2, col, rounding, flags, thickness)` | [imgui_drawlist_gm.cpp](https://github.com/nommiin/ImGui_GM/blob/main/dll/imgui_drawlist_gm.cpp#L52) |
| `ImGui.DrawListAddRectFilled(list, x1, y1, x2, y2, col, rounding, flags)` | [imgui_drawlist_gm.cpp](https://github.com/nommiin/ImGui_GM/blob/main/dll/imgui_drawlist_gm.cpp#L71) |
| `ImGui.DrawListAddRectFilledMultiColor(list, x1, y1, x2, y2, col1, col2, col3, col4)` | [imgui_drawlist_gm.cpp](https://github.com/nommiin/ImGui_GM/blob/main/dll/imgui_drawlist_gm.cpp#L88) |
| `ImGui.DrawListAddQuad(list, x1, y1, x2, y2, x3, y3, x4, y4, col, thickness)` | [imgui_drawlist_gm.cpp](https://github.com/nommiin/ImGui_GM/blob/main/dll/imgui_drawlist_gm.cpp#L104) |
| `ImGui.DrawListAddQuadFilled(list, x1, y1, x2, y2, x3, y3, x4, y4, col)` | [imgui_drawlist_gm.cpp](https://github.com/nommiin/ImGui_GM/blob/main/dll/imgui_drawlist_gm.cpp#L123) |
| `ImGui.DrawListAddTriangle(list, x1, y1, x2, y2, x3, y3, col, thickness)` | [imgui_drawlist_gm.cpp](https://github.com/nommiin/ImGui_GM/blob/main/dll/imgui_drawlist_gm.cpp#L140) |
| `ImGui.DrawListAddTriangleFilled(list, x1, y1, x2, y2, x3, y3, col)` | [imgui_drawlist_gm.cpp](https://github.com/nommiin/ImGui_GM/blob/main/dll/imgui_drawlist_gm.cpp#L157) |
| `ImGui.DrawListAddCircle(list, _x, _y, radius, col, num_segments, thickness)` | [imgui_drawlist_gm.cpp](https://github.com/nommiin/ImGui_GM/blob/main/dll/imgui_drawlist_gm.cpp#L172) |
| `ImGui.DrawListAddCircleFilled(list, _x, _y, radius, col, num_segments)` | [imgui_drawlist_gm.cpp](https://github.com/nommiin/ImGui_GM/blob/main/dll/imgui_drawlist_gm.cpp#L188) |
| `ImGui.DrawListAddNgon(list, _x, _y, radius, col, num_segments, thickness)` | [imgui_drawlist_gm.cpp](https://github.com/nommiin/ImGui_GM/blob/main/dll/imgui_drawlist_gm.cpp#L202) |
| `ImGui.DrawListAddNgonFilled(list, _x, _y, radius, col, num_segments)` | [imgui_drawlist_gm.cpp](https://github.com/nommiin/ImGui_GM/blob/main/dll/imgui_drawlist_gm.cpp#L218) |
| `ImGui.DrawListAddText(list, _x, _y, text, col)` | [imgui_drawlist_gm.cpp](https://github.com/nommiin/ImGui_GM/blob/main/dll/imgui_drawlist_gm.cpp#L232) |
| `ImGui.DrawListAddTextFont(list, _x, _y, text, col, font, font_size, wrap_width)` | [imgui_drawlist_gm.cpp](https://github.com/nommiin/ImGui_GM/blob/main/dll/imgui_drawlist_gm.cpp#L244) |
| `ImGui.DrawListAddPolyline(list, positions, col, flags, thickness, num_points)` | [imgui_drawlist_gm.cpp](https://github.com/nommiin/ImGui_GM/blob/main/dll/imgui_drawlist_gm.cpp#L261) |
| `ImGui.DrawListAddConvexPolyFilled(list, positions, col, num_points)` | [imgui_drawlist_gm.cpp](https://github.com/nommiin/ImGui_GM/blob/main/dll/imgui_drawlist_gm.cpp#L287) |
| `ImGui.DrawListAddBezierCubic(list, x1, y1, x2, y2, x3, y3, x4, y4, col, thickness, num_segments)` | [imgui_drawlist_gm.cpp](https://github.com/nommiin/ImGui_GM/blob/main/dll/imgui_drawlist_gm.cpp#L309) |
| `ImGui.DrawListAddBezierQuadratic(list, x1, y1, x2, y2, x3, y3, col, thickness, num_segments)` | [imgui_drawlist_gm.cpp](https://github.com/nommiin/ImGui_GM/blob/main/dll/imgui_drawlist_gm.cpp#L329) |
| `ImGui.DrawListPathFillConvex(list, col)` | [imgui_drawlist_gm.cpp](https://github.com/nommiin/ImGui_GM/blob/main/dll/imgui_drawlist_gm.cpp#L347) |
| `ImGui.DrawListPathStroke(list, col, flags, thickness)` | [imgui_drawlist_gm.cpp](https://github.com/nommiin/ImGui_GM/blob/main/dll/imgui_drawlist_gm.cpp#L356) |
| `ImGui.DrawListPathClear(list)` | [imgui_drawlist_gm.cpp](https://github.com/nommiin/ImGui_GM/blob/main/dll/imgui_drawlist_gm.cpp#L369) |
| `ImGui.DrawListPathLineTo(list, _x, _y)` | [imgui_drawlist_gm.cpp](https://github.com/nommiin/ImGui_GM/blob/main/dll/imgui_drawlist_gm.cpp#L377) |
| `ImGui.DrawListPathLineToMergeDuplicate(list, _x, _y)` | [imgui_drawlist_gm.cpp](https://github.com/nommiin/ImGui_GM/blob/main/dll/imgui_drawlist_gm.cpp#L387) |
| `ImGui.DrawListPathArcTo(list, _x, _y, radius, a_min, a_max, num_segments)` | [imgui_drawlist_gm.cpp](https://github.com/nommiin/ImGui_GM/blob/main/dll/imgui_drawlist_gm.cpp#L397) |
| `ImGui.DrawListPathArcToFast(list, _x, _y, radius, a_min_of_12, a_max_of_12)` | [imgui_drawlist_gm.cpp](https://github.com/nommiin/ImGui_GM/blob/main/dll/imgui_drawlist_gm.cpp#L412) |
| `ImGui.DrawListPathBezierCubicCurveTo(list, x2, y2, x3, y3, x4, y4, num_segments)` | [imgui_drawlist_gm.cpp](https://github.com/nommiin/ImGui_GM/blob/main/dll/imgui_drawlist_gm.cpp#L425) |
| `ImGui.DrawListPathBezierQuadraticCurveTo(list, x2, y2, x3, y3, num_segments)` | [imgui_drawlist_gm.cpp](https://github.com/nommiin/ImGui_GM/blob/main/dll/imgui_drawlist_gm.cpp#L441) |
| `ImGui.DrawListPathRect(list, x1, y1, x2, y2, rounding, flags)` | [imgui_drawlist_gm.cpp](https://github.com/nommiin/ImGui_GM/blob/main/dll/imgui_drawlist_gm.cpp#L455) |
| `ImGui.DrawListAddImage(list, sprite, subimg, x1, y1, x2, y2, col, uv)` | [imgui_drawlist_gm.cpp](https://github.com/nommiin/ImGui_GM/blob/main/dll/imgui_drawlist_gm.cpp#L471) |
| `ImGui.DrawListAddImageRounded(list, sprite, subimg, x1, y1, x2, y2, col, rounding, flags, uv)` | [imgui_drawlist_gm.cpp](https://github.com/nommiin/ImGui_GM/blob/main/dll/imgui_drawlist_gm.cpp#L494) |
| `ImGui.DrawListPushClipRect(list, clip_min_x, clip_min_y, clip_max_x, clip_max_y, intersect_with_current_clip_rect)` | [imgui_drawlist_gm.cpp](https://github.com/nommiin/ImGui_GM/blob/main/dll/imgui_drawlist_gm.cpp#L516) |
| `ImGui.DrawlistPushClipRectFullscreen(list)` | [imgui_drawlist_gm.cpp](https://github.com/nommiin/ImGui_GM/blob/main/dll/imgui_drawlist_gm.cpp#L529) |
| `ImGui.DrawListPopClipRect(list)` | [imgui_drawlist_gm.cpp](https://github.com/nommiin/ImGui_GM/blob/main/dll/imgui_drawlist_gm.cpp#L536) |
| `ImGui.DrawListPushTextureID(list, sprite, subimg)` | [imgui_drawlist_gm.cpp](https://github.com/nommiin/ImGui_GM/blob/main/dll/imgui_drawlist_gm.cpp#L544) |
| `ImGui.DrawListPopTextureID(list)` | [imgui_drawlist_gm.cpp](https://github.com/nommiin/ImGui_GM/blob/main/dll/imgui_drawlist_gm.cpp#L555) |
| `ImGui.DrawListFlagsGet(list)` | [imgui_drawlist_gm.cpp](https://github.com/nommiin/ImGui_GM/blob/main/dll/imgui_drawlist_gm.cpp#L563) |
| `ImGui.DrawListFlagsSet(list, flags)` | [imgui_drawlist_gm.cpp](https://github.com/nommiin/ImGui_GM/blob/main/dll/imgui_drawlist_gm.cpp#L571) |
| `ImGui.DrawListFlagToggle(list, flag)` | [imgui_drawlist_gm.cpp](https://github.com/nommiin/ImGui_GM/blob/main/dll/imgui_drawlist_gm.cpp#L580) |
| `ImGui.MemoryEditorShowWindow(title, buffer, offset, size)` | [imgui_ext_memeditor_gm.cpp](https://github.com/nommiin/ImGui_GM/blob/main/dll/imgui_ext_memeditor_gm.cpp#L5) |
| `ImGui.MemoryEditorDrawContents(buffer, offset, size)` | [imgui_ext_memeditor_gm.cpp](https://github.com/nommiin/ImGui_GM/blob/main/dll/imgui_ext_memeditor_gm.cpp#L18) |
| `ImGui.AddFontFromFile(file, size)` | [imgui_fonts_gm.cpp](https://github.com/nommiin/ImGui_GM/blob/main/dll/imgui_fonts_gm.cpp#L25) |
| `ImGui.AddFontDefault()` | [imgui_fonts_gm.cpp](https://github.com/nommiin/ImGui_GM/blob/main/dll/imgui_fonts_gm.cpp#L41) |
| `ImGui.GetKeyChordName(key_chord)` | [imgui_input_gm.cpp](https://github.com/nommiin/ImGui_GM/blob/main/dll/imgui_input_gm.cpp#L107) |
| `ImGui.GetMousePosX()` | [imgui_input_gm.cpp](https://github.com/nommiin/ImGui_GM/blob/main/dll/imgui_input_gm.cpp#L240) |
| `ImGui.GetMousePosY()` | [imgui_input_gm.cpp](https://github.com/nommiin/ImGui_GM/blob/main/dll/imgui_input_gm.cpp#L247) |
| `ImGui.GetMousePosOnOpeningCurrentPopupX()` | [imgui_input_gm.cpp](https://github.com/nommiin/ImGui_GM/blob/main/dll/imgui_input_gm.cpp#L254) |
| `ImGui.GetMousePosOnOpeningCurrentPopupY()` | [imgui_input_gm.cpp](https://github.com/nommiin/ImGui_GM/blob/main/dll/imgui_input_gm.cpp#L261) |
| `ImGui.GetMouseDragDeltaX(button, lock_threshold)` | [imgui_input_gm.cpp](https://github.com/nommiin/ImGui_GM/blob/main/dll/imgui_input_gm.cpp#L268) |
| `ImGui.GetMouseDragDeltaY(button, lock_threshold)` | [imgui_input_gm.cpp](https://github.com/nommiin/ImGui_GM/blob/main/dll/imgui_input_gm.cpp#L281) |
| `ImGui.InputFloatN(label, v, len, step, step_fast, format, flags)` | [imgui_input_widgets_gm.cpp](https://github.com/nommiin/ImGui_GM/blob/main/dll/imgui_input_widgets_gm.cpp#L131) |
| `ImGui.InputIntN(label, v, flags, count)` | [imgui_input_widgets_gm.cpp](https://github.com/nommiin/ImGui_GM/blob/main/dll/imgui_input_widgets_gm.cpp#L219) |
| `ImGui.GetCursorStartPosX()` | [imgui_layout_gm.cpp](https://github.com/nommiin/ImGui_GM/blob/main/dll/imgui_layout_gm.cpp#L89) |
| `ImGui.GetCursorStartPosY()` | [imgui_layout_gm.cpp](https://github.com/nommiin/ImGui_GM/blob/main/dll/imgui_layout_gm.cpp#L96) |
| `ImGui.GetCursorScreenPosX()` | [imgui_layout_gm.cpp](https://github.com/nommiin/ImGui_GM/blob/main/dll/imgui_layout_gm.cpp#L103) |
| `ImGui.GetCursorScreenPosY()` | [imgui_layout_gm.cpp](https://github.com/nommiin/ImGui_GM/blob/main/dll/imgui_layout_gm.cpp#L110) |
| `ImGui.GetContentRegionAvailX()` | [imgui_layout_gm.cpp](https://github.com/nommiin/ImGui_GM/blob/main/dll/imgui_layout_gm.cpp#L167) |
| `ImGui.GetContentRegionAvailY()` | [imgui_layout_gm.cpp](https://github.com/nommiin/ImGui_GM/blob/main/dll/imgui_layout_gm.cpp#L174) |
| `ImGui.GetContentRegionMaxX()` | [imgui_layout_gm.cpp](https://github.com/nommiin/ImGui_GM/blob/main/dll/imgui_layout_gm.cpp#L181) |
| `ImGui.GetContentRegionMaxY()` | [imgui_layout_gm.cpp](https://github.com/nommiin/ImGui_GM/blob/main/dll/imgui_layout_gm.cpp#L188) |
| `ImGui.GetWindowContentRegionMinX()` | [imgui_layout_gm.cpp](https://github.com/nommiin/ImGui_GM/blob/main/dll/imgui_layout_gm.cpp#L195) |
| `ImGui.GetWindowContentRegionMinY()` | [imgui_layout_gm.cpp](https://github.com/nommiin/ImGui_GM/blob/main/dll/imgui_layout_gm.cpp#L202) |
| `ImGui.GetWindowContentRegionMaxX()` | [imgui_layout_gm.cpp](https://github.com/nommiin/ImGui_GM/blob/main/dll/imgui_layout_gm.cpp#L209) |
| `ImGui.GetWindowContentRegionMaxY()` | [imgui_layout_gm.cpp](https://github.com/nommiin/ImGui_GM/blob/main/dll/imgui_layout_gm.cpp#L216) |
| `ImGui.GetDragDropPayloadType()` | [imgui_payload_gm.cpp](https://github.com/nommiin/ImGui_GM/blob/main/dll/imgui_payload_gm.cpp#L83) |
| `ImGui.SelectionStorageApplyRequests(selection, ms_io)` | [imgui_selectable_gm.cpp](https://github.com/nommiin/ImGui_GM/blob/main/dll/imgui_selectable_gm.cpp#L58) |
| `ImGui.SliderFloatN(label, v, v_speed, v_min, v_max, format, flags, count)` | [imgui_slider_gm.cpp](https://github.com/nommiin/ImGui_GM/blob/main/dll/imgui_slider_gm.cpp#L86) |
| `ImGui.SliderIntN(label, v, v_min, v_max, format, flags, count)` | [imgui_slider_gm.cpp](https://github.com/nommiin/ImGui_GM/blob/main/dll/imgui_slider_gm.cpp#L196) |
| `ImGui.GetStyleColor(idx)` | [imgui_style_gm.cpp](https://github.com/nommiin/ImGui_GM/blob/main/dll/imgui_style_gm.cpp#L79) |
| `ImGui.SetStyleColor(idx, col, alpha)` | [imgui_style_gm.cpp](https://github.com/nommiin/ImGui_GM/blob/main/dll/imgui_style_gm.cpp#L94) |
| `ImGui.SetStyleVar(idx, val, val2)` | [imgui_style_gm.cpp](https://github.com/nommiin/ImGui_GM/blob/main/dll/imgui_style_gm.cpp#L107) |
| `ImGui.Surface(surface, color, alpha, width, height, uv)` | [imgui_widgets_gm.cpp](https://github.com/nommiin/ImGui_GM/blob/main/dll/imgui_widgets_gm.cpp#L89) |
| `ImGui.BeginChildFrame(_id, width, height, flags)` | [imgui_window_gm.cpp](https://github.com/nommiin/ImGui_GM/blob/main/dll/imgui_window_gm.cpp#L49) |
| `ImGui.EndChildFrame()` | [imgui_window_gm.cpp](https://github.com/nommiin/ImGui_GM/blob/main/dll/imgui_window_gm.cpp#L62) |
| `ImGui.GetWindowPosX()` | [imgui_window_gm.cpp](https://github.com/nommiin/ImGui_GM/blob/main/dll/imgui_window_gm.cpp#L98) |
| `ImGui.GetWindowPosY()` | [imgui_window_gm.cpp](https://github.com/nommiin/ImGui_GM/blob/main/dll/imgui_window_gm.cpp#L105) |
