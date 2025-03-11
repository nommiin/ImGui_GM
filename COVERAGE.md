# ImGui

## About

This is an automatically generated file that keeps track of wrapper coverage of the API. This may not be 100% accurate as it is calculated programatically, but can serve as a good general idea of progress.

# Coverage

- ![coverage](https://badgen.net/https/raw.githubusercontent.com/nommiin/ImGui_GM/main/extra/badges/coverage.json?icon=awesome)
- 402 out of 430 supported API functions wrapped (**93% complete**)
- 402 out of 445 total API functions wrapped (*90% complete*)
- Note that 15 out of 445 API functions are not supported (3%)

| Function | Wrapped | Link | Notes |
| -------- | ------- | ---- | ----- |
| `ImGui::CreateContext` | ✅ | [imgui_api_gm.cpp](https://github.com/nommiin/ImGui_GM/blob/main/dll/gm/imgui_api_gm.cpp#L8) | - |
| `ImGui::DestroyContext` | ✅ | [imgui_api_gm.cpp](https://github.com/nommiin/ImGui_GM/blob/main/dll/gm/imgui_api_gm.cpp#L13) | - |
| `ImGui::GetCurrentContext` | ✅ | [imgui_api_gm.cpp](https://github.com/nommiin/ImGui_GM/blob/main/dll/gm/imgui_api_gm.cpp#L20) | - |
| `ImGui::SetCurrentContext` | ✅ | [imgui_api_gm.cpp](https://github.com/nommiin/ImGui_GM/blob/main/dll/gm/imgui_api_gm.cpp#L25) | - |
| `ImGui::GetIO` | ❌ | - | - |
| `ImGui::GetPlatformIO` | ❌ | - | Unsupported |
| `ImGui::GetStyle` | ❌ | - | You can use custom functions (`SetStyleVar` and `SetStyleColor`) to modify the style |
| `ImGui::NewFrame` | ✅ | - | Handled internally by `__imgui_new_frame` function |
| `ImGui::EndFrame` | ✅ | - | Handled internally by `__imgui_end_frame` function |
| `ImGui::Render` | ✅ | - | Handled internally by `__imgui_render` function |
| `ImGui::GetDrawData` | ❌ | - | - |
| `ImGui::ShowDemoWindow` | ✅ | [imgui_api_gm.cpp](https://github.com/nommiin/ImGui_GM/blob/main/dll/gm/imgui_api_gm.cpp#L32) | - |
| `ImGui::ShowMetricsWindow` | ✅ | [imgui_api_gm.cpp](https://github.com/nommiin/ImGui_GM/blob/main/dll/gm/imgui_api_gm.cpp#L48) | - |
| `ImGui::ShowDebugLogWindow` | ✅ | [imgui_api_gm.cpp](https://github.com/nommiin/ImGui_GM/blob/main/dll/gm/imgui_api_gm.cpp#L64) | - |
| `ImGui::ShowIDStackToolWindow` | ✅ | [imgui_api_gm.cpp](https://github.com/nommiin/ImGui_GM/blob/main/dll/gm/imgui_api_gm.cpp#L80) | - |
| `ImGui::ShowAboutWindow` | ✅ | [imgui_api_gm.cpp](https://github.com/nommiin/ImGui_GM/blob/main/dll/gm/imgui_api_gm.cpp#L98) | - |
| `ImGui::ShowStyleEditor` | ✅ | [imgui_api_gm.cpp](https://github.com/nommiin/ImGui_GM/blob/main/dll/gm/imgui_api_gm.cpp#L114) | - |
| `ImGui::ShowStyleSelector` | ✅ | [imgui_api_gm.cpp](https://github.com/nommiin/ImGui_GM/blob/main/dll/gm/imgui_api_gm.cpp#L119) | - |
| `ImGui::ShowFontSelector` | ✅ | [imgui_api_gm.cpp](https://github.com/nommiin/ImGui_GM/blob/main/dll/gm/imgui_api_gm.cpp#L126) | - |
| `ImGui::ShowUserGuide` | ✅ | [imgui_api_gm.cpp](https://github.com/nommiin/ImGui_GM/blob/main/dll/gm/imgui_api_gm.cpp#L133) | - |
| `ImGui::GetVersion` | ✅ | [imgui_api_gm.cpp](https://github.com/nommiin/ImGui_GM/blob/main/dll/gm/imgui_api_gm.cpp#L138) | - |
| `ImGui::StyleColorsDark` | ✅ | [imgui_style_gm.cpp](https://github.com/nommiin/ImGui_GM/blob/main/dll/gm/imgui_style_gm.cpp#L3) | - |
| `ImGui::StyleColorsLight` | ✅ | [imgui_style_gm.cpp](https://github.com/nommiin/ImGui_GM/blob/main/dll/gm/imgui_style_gm.cpp#L8) | - |
| `ImGui::StyleColorsClassic` | ✅ | [imgui_style_gm.cpp](https://github.com/nommiin/ImGui_GM/blob/main/dll/gm/imgui_style_gm.cpp#L13) | - |
| `ImGui::Begin` | ✅ | [imgui_window_gm.cpp](https://github.com/nommiin/ImGui_GM/blob/main/dll/gm/imgui_window_gm.cpp#L3) | See [ImGuiReturnMask Usage](https://github.com/nommiin/ImGui_GM/wiki/ImGuiReturnMask-Usage) for more info the `mask` argument |
| `ImGui::End` | ✅ | [imgui_window_gm.cpp](https://github.com/nommiin/ImGui_GM/blob/main/dll/gm/imgui_window_gm.cpp#L24) | - |
| `ImGui::BeginChild` | ✅ | [imgui_window_gm.cpp](https://github.com/nommiin/ImGui_GM/blob/main/dll/gm/imgui_window_gm.cpp#L29) | - |
| `ImGui::EndChild` | ✅ | [imgui_window_gm.cpp](https://github.com/nommiin/ImGui_GM/blob/main/dll/gm/imgui_window_gm.cpp#L44) | - |
| `ImGui::IsWindowAppearing` | ✅ | [imgui_window_gm.cpp](https://github.com/nommiin/ImGui_GM/blob/main/dll/gm/imgui_window_gm.cpp#L67) | - |
| `ImGui::IsWindowCollapsed` | ✅ | [imgui_window_gm.cpp](https://github.com/nommiin/ImGui_GM/blob/main/dll/gm/imgui_window_gm.cpp#L72) | - |
| `ImGui::IsWindowFocused` | ✅ | [imgui_window_gm.cpp](https://github.com/nommiin/ImGui_GM/blob/main/dll/gm/imgui_window_gm.cpp#L77) | - |
| `ImGui::IsWindowHovered` | ✅ | [imgui_window_gm.cpp](https://github.com/nommiin/ImGui_GM/blob/main/dll/gm/imgui_window_gm.cpp#L85) | - |
| `ImGui::GetWindowDrawList` | ✅ | [imgui_drawlist_gm.cpp](https://github.com/nommiin/ImGui_GM/blob/main/dll/gm/imgui_drawlist_gm.cpp#L32) | - |
| `ImGui::GetWindowDpiScale` | ✅ | [imgui_window_gm.cpp](https://github.com/nommiin/ImGui_GM/blob/main/dll/gm/imgui_window_gm.cpp#L93) | - |
| `ImGui::GetWindowPos` | ✅ | - | Use X/Y wrappers. ImVec2 returns are unsupported |
| `ImGui::GetWindowSize` | ✅ | - | Use Width/Height wrappers. ImVec2 returns are unsupported |
| `ImGui::GetWindowWidth` | ✅ | [imgui_window_gm.cpp](https://github.com/nommiin/ImGui_GM/blob/main/dll/gm/imgui_window_gm.cpp#L112) | - |
| `ImGui::GetWindowHeight` | ✅ | [imgui_window_gm.cpp](https://github.com/nommiin/ImGui_GM/blob/main/dll/gm/imgui_window_gm.cpp#L117) | - |
| `ImGui::GetWindowViewport` | ✅ | [imgui_window_gm.cpp](https://github.com/nommiin/ImGui_GM/blob/main/dll/gm/imgui_window_gm.cpp#L122) | - |
| `ImGui::SetNextWindowPos` | ✅ | [imgui_window_gm.cpp](https://github.com/nommiin/ImGui_GM/blob/main/dll/gm/imgui_window_gm.cpp#L143) | - |
| `ImGui::SetNextWindowSize` | ✅ | [imgui_window_gm.cpp](https://github.com/nommiin/ImGui_GM/blob/main/dll/gm/imgui_window_gm.cpp#L157) | - |
| `ImGui::SetNextWindowSizeConstraints` | ✅ | [imgui_window_gm.cpp](https://github.com/nommiin/ImGui_GM/blob/main/dll/gm/imgui_window_gm.cpp#L167) | - |
| `ImGui::SetNextWindowContentSize` | ✅ | [imgui_window_gm.cpp](https://github.com/nommiin/ImGui_GM/blob/main/dll/gm/imgui_window_gm.cpp#L178) | - |
| `ImGui::SetNextWindowCollapsed` | ✅ | [imgui_window_gm.cpp](https://github.com/nommiin/ImGui_GM/blob/main/dll/gm/imgui_window_gm.cpp#L186) | - |
| `ImGui::SetNextWindowFocus` | ✅ | [imgui_window_gm.cpp](https://github.com/nommiin/ImGui_GM/blob/main/dll/gm/imgui_window_gm.cpp#L195) | - |
| `ImGui::SetNextWindowScroll` | ✅ | [imgui_window_gm.cpp](https://github.com/nommiin/ImGui_GM/blob/main/dll/gm/imgui_window_gm.cpp#L200) | - |
| `ImGui::SetNextWindowBgAlpha` | ✅ | [imgui_window_gm.cpp](https://github.com/nommiin/ImGui_GM/blob/main/dll/gm/imgui_window_gm.cpp#L209) | - |
| `ImGui::SetNextWindowViewport` | ✅ | [imgui_window_gm.cpp](https://github.com/nommiin/ImGui_GM/blob/main/dll/gm/imgui_window_gm.cpp#L135) | - |
| `ImGui::SetWindowPos` | ✅ | [imgui_window_gm.cpp](https://github.com/nommiin/ImGui_GM/blob/main/dll/gm/imgui_window_gm.cpp#L285) | - |
| `ImGui::SetWindowSize` | ✅ | [imgui_window_gm.cpp](https://github.com/nommiin/ImGui_GM/blob/main/dll/gm/imgui_window_gm.cpp#L304) | - |
| `ImGui::SetWindowCollapsed` | ✅ | [imgui_window_gm.cpp](https://github.com/nommiin/ImGui_GM/blob/main/dll/gm/imgui_window_gm.cpp#L323) | - |
| `ImGui::SetWindowFocus` | ✅ | [imgui_window_gm.cpp](https://github.com/nommiin/ImGui_GM/blob/main/dll/gm/imgui_window_gm.cpp#L339) | - |
| `ImGui::SetWindowFontScale` | ✅ | [imgui_window_gm.cpp](https://github.com/nommiin/ImGui_GM/blob/main/dll/gm/imgui_window_gm.cpp#L127) | - |
| `ImGui::GetScrollX` | ✅ | [imgui_window_gm.cpp](https://github.com/nommiin/ImGui_GM/blob/main/dll/gm/imgui_window_gm.cpp#L216) | - |
| `ImGui::GetScrollY` | ✅ | [imgui_window_gm.cpp](https://github.com/nommiin/ImGui_GM/blob/main/dll/gm/imgui_window_gm.cpp#L221) | - |
| `ImGui::SetScrollX` | ✅ | [imgui_window_gm.cpp](https://github.com/nommiin/ImGui_GM/blob/main/dll/gm/imgui_window_gm.cpp#L226) | - |
| `ImGui::SetScrollY` | ✅ | [imgui_window_gm.cpp](https://github.com/nommiin/ImGui_GM/blob/main/dll/gm/imgui_window_gm.cpp#L233) | - |
| `ImGui::GetScrollMaxX` | ✅ | [imgui_window_gm.cpp](https://github.com/nommiin/ImGui_GM/blob/main/dll/gm/imgui_window_gm.cpp#L240) | - |
| `ImGui::GetScrollMaxY` | ✅ | [imgui_window_gm.cpp](https://github.com/nommiin/ImGui_GM/blob/main/dll/gm/imgui_window_gm.cpp#L245) | - |
| `ImGui::SetScrollHereX` | ✅ | [imgui_window_gm.cpp](https://github.com/nommiin/ImGui_GM/blob/main/dll/gm/imgui_window_gm.cpp#L250) | - |
| `ImGui::SetScrollHereY` | ✅ | [imgui_window_gm.cpp](https://github.com/nommiin/ImGui_GM/blob/main/dll/gm/imgui_window_gm.cpp#L258) | - |
| `ImGui::SetScrollFromPosX` | ✅ | [imgui_window_gm.cpp](https://github.com/nommiin/ImGui_GM/blob/main/dll/gm/imgui_window_gm.cpp#L266) | - |
| `ImGui::SetScrollFromPosY` | ✅ | [imgui_window_gm.cpp](https://github.com/nommiin/ImGui_GM/blob/main/dll/gm/imgui_window_gm.cpp#L275) | - |
| `ImGui::PushFont` | ✅ | [imgui_fonts_gm.cpp](https://github.com/nommiin/ImGui_GM/blob/main/dll/gm/imgui_fonts_gm.cpp#L8) | Fonts are currently unimplemented |
| `ImGui::PopFont` | ✅ | [imgui_fonts_gm.cpp](https://github.com/nommiin/ImGui_GM/blob/main/dll/gm/imgui_fonts_gm.cpp#L20) | Fonts are currently unimplemented |
| `ImGui::PushStyleColor` | ✅ | [imgui_style_gm.cpp](https://github.com/nommiin/ImGui_GM/blob/main/dll/gm/imgui_style_gm.cpp#L18) | - |
| `ImGui::PopStyleColor` | ✅ | [imgui_style_gm.cpp](https://github.com/nommiin/ImGui_GM/blob/main/dll/gm/imgui_style_gm.cpp#L27) | - |
| `ImGui::PushStyleVar` | ✅ | [imgui_style_gm.cpp](https://github.com/nommiin/ImGui_GM/blob/main/dll/gm/imgui_style_gm.cpp#L35) | - |
| `ImGui::PushStyleVarX` | ✅ | [imgui_style_gm.cpp](https://github.com/nommiin/ImGui_GM/blob/main/dll/gm/imgui_style_gm.cpp#L49) | - |
| `ImGui::PushStyleVarY` | ✅ | [imgui_style_gm.cpp](https://github.com/nommiin/ImGui_GM/blob/main/dll/gm/imgui_style_gm.cpp#L60) | - |
| `ImGui::PopStyleVar` | ✅ | [imgui_style_gm.cpp](https://github.com/nommiin/ImGui_GM/blob/main/dll/gm/imgui_style_gm.cpp#L71) | - |
| `ImGui::PushItemFlag` | ✅ | [imgui_api_gm.cpp](https://github.com/nommiin/ImGui_GM/blob/main/dll/gm/imgui_api_gm.cpp#L169) | - |
| `ImGui::PopItemFlag` | ✅ | [imgui_api_gm.cpp](https://github.com/nommiin/ImGui_GM/blob/main/dll/gm/imgui_api_gm.cpp#L179) | - |
| `ImGui::PushItemWidth` | ✅ | [imgui_layout_gm.cpp](https://github.com/nommiin/ImGui_GM/blob/main/dll/gm/imgui_layout_gm.cpp#L223) | - |
| `ImGui::PopItemWidth` | ✅ | [imgui_layout_gm.cpp](https://github.com/nommiin/ImGui_GM/blob/main/dll/gm/imgui_layout_gm.cpp#L230) | - |
| `ImGui::SetNextItemWidth` | ✅ | [imgui_layout_gm.cpp](https://github.com/nommiin/ImGui_GM/blob/main/dll/gm/imgui_layout_gm.cpp#L235) | - |
| `ImGui::CalcItemWidth` | ✅ | [imgui_layout_gm.cpp](https://github.com/nommiin/ImGui_GM/blob/main/dll/gm/imgui_layout_gm.cpp#L242) | - |
| `ImGui::PushTextWrapPos` | ✅ | [imgui_layout_gm.cpp](https://github.com/nommiin/ImGui_GM/blob/main/dll/gm/imgui_layout_gm.cpp#L247) | - |
| `ImGui::PopTextWrapPos` | ✅ | [imgui_layout_gm.cpp](https://github.com/nommiin/ImGui_GM/blob/main/dll/gm/imgui_layout_gm.cpp#L255) | - |
| `ImGui::GetFont` | ✅ | [imgui_fonts_gm.cpp](https://github.com/nommiin/ImGui_GM/blob/main/dll/gm/imgui_fonts_gm.cpp#L3) | - |
| `ImGui::GetFontSize` | ✅ | [imgui_fonts_gm.cpp](https://github.com/nommiin/ImGui_GM/blob/main/dll/gm/imgui_fonts_gm.cpp#L53) | - |
| `ImGui::GetFontTexUvWhitePixel` | ❌ | - | - |
| `ImGui::GetColorU32` | ✅ | - | Use `GetStyleColor` |
| `ImGui::GetStyleColorVec4` | ✅ | - | Use `ImGui.GetStyleColor` |
| `ImGui::GetCursorScreenPos` | ✅ | - | Use X/Y wrappers. ImVec2 returns are unsupported |
| `ImGui::SetCursorScreenPos` | ✅ | [imgui_layout_gm.cpp](https://github.com/nommiin/ImGui_GM/blob/main/dll/gm/imgui_layout_gm.cpp#L117) | - |
| `ImGui::GetContentRegionAvail` | ✅ | - | Use X/Y wrappers. ImVec2 returns are unsupported |
| `ImGui::GetCursorPos` | ✅ | - | Use X/Y wrappers. ImVec2 returns are unsupported |
| `ImGui::GetCursorPosX` | ✅ | [imgui_layout_gm.cpp](https://github.com/nommiin/ImGui_GM/blob/main/dll/gm/imgui_layout_gm.cpp#L79) | - |
| `ImGui::GetCursorPosY` | ✅ | [imgui_layout_gm.cpp](https://github.com/nommiin/ImGui_GM/blob/main/dll/gm/imgui_layout_gm.cpp#L84) | - |
| `ImGui::SetCursorPos` | ✅ | [imgui_layout_gm.cpp](https://github.com/nommiin/ImGui_GM/blob/main/dll/gm/imgui_layout_gm.cpp#L125) | - |
| `ImGui::SetCursorPosX` | ✅ | [imgui_layout_gm.cpp](https://github.com/nommiin/ImGui_GM/blob/main/dll/gm/imgui_layout_gm.cpp#L133) | - |
| `ImGui::SetCursorPosY` | ✅ | [imgui_layout_gm.cpp](https://github.com/nommiin/ImGui_GM/blob/main/dll/gm/imgui_layout_gm.cpp#L140) | - |
| `ImGui::GetCursorStartPos` | ✅ | - | Use X/Y wrappers. ImVec2 returns are unsupported |
| `ImGui::Separator` | ✅ | [imgui_layout_gm.cpp](https://github.com/nommiin/ImGui_GM/blob/main/dll/gm/imgui_layout_gm.cpp#L30) | - |
| `ImGui::SameLine` | ✅ | [imgui_layout_gm.cpp](https://github.com/nommiin/ImGui_GM/blob/main/dll/gm/imgui_layout_gm.cpp#L59) | - |
| `ImGui::NewLine` | ✅ | [imgui_layout_gm.cpp](https://github.com/nommiin/ImGui_GM/blob/main/dll/gm/imgui_layout_gm.cpp#L20) | - |
| `ImGui::Spacing` | ✅ | [imgui_layout_gm.cpp](https://github.com/nommiin/ImGui_GM/blob/main/dll/gm/imgui_layout_gm.cpp#L7) | - |
| `ImGui::Dummy` | ✅ | [imgui_layout_gm.cpp](https://github.com/nommiin/ImGui_GM/blob/main/dll/gm/imgui_layout_gm.cpp#L12) | - |
| `ImGui::Indent` | ✅ | [imgui_layout_gm.cpp](https://github.com/nommiin/ImGui_GM/blob/main/dll/gm/imgui_layout_gm.cpp#L43) | - |
| `ImGui::Unindent` | ✅ | [imgui_layout_gm.cpp](https://github.com/nommiin/ImGui_GM/blob/main/dll/gm/imgui_layout_gm.cpp#L51) | - |
| `ImGui::BeginGroup` | ✅ | [imgui_layout_gm.cpp](https://github.com/nommiin/ImGui_GM/blob/main/dll/gm/imgui_layout_gm.cpp#L69) | - |
| `ImGui::EndGroup` | ✅ | [imgui_layout_gm.cpp](https://github.com/nommiin/ImGui_GM/blob/main/dll/gm/imgui_layout_gm.cpp#L74) | - |
| `ImGui::AlignTextToFramePadding` | ✅ | [imgui_layout_gm.cpp](https://github.com/nommiin/ImGui_GM/blob/main/dll/gm/imgui_layout_gm.cpp#L25) | - |
| `ImGui::GetTextLineHeight` | ✅ | [imgui_layout_gm.cpp](https://github.com/nommiin/ImGui_GM/blob/main/dll/gm/imgui_layout_gm.cpp#L147) | - |
| `ImGui::GetTextLineHeightWithSpacing` | ✅ | [imgui_layout_gm.cpp](https://github.com/nommiin/ImGui_GM/blob/main/dll/gm/imgui_layout_gm.cpp#L152) | - |
| `ImGui::GetFrameHeight` | ✅ | [imgui_layout_gm.cpp](https://github.com/nommiin/ImGui_GM/blob/main/dll/gm/imgui_layout_gm.cpp#L157) | - |
| `ImGui::GetFrameHeightWithSpacing` | ✅ | [imgui_layout_gm.cpp](https://github.com/nommiin/ImGui_GM/blob/main/dll/gm/imgui_layout_gm.cpp#L162) | - |
| `ImGui::PushID` | ✅ | [imgui_api_gm.cpp](https://github.com/nommiin/ImGui_GM/blob/main/dll/gm/imgui_api_gm.cpp#L145) | - |
| `ImGui::PopID` | ✅ | [imgui_api_gm.cpp](https://github.com/nommiin/ImGui_GM/blob/main/dll/gm/imgui_api_gm.cpp#L157) | - |
| `ImGui::GetID` | ✅ | [imgui_api_gm.cpp](https://github.com/nommiin/ImGui_GM/blob/main/dll/gm/imgui_api_gm.cpp#L162) | - |
| `ImGui::TextUnformatted` | ✅ | [imgui_text_gm.cpp](https://github.com/nommiin/ImGui_GM/blob/main/dll/gm/imgui_text_gm.cpp#L3) | - |
| `ImGui::Text` | ✅ | [imgui_text_gm.cpp](https://github.com/nommiin/ImGui_GM/blob/main/dll/gm/imgui_text_gm.cpp#L10) | - |
| `ImGui::TextV` | ❌ | - | Unsupported, use `string` function in GameMaker for string formatting |
| `ImGui::TextColored` | ✅ | [imgui_text_gm.cpp](https://github.com/nommiin/ImGui_GM/blob/main/dll/gm/imgui_text_gm.cpp#L17) | - |
| `ImGui::TextColoredV` | ❌ | - | Unsupported, use `string` function in GameMaker for string formatting |
| `ImGui::TextDisabled` | ✅ | [imgui_text_gm.cpp](https://github.com/nommiin/ImGui_GM/blob/main/dll/gm/imgui_text_gm.cpp#L27) | - |
| `ImGui::TextDisabledV` | ❌ | - | Unsupported, use `string` function in GameMaker for string formatting |
| `ImGui::TextWrapped` | ✅ | [imgui_text_gm.cpp](https://github.com/nommiin/ImGui_GM/blob/main/dll/gm/imgui_text_gm.cpp#L34) | - |
| `ImGui::TextWrappedV` | ❌ | - | Unsupported, use `string` function in GameMaker for string formatting |
| `ImGui::LabelText` | ✅ | [imgui_text_gm.cpp](https://github.com/nommiin/ImGui_GM/blob/main/dll/gm/imgui_text_gm.cpp#L41) | - |
| `ImGui::LabelTextV` | ❌ | - | Unsupported, use `string` function in GameMaker for string formatting |
| `ImGui::BulletText` | ✅ | [imgui_text_gm.cpp](https://github.com/nommiin/ImGui_GM/blob/main/dll/gm/imgui_text_gm.cpp#L49) | - |
| `ImGui::BulletTextV` | ❌ | - | Unsupported, use `string` function in GameMaker for string formatting |
| `ImGui::SeparatorText` | ✅ | [imgui_layout_gm.cpp](https://github.com/nommiin/ImGui_GM/blob/main/dll/gm/imgui_layout_gm.cpp#L35) | - |
| `ImGui::Button` | ✅ | [imgui_widgets_gm.cpp](https://github.com/nommiin/ImGui_GM/blob/main/dll/gm/imgui_widgets_gm.cpp#L7) | - |
| `ImGui::SmallButton` | ✅ | [imgui_widgets_gm.cpp](https://github.com/nommiin/ImGui_GM/blob/main/dll/gm/imgui_widgets_gm.cpp#L18) | - |
| `ImGui::InvisibleButton` | ✅ | [imgui_widgets_gm.cpp](https://github.com/nommiin/ImGui_GM/blob/main/dll/gm/imgui_widgets_gm.cpp#L25) | - |
| `ImGui::ArrowButton` | ✅ | [imgui_widgets_gm.cpp](https://github.com/nommiin/ImGui_GM/blob/main/dll/gm/imgui_widgets_gm.cpp#L38) | - |
| `ImGui::Checkbox` | ✅ | [imgui_widgets_gm.cpp](https://github.com/nommiin/ImGui_GM/blob/main/dll/gm/imgui_widgets_gm.cpp#L111) | - |
| `ImGui::CheckboxFlags` | ✅ | [imgui_widgets_gm.cpp](https://github.com/nommiin/ImGui_GM/blob/main/dll/gm/imgui_widgets_gm.cpp#L120) | - |
| `ImGui::RadioButton` | ✅ | [imgui_widgets_gm.cpp](https://github.com/nommiin/ImGui_GM/blob/main/dll/gm/imgui_widgets_gm.cpp#L130) | - |
| `ImGui::ProgressBar` | ✅ | [imgui_widgets_gm.cpp](https://github.com/nommiin/ImGui_GM/blob/main/dll/gm/imgui_widgets_gm.cpp#L138) | - |
| `ImGui::Bullet` | ✅ | [imgui_widgets_gm.cpp](https://github.com/nommiin/ImGui_GM/blob/main/dll/gm/imgui_widgets_gm.cpp#L151) | - |
| `ImGui::TextLink` | ✅ | [imgui_widgets_gm.cpp](https://github.com/nommiin/ImGui_GM/blob/main/dll/gm/imgui_widgets_gm.cpp#L156) | - |
| `ImGui::TextLinkOpenURL` | ✅ | [imgui_widgets_gm.cpp](https://github.com/nommiin/ImGui_GM/blob/main/dll/gm/imgui_widgets_gm.cpp#L164) | - |
| `ImGui::Image` | ✅ | [imgui_widgets_gm.cpp](https://github.com/nommiin/ImGui_GM/blob/main/dll/gm/imgui_widgets_gm.cpp#L47) | - |
| `ImGui::ImageButton` | ✅ | [imgui_widgets_gm.cpp](https://github.com/nommiin/ImGui_GM/blob/main/dll/gm/imgui_widgets_gm.cpp#L68) | - |
| `ImGui::BeginCombo` | ✅ | [imgui_combo_gm.cpp](https://github.com/nommiin/ImGui_GM/blob/main/dll/gm/imgui_combo_gm.cpp#L3) | - |
| `ImGui::EndCombo` | ✅ | [imgui_combo_gm.cpp](https://github.com/nommiin/ImGui_GM/blob/main/dll/gm/imgui_combo_gm.cpp#L12) | - |
| `ImGui::Combo` | ✅ | [imgui_combo_gm.cpp](https://github.com/nommiin/ImGui_GM/blob/main/dll/gm/imgui_combo_gm.cpp#L17) | - |
| `ImGui::DragFloat` | ✅ | [imgui_drag_gm.cpp](https://github.com/nommiin/ImGui_GM/blob/main/dll/gm/imgui_drag_gm.cpp#L3) | - |
| `ImGui::DragFloat2` | ✅ | [imgui_drag_gm.cpp](https://github.com/nommiin/ImGui_GM/blob/main/dll/gm/imgui_drag_gm.cpp#L22) | - |
| `ImGui::DragFloat3` | ✅ | [imgui_drag_gm.cpp](https://github.com/nommiin/ImGui_GM/blob/main/dll/gm/imgui_drag_gm.cpp#L46) | - |
| `ImGui::DragFloat4` | ✅ | [imgui_drag_gm.cpp](https://github.com/nommiin/ImGui_GM/blob/main/dll/gm/imgui_drag_gm.cpp#L70) | - |
| `ImGui::DragFloatRange2` | ✅ | [imgui_drag_gm.cpp](https://github.com/nommiin/ImGui_GM/blob/main/dll/gm/imgui_drag_gm.cpp#L121) | - |
| `ImGui::DragInt` | ✅ | [imgui_drag_gm.cpp](https://github.com/nommiin/ImGui_GM/blob/main/dll/gm/imgui_drag_gm.cpp#L146) | - |
| `ImGui::DragInt2` | ✅ | [imgui_drag_gm.cpp](https://github.com/nommiin/ImGui_GM/blob/main/dll/gm/imgui_drag_gm.cpp#L165) | - |
| `ImGui::DragInt3` | ✅ | [imgui_drag_gm.cpp](https://github.com/nommiin/ImGui_GM/blob/main/dll/gm/imgui_drag_gm.cpp#L189) | - |
| `ImGui::DragInt4` | ✅ | [imgui_drag_gm.cpp](https://github.com/nommiin/ImGui_GM/blob/main/dll/gm/imgui_drag_gm.cpp#L213) | - |
| `ImGui::DragIntRange2` | ✅ | [imgui_drag_gm.cpp](https://github.com/nommiin/ImGui_GM/blob/main/dll/gm/imgui_drag_gm.cpp#L264) | - |
| `ImGui::DragScalar` | ❌ | - | - |
| `ImGui::DragScalarN` | ❌ | - | - |
| `ImGui::SliderFloat` | ✅ | [imgui_slider_gm.cpp](https://github.com/nommiin/ImGui_GM/blob/main/dll/gm/imgui_slider_gm.cpp#L3) | - |
| `ImGui::SliderFloat2` | ✅ | [imgui_slider_gm.cpp](https://github.com/nommiin/ImGui_GM/blob/main/dll/gm/imgui_slider_gm.cpp#L20) | - |
| `ImGui::SliderFloat3` | ✅ | [imgui_slider_gm.cpp](https://github.com/nommiin/ImGui_GM/blob/main/dll/gm/imgui_slider_gm.cpp#L42) | - |
| `ImGui::SliderFloat4` | ✅ | [imgui_slider_gm.cpp](https://github.com/nommiin/ImGui_GM/blob/main/dll/gm/imgui_slider_gm.cpp#L64) | - |
| `ImGui::SliderAngle` | ✅ | [imgui_slider_gm.cpp](https://github.com/nommiin/ImGui_GM/blob/main/dll/gm/imgui_slider_gm.cpp#L259) | - |
| `ImGui::SliderInt` | ✅ | [imgui_slider_gm.cpp](https://github.com/nommiin/ImGui_GM/blob/main/dll/gm/imgui_slider_gm.cpp#L113) | - |
| `ImGui::SliderInt2` | ✅ | [imgui_slider_gm.cpp](https://github.com/nommiin/ImGui_GM/blob/main/dll/gm/imgui_slider_gm.cpp#L130) | - |
| `ImGui::SliderInt3` | ✅ | [imgui_slider_gm.cpp](https://github.com/nommiin/ImGui_GM/blob/main/dll/gm/imgui_slider_gm.cpp#L152) | - |
| `ImGui::SliderInt4` | ✅ | [imgui_slider_gm.cpp](https://github.com/nommiin/ImGui_GM/blob/main/dll/gm/imgui_slider_gm.cpp#L174) | - |
| `ImGui::SliderScalar` | ❌ | - | - |
| `ImGui::SliderScalarN` | ❌ | - | - |
| `ImGui::VSliderFloat` | ✅ | [imgui_slider_gm.cpp](https://github.com/nommiin/ImGui_GM/blob/main/dll/gm/imgui_slider_gm.cpp#L221) | - |
| `ImGui::VSliderInt` | ✅ | [imgui_slider_gm.cpp](https://github.com/nommiin/ImGui_GM/blob/main/dll/gm/imgui_slider_gm.cpp#L240) | - |
| `ImGui::VSliderScalar` | ❌ | - | - |
| `ImGui::InputText` | ✅ | [imgui_input_widgets_gm.cpp](https://github.com/nommiin/ImGui_GM/blob/main/dll/gm/imgui_input_widgets_gm.cpp#L3) | - |
| `ImGui::InputTextMultiline` | ✅ | [imgui_input_widgets_gm.cpp](https://github.com/nommiin/ImGui_GM/blob/main/dll/gm/imgui_input_widgets_gm.cpp#L16) | - |
| `ImGui::InputTextWithHint` | ✅ | [imgui_input_widgets_gm.cpp](https://github.com/nommiin/ImGui_GM/blob/main/dll/gm/imgui_input_widgets_gm.cpp#L33) | - |
| `ImGui::InputFloat` | ✅ | [imgui_input_widgets_gm.cpp](https://github.com/nommiin/ImGui_GM/blob/main/dll/gm/imgui_input_widgets_gm.cpp#L47) | - |
| `ImGui::InputFloat2` | ✅ | [imgui_input_widgets_gm.cpp](https://github.com/nommiin/ImGui_GM/blob/main/dll/gm/imgui_input_widgets_gm.cpp#L64) | - |
| `ImGui::InputFloat3` | ✅ | [imgui_input_widgets_gm.cpp](https://github.com/nommiin/ImGui_GM/blob/main/dll/gm/imgui_input_widgets_gm.cpp#L86) | - |
| `ImGui::InputFloat4` | ✅ | [imgui_input_widgets_gm.cpp](https://github.com/nommiin/ImGui_GM/blob/main/dll/gm/imgui_input_widgets_gm.cpp#L108) | - |
| `ImGui::InputInt` | ✅ | [imgui_input_widgets_gm.cpp](https://github.com/nommiin/ImGui_GM/blob/main/dll/gm/imgui_input_widgets_gm.cpp#L155) | - |
| `ImGui::InputInt2` | ✅ | [imgui_input_widgets_gm.cpp](https://github.com/nommiin/ImGui_GM/blob/main/dll/gm/imgui_input_widgets_gm.cpp#L170) | - |
| `ImGui::InputInt3` | ✅ | [imgui_input_widgets_gm.cpp](https://github.com/nommiin/ImGui_GM/blob/main/dll/gm/imgui_input_widgets_gm.cpp#L186) | - |
| `ImGui::InputInt4` | ✅ | [imgui_input_widgets_gm.cpp](https://github.com/nommiin/ImGui_GM/blob/main/dll/gm/imgui_input_widgets_gm.cpp#L202) | - |
| `ImGui::InputDouble` | ✅ | [imgui_input_widgets_gm.cpp](https://github.com/nommiin/ImGui_GM/blob/main/dll/gm/imgui_input_widgets_gm.cpp#L237) | - |
| `ImGui::InputScalar` | ❌ | - | - |
| `ImGui::InputScalarN` | ❌ | - | - |
| `ImGui::ColorEdit3` | ✅ | [imgui_color_gm.cpp](https://github.com/nommiin/ImGui_GM/blob/main/dll/gm/imgui_color_gm.cpp#L6) | - |
| `ImGui::ColorEdit4` | ✅ | [imgui_color_gm.cpp](https://github.com/nommiin/ImGui_GM/blob/main/dll/gm/imgui_color_gm.cpp#L32) | - |
| `ImGui::ColorPicker3` | ✅ | [imgui_color_gm.cpp](https://github.com/nommiin/ImGui_GM/blob/main/dll/gm/imgui_color_gm.cpp#L19) | - |
| `ImGui::ColorPicker4` | ✅ | [imgui_color_gm.cpp](https://github.com/nommiin/ImGui_GM/blob/main/dll/gm/imgui_color_gm.cpp#L63) | - |
| `ImGui::ColorButton` | ✅ | [imgui_color_gm.cpp](https://github.com/nommiin/ImGui_GM/blob/main/dll/gm/imgui_color_gm.cpp#L94) | - |
| `ImGui::SetColorEditOptions` | ✅ | [imgui_color_gm.cpp](https://github.com/nommiin/ImGui_GM/blob/main/dll/gm/imgui_color_gm.cpp#L111) | - |
| `ImGui::TreeNode` | ✅ | [imgui_tree_gm.cpp](https://github.com/nommiin/ImGui_GM/blob/main/dll/gm/imgui_tree_gm.cpp#L3) | - |
| `ImGui::TreeNodeV` | ❌ | - | Unsupported, use `string` function in GameMaker for string formatting |
| `ImGui::TreeNodeEx` | ✅ | [imgui_tree_gm.cpp](https://github.com/nommiin/ImGui_GM/blob/main/dll/gm/imgui_tree_gm.cpp#L10) | - |
| `ImGui::TreeNodeExV` | ❌ | - | Unsupported, use `string` function in GameMaker for string formatting |
| `ImGui::TreePush` | ✅ | [imgui_tree_gm.cpp](https://github.com/nommiin/ImGui_GM/blob/main/dll/gm/imgui_tree_gm.cpp#L19) | - |
| `ImGui::TreePop` | ✅ | [imgui_tree_gm.cpp](https://github.com/nommiin/ImGui_GM/blob/main/dll/gm/imgui_tree_gm.cpp#L26) | - |
| `ImGui::GetTreeNodeToLabelSpacing` | ✅ | [imgui_tree_gm.cpp](https://github.com/nommiin/ImGui_GM/blob/main/dll/gm/imgui_tree_gm.cpp#L31) | - |
| `ImGui::CollapsingHeader` | ✅ | [imgui_tree_gm.cpp](https://github.com/nommiin/ImGui_GM/blob/main/dll/gm/imgui_tree_gm.cpp#L45) | See [ImGuiReturnMask Usage](https://github.com/nommiin/ImGui_GM/wiki/ImGuiReturnMask-Usage) for more info the `mask` argument |
| `ImGui::SetNextItemOpen` | ✅ | [imgui_tree_gm.cpp](https://github.com/nommiin/ImGui_GM/blob/main/dll/gm/imgui_tree_gm.cpp#L36) | - |
| `ImGui::SetNextItemStorageID` | ❌ | - | - |
| `ImGui::Selectable` | ✅ | [imgui_selectable_gm.cpp](https://github.com/nommiin/ImGui_GM/blob/main/dll/gm/imgui_selectable_gm.cpp#L4) | - |
| `ImGui::BeginMultiSelect` | ✅ | [imgui_selectable_gm.cpp](https://github.com/nommiin/ImGui_GM/blob/main/dll/gm/imgui_selectable_gm.cpp#L45) | - |
| `ImGui::EndMultiSelect` | ✅ | [imgui_selectable_gm.cpp](https://github.com/nommiin/ImGui_GM/blob/main/dll/gm/imgui_selectable_gm.cpp#L77) | - |
| `ImGui::SetNextItemSelectionUserData` | ✅ | [imgui_selectable_gm.cpp](https://github.com/nommiin/ImGui_GM/blob/main/dll/gm/imgui_selectable_gm.cpp#L85) | - |
| `ImGui::IsItemToggledSelection` | ✅ | [imgui_selectable_gm.cpp](https://github.com/nommiin/ImGui_GM/blob/main/dll/gm/imgui_selectable_gm.cpp#L19) | - |
| `ImGui::BeginListBox` | ✅ | [imgui_listbox_gm.cpp](https://github.com/nommiin/ImGui_GM/blob/main/dll/gm/imgui_listbox_gm.cpp#L3) | - |
| `ImGui::EndListBox` | ✅ | [imgui_listbox_gm.cpp](https://github.com/nommiin/ImGui_GM/blob/main/dll/gm/imgui_listbox_gm.cpp#L14) | - |
| `ImGui::ListBox` | ✅ | [imgui_listbox_gm.cpp](https://github.com/nommiin/ImGui_GM/blob/main/dll/gm/imgui_listbox_gm.cpp#L19) | - |
| `ImGui::PlotLines` | ✅ | [imgui_plots_gm.cpp](https://github.com/nommiin/ImGui_GM/blob/main/dll/gm/imgui_plots_gm.cpp#L3) | - |
| `ImGui::PlotHistogram` | ✅ | [imgui_plots_gm.cpp](https://github.com/nommiin/ImGui_GM/blob/main/dll/gm/imgui_plots_gm.cpp#L27) | - |
| `ImGui::Value` | ✅ | [imgui_text_gm.cpp](https://github.com/nommiin/ImGui_GM/blob/main/dll/gm/imgui_text_gm.cpp#L56) | - |
| `ImGui::BeginMenuBar` | ✅ | [imgui_menu_gm.cpp](https://github.com/nommiin/ImGui_GM/blob/main/dll/gm/imgui_menu_gm.cpp#L3) | - |
| `ImGui::EndMenuBar` | ✅ | [imgui_menu_gm.cpp](https://github.com/nommiin/ImGui_GM/blob/main/dll/gm/imgui_menu_gm.cpp#L8) | - |
| `ImGui::BeginMainMenuBar` | ✅ | [imgui_menu_gm.cpp](https://github.com/nommiin/ImGui_GM/blob/main/dll/gm/imgui_menu_gm.cpp#L13) | - |
| `ImGui::EndMainMenuBar` | ✅ | [imgui_menu_gm.cpp](https://github.com/nommiin/ImGui_GM/blob/main/dll/gm/imgui_menu_gm.cpp#L18) | - |
| `ImGui::BeginMenu` | ✅ | [imgui_menu_gm.cpp](https://github.com/nommiin/ImGui_GM/blob/main/dll/gm/imgui_menu_gm.cpp#L23) | - |
| `ImGui::EndMenu` | ✅ | [imgui_menu_gm.cpp](https://github.com/nommiin/ImGui_GM/blob/main/dll/gm/imgui_menu_gm.cpp#L32) | - |
| `ImGui::MenuItem` | ✅ | [imgui_menu_gm.cpp](https://github.com/nommiin/ImGui_GM/blob/main/dll/gm/imgui_menu_gm.cpp#L37) | See [ImGuiReturnMask Usage](https://github.com/nommiin/ImGui_GM/wiki/ImGuiReturnMask-Usage) for more info the `mask` argument |
| `ImGui::BeginTooltip` | ✅ | [imgui_tooltips_gm.cpp](https://github.com/nommiin/ImGui_GM/blob/main/dll/gm/imgui_tooltips_gm.cpp#L3) | - |
| `ImGui::EndTooltip` | ✅ | [imgui_tooltips_gm.cpp](https://github.com/nommiin/ImGui_GM/blob/main/dll/gm/imgui_tooltips_gm.cpp#L8) | - |
| `ImGui::SetTooltip` | ✅ | [imgui_tooltips_gm.cpp](https://github.com/nommiin/ImGui_GM/blob/main/dll/gm/imgui_tooltips_gm.cpp#L13) | - |
| `ImGui::SetTooltipV` | ❌ | - | Unsupported, use `string` function in GameMaker for string formatting |
| `ImGui::BeginItemTooltip` | ✅ | [imgui_api_gm.cpp](https://github.com/nommiin/ImGui_GM/blob/main/dll/gm/imgui_api_gm.cpp#L321) | - |
| `ImGui::SetItemTooltip` | ✅ | [imgui_api_gm.cpp](https://github.com/nommiin/ImGui_GM/blob/main/dll/gm/imgui_api_gm.cpp#L326) | - |
| `ImGui::SetItemTooltipV` | ❌ | - | Unsupported, use `string` function in GameMaker for string formatting |
| `ImGui::BeginPopup` | ✅ | [imgui_popup_gm.cpp](https://github.com/nommiin/ImGui_GM/blob/main/dll/gm/imgui_popup_gm.cpp#L3) | - |
| `ImGui::BeginPopupModal` | ✅ | [imgui_popup_gm.cpp](https://github.com/nommiin/ImGui_GM/blob/main/dll/gm/imgui_popup_gm.cpp#L12) | See [ImGuiReturnMask Usage](https://github.com/nommiin/ImGui_GM/wiki/ImGuiReturnMask-Usage) for more info the `mask` argument |
| `ImGui::EndPopup` | ✅ | [imgui_popup_gm.cpp](https://github.com/nommiin/ImGui_GM/blob/main/dll/gm/imgui_popup_gm.cpp#L33) | - |
| `ImGui::OpenPopup` | ✅ | [imgui_popup_gm.cpp](https://github.com/nommiin/ImGui_GM/blob/main/dll/gm/imgui_popup_gm.cpp#L38) | - |
| `ImGui::OpenPopupOnItemClick` | ✅ | [imgui_popup_gm.cpp](https://github.com/nommiin/ImGui_GM/blob/main/dll/gm/imgui_popup_gm.cpp#L47) | - |
| `ImGui::CloseCurrentPopup` | ✅ | [imgui_popup_gm.cpp](https://github.com/nommiin/ImGui_GM/blob/main/dll/gm/imgui_popup_gm.cpp#L61) | - |
| `ImGui::BeginPopupContextItem` | ✅ | [imgui_popup_gm.cpp](https://github.com/nommiin/ImGui_GM/blob/main/dll/gm/imgui_popup_gm.cpp#L66) | - |
| `ImGui::BeginPopupContextWindow` | ✅ | [imgui_popup_gm.cpp](https://github.com/nommiin/ImGui_GM/blob/main/dll/gm/imgui_popup_gm.cpp#L80) | - |
| `ImGui::BeginPopupContextVoid` | ✅ | [imgui_popup_gm.cpp](https://github.com/nommiin/ImGui_GM/blob/main/dll/gm/imgui_popup_gm.cpp#L94) | - |
| `ImGui::IsPopupOpen` | ✅ | [imgui_popup_gm.cpp](https://github.com/nommiin/ImGui_GM/blob/main/dll/gm/imgui_popup_gm.cpp#L108) | - |
| `ImGui::BeginTable` | ✅ | [imgui_table_gm.cpp](https://github.com/nommiin/ImGui_GM/blob/main/dll/gm/imgui_table_gm.cpp#L3) | - |
| `ImGui::EndTable` | ✅ | [imgui_table_gm.cpp](https://github.com/nommiin/ImGui_GM/blob/main/dll/gm/imgui_table_gm.cpp#L19) | - |
| `ImGui::TableNextRow` | ✅ | [imgui_table_gm.cpp](https://github.com/nommiin/ImGui_GM/blob/main/dll/gm/imgui_table_gm.cpp#L24) | - |
| `ImGui::TableNextColumn` | ✅ | [imgui_table_gm.cpp](https://github.com/nommiin/ImGui_GM/blob/main/dll/gm/imgui_table_gm.cpp#L34) | - |
| `ImGui::TableSetColumnIndex` | ✅ | [imgui_table_gm.cpp](https://github.com/nommiin/ImGui_GM/blob/main/dll/gm/imgui_table_gm.cpp#L39) | - |
| `ImGui::TableSetupColumn` | ✅ | [imgui_table_gm.cpp](https://github.com/nommiin/ImGui_GM/blob/main/dll/gm/imgui_table_gm.cpp#L46) | - |
| `ImGui::TableSetupScrollFreeze` | ✅ | [imgui_table_gm.cpp](https://github.com/nommiin/ImGui_GM/blob/main/dll/gm/imgui_table_gm.cpp#L59) | - |
| `ImGui::TableHeader` | ✅ | [imgui_table_gm.cpp](https://github.com/nommiin/ImGui_GM/blob/main/dll/gm/imgui_table_gm.cpp#L77) | - |
| `ImGui::TableHeadersRow` | ✅ | [imgui_table_gm.cpp](https://github.com/nommiin/ImGui_GM/blob/main/dll/gm/imgui_table_gm.cpp#L67) | - |
| `ImGui::TableAngledHeadersRow` | ✅ | [imgui_table_gm.cpp](https://github.com/nommiin/ImGui_GM/blob/main/dll/gm/imgui_table_gm.cpp#L72) | - |
| `ImGui::TableGetSortSpecs` | ❌ | - | - |
| `ImGui::TableGetColumnCount` | ✅ | [imgui_table_gm.cpp](https://github.com/nommiin/ImGui_GM/blob/main/dll/gm/imgui_table_gm.cpp#L89) | - |
| `ImGui::TableGetColumnIndex` | ✅ | [imgui_table_gm.cpp](https://github.com/nommiin/ImGui_GM/blob/main/dll/gm/imgui_table_gm.cpp#L94) | - |
| `ImGui::TableGetRowIndex` | ✅ | [imgui_table_gm.cpp](https://github.com/nommiin/ImGui_GM/blob/main/dll/gm/imgui_table_gm.cpp#L116) | - |
| `ImGui::TableGetColumnName` | ✅ | [imgui_table_gm.cpp](https://github.com/nommiin/ImGui_GM/blob/main/dll/gm/imgui_table_gm.cpp#L99) | - |
| `ImGui::TableGetColumnFlags` | ✅ | [imgui_table_gm.cpp](https://github.com/nommiin/ImGui_GM/blob/main/dll/gm/imgui_table_gm.cpp#L108) | - |
| `ImGui::TableSetColumnEnabled` | ✅ | [imgui_table_gm.cpp](https://github.com/nommiin/ImGui_GM/blob/main/dll/gm/imgui_table_gm.cpp#L121) | - |
| `ImGui::TableGetHoveredColumn` | ✅ | [imgui_table_gm.cpp](https://github.com/nommiin/ImGui_GM/blob/main/dll/gm/imgui_table_gm.cpp#L84) | - |
| `ImGui::TableSetBgColor` | ✅ | [imgui_table_gm.cpp](https://github.com/nommiin/ImGui_GM/blob/main/dll/gm/imgui_table_gm.cpp#L129) | - |
| `ImGui::Columns` | ✅ | [imgui_table_gm.cpp](https://github.com/nommiin/ImGui_GM/blob/main/dll/gm/imgui_table_gm.cpp#L140) | - |
| `ImGui::NextColumn` | ✅ | [imgui_table_gm.cpp](https://github.com/nommiin/ImGui_GM/blob/main/dll/gm/imgui_table_gm.cpp#L152) | - |
| `ImGui::GetColumnIndex` | ✅ | [imgui_table_gm.cpp](https://github.com/nommiin/ImGui_GM/blob/main/dll/gm/imgui_table_gm.cpp#L157) | - |
| `ImGui::GetColumnWidth` | ✅ | [imgui_table_gm.cpp](https://github.com/nommiin/ImGui_GM/blob/main/dll/gm/imgui_table_gm.cpp#L162) | - |
| `ImGui::SetColumnWidth` | ✅ | [imgui_table_gm.cpp](https://github.com/nommiin/ImGui_GM/blob/main/dll/gm/imgui_table_gm.cpp#L170) | - |
| `ImGui::GetColumnOffset` | ✅ | [imgui_table_gm.cpp](https://github.com/nommiin/ImGui_GM/blob/main/dll/gm/imgui_table_gm.cpp#L178) | - |
| `ImGui::SetColumnOffset` | ✅ | [imgui_table_gm.cpp](https://github.com/nommiin/ImGui_GM/blob/main/dll/gm/imgui_table_gm.cpp#L186) | - |
| `ImGui::GetColumnsCount` | ✅ | [imgui_table_gm.cpp](https://github.com/nommiin/ImGui_GM/blob/main/dll/gm/imgui_table_gm.cpp#L194) | - |
| `ImGui::BeginTabBar` | ✅ | [imgui_tabs_gm.cpp](https://github.com/nommiin/ImGui_GM/blob/main/dll/gm/imgui_tabs_gm.cpp#L3) | - |
| `ImGui::EndTabBar` | ✅ | [imgui_tabs_gm.cpp](https://github.com/nommiin/ImGui_GM/blob/main/dll/gm/imgui_tabs_gm.cpp#L12) | - |
| `ImGui::BeginTabItem` | ✅ | [imgui_tabs_gm.cpp](https://github.com/nommiin/ImGui_GM/blob/main/dll/gm/imgui_tabs_gm.cpp#L17) | See [ImGuiReturnMask Usage](https://github.com/nommiin/ImGui_GM/wiki/ImGuiReturnMask-Usage) for more info the `mask` argument |
| `ImGui::EndTabItem` | ✅ | [imgui_tabs_gm.cpp](https://github.com/nommiin/ImGui_GM/blob/main/dll/gm/imgui_tabs_gm.cpp#L38) | - |
| `ImGui::TabItemButton` | ✅ | [imgui_tabs_gm.cpp](https://github.com/nommiin/ImGui_GM/blob/main/dll/gm/imgui_tabs_gm.cpp#L43) | - |
| `ImGui::SetTabItemClosed` | ✅ | [imgui_tabs_gm.cpp](https://github.com/nommiin/ImGui_GM/blob/main/dll/gm/imgui_tabs_gm.cpp#L52) | - |
| `ImGui::DockSpace` | ✅ | [imgui_docking_gm.cpp](https://github.com/nommiin/ImGui_GM/blob/main/dll/gm/imgui_docking_gm.cpp#L6) | - |
| `ImGui::DockSpaceOverViewport` | ✅ | [imgui_docking_gm.cpp](https://github.com/nommiin/ImGui_GM/blob/main/dll/gm/imgui_docking_gm.cpp#L44) | - |
| `ImGui::SetNextWindowDockID` | ✅ | [imgui_docking_gm.cpp](https://github.com/nommiin/ImGui_GM/blob/main/dll/gm/imgui_docking_gm.cpp#L74) | - |
| `ImGui::SetNextWindowClass` | ✅ | [imgui_docking_gm.cpp](https://github.com/nommiin/ImGui_GM/blob/main/dll/gm/imgui_docking_gm.cpp#L84) | - |
| `ImGui::GetWindowDockID` | ✅ | [imgui_docking_gm.cpp](https://github.com/nommiin/ImGui_GM/blob/main/dll/gm/imgui_docking_gm.cpp#L98) | - |
| `ImGui::IsWindowDocked` | ✅ | [imgui_docking_gm.cpp](https://github.com/nommiin/ImGui_GM/blob/main/dll/gm/imgui_docking_gm.cpp#L103) | - |
| `ImGui::LogToTTY` | ✅ | [imgui_api_gm.cpp](https://github.com/nommiin/ImGui_GM/blob/main/dll/gm/imgui_api_gm.cpp#L586) | - |
| `ImGui::LogToFile` | ✅ | [imgui_api_gm.cpp](https://github.com/nommiin/ImGui_GM/blob/main/dll/gm/imgui_api_gm.cpp#L605) | - |
| `ImGui::LogToClipboard` | ✅ | [imgui_api_gm.cpp](https://github.com/nommiin/ImGui_GM/blob/main/dll/gm/imgui_api_gm.cpp#L578) | - |
| `ImGui::LogFinish` | ✅ | [imgui_api_gm.cpp](https://github.com/nommiin/ImGui_GM/blob/main/dll/gm/imgui_api_gm.cpp#L595) | - |
| `ImGui::LogButtons` | ✅ | [imgui_api_gm.cpp](https://github.com/nommiin/ImGui_GM/blob/main/dll/gm/imgui_api_gm.cpp#L600) | - |
| `ImGui::LogText` | ✅ | [imgui_api_gm.cpp](https://github.com/nommiin/ImGui_GM/blob/main/dll/gm/imgui_api_gm.cpp#L542) | - |
| `ImGui::LogTextV` | ❌ | - | Unsupported, use `string` function in GameMaker for string formatting |
| `ImGui::BeginDragDropSource` | ✅ | [imgui_payload_gm.cpp](https://github.com/nommiin/ImGui_GM/blob/main/dll/gm/imgui_payload_gm.cpp#L3) | - |
| `ImGui::SetDragDropPayload` | ✅ | [imgui_payload_gm.cpp](https://github.com/nommiin/ImGui_GM/blob/main/dll/gm/imgui_payload_gm.cpp#L26) | See [Drag and Drop Payloads](https://github.com/nommiin/ImGui_GM/wiki/Drag-and-Drop-Payloads) for more info on handling payloads |
| `ImGui::EndDragDropSource` | ✅ | [imgui_payload_gm.cpp](https://github.com/nommiin/ImGui_GM/blob/main/dll/gm/imgui_payload_gm.cpp#L11) | - |
| `ImGui::BeginDragDropTarget` | ✅ | [imgui_payload_gm.cpp](https://github.com/nommiin/ImGui_GM/blob/main/dll/gm/imgui_payload_gm.cpp#L16) | - |
| `ImGui::AcceptDragDropPayload` | ✅ | [imgui_payload_gm.cpp](https://github.com/nommiin/ImGui_GM/blob/main/dll/gm/imgui_payload_gm.cpp#L59) | - |
| `ImGui::EndDragDropTarget` | ✅ | [imgui_payload_gm.cpp](https://github.com/nommiin/ImGui_GM/blob/main/dll/gm/imgui_payload_gm.cpp#L21) | - |
| `ImGui::GetDragDropPayload` | ✅ | [imgui_payload_gm.cpp](https://github.com/nommiin/ImGui_GM/blob/main/dll/gm/imgui_payload_gm.cpp#L73) | - |
| `ImGui::BeginDisabled` | ✅ | [imgui_api_gm.cpp](https://github.com/nommiin/ImGui_GM/blob/main/dll/gm/imgui_api_gm.cpp#L185) | - |
| `ImGui::EndDisabled` | ✅ | [imgui_api_gm.cpp](https://github.com/nommiin/ImGui_GM/blob/main/dll/gm/imgui_api_gm.cpp#L193) | - |
| `ImGui::PushClipRect` | ✅ | [imgui_layout_gm.cpp](https://github.com/nommiin/ImGui_GM/blob/main/dll/gm/imgui_layout_gm.cpp#L260) | - |
| `ImGui::PopClipRect` | ✅ | [imgui_layout_gm.cpp](https://github.com/nommiin/ImGui_GM/blob/main/dll/gm/imgui_layout_gm.cpp#L271) | - |
| `ImGui::SetItemDefaultFocus` | ✅ | [imgui_api_gm.cpp](https://github.com/nommiin/ImGui_GM/blob/main/dll/gm/imgui_api_gm.cpp#L415) | - |
| `ImGui::SetKeyboardFocusHere` | ✅ | [imgui_api_gm.cpp](https://github.com/nommiin/ImGui_GM/blob/main/dll/gm/imgui_api_gm.cpp#L388) | - |
| `ImGui::SetNavCursorVisible` | ✅ | [imgui_api_gm.cpp](https://github.com/nommiin/ImGui_GM/blob/main/dll/gm/imgui_api_gm.cpp#L396) | - |
| `ImGui::SetNextItemAllowOverlap` | ✅ | [imgui_api_gm.cpp](https://github.com/nommiin/ImGui_GM/blob/main/dll/gm/imgui_api_gm.cpp#L316) | - |
| `ImGui::IsItemHovered` | ✅ | [imgui_api_gm.cpp](https://github.com/nommiin/ImGui_GM/blob/main/dll/gm/imgui_api_gm.cpp#L198) | - |
| `ImGui::IsItemActive` | ✅ | [imgui_api_gm.cpp](https://github.com/nommiin/ImGui_GM/blob/main/dll/gm/imgui_api_gm.cpp#L206) | - |
| `ImGui::IsItemFocused` | ✅ | [imgui_api_gm.cpp](https://github.com/nommiin/ImGui_GM/blob/main/dll/gm/imgui_api_gm.cpp#L211) | - |
| `ImGui::IsItemClicked` | ✅ | [imgui_api_gm.cpp](https://github.com/nommiin/ImGui_GM/blob/main/dll/gm/imgui_api_gm.cpp#L216) | - |
| `ImGui::IsItemVisible` | ✅ | [imgui_api_gm.cpp](https://github.com/nommiin/ImGui_GM/blob/main/dll/gm/imgui_api_gm.cpp#L224) | - |
| `ImGui::IsItemEdited` | ✅ | [imgui_api_gm.cpp](https://github.com/nommiin/ImGui_GM/blob/main/dll/gm/imgui_api_gm.cpp#L229) | - |
| `ImGui::IsItemActivated` | ✅ | [imgui_api_gm.cpp](https://github.com/nommiin/ImGui_GM/blob/main/dll/gm/imgui_api_gm.cpp#L234) | - |
| `ImGui::IsItemDeactivated` | ✅ | [imgui_api_gm.cpp](https://github.com/nommiin/ImGui_GM/blob/main/dll/gm/imgui_api_gm.cpp#L239) | - |
| `ImGui::IsItemDeactivatedAfterEdit` | ✅ | [imgui_api_gm.cpp](https://github.com/nommiin/ImGui_GM/blob/main/dll/gm/imgui_api_gm.cpp#L244) | - |
| `ImGui::IsItemToggledOpen` | ✅ | [imgui_api_gm.cpp](https://github.com/nommiin/ImGui_GM/blob/main/dll/gm/imgui_api_gm.cpp#L249) | - |
| `ImGui::IsAnyItemHovered` | ✅ | [imgui_api_gm.cpp](https://github.com/nommiin/ImGui_GM/blob/main/dll/gm/imgui_api_gm.cpp#L254) | - |
| `ImGui::IsAnyItemActive` | ✅ | [imgui_api_gm.cpp](https://github.com/nommiin/ImGui_GM/blob/main/dll/gm/imgui_api_gm.cpp#L259) | - |
| `ImGui::IsAnyItemFocused` | ✅ | [imgui_api_gm.cpp](https://github.com/nommiin/ImGui_GM/blob/main/dll/gm/imgui_api_gm.cpp#L264) | - |
| `ImGui::GetItemID` | ✅ | [imgui_api_gm.cpp](https://github.com/nommiin/ImGui_GM/blob/main/dll/gm/imgui_api_gm.cpp#L269) | - |
| `ImGui::GetItemRectMin` | ✅ | - | Use X/Y wrappers. ImVec2 returns are unsupported |
| `ImGui::GetItemRectMax` | ✅ | - | Use X/Y wrappers. ImVec2 returns are unsupported |
| `ImGui::GetItemRectSize` | ✅ | - | Use Width/Height wrappers. ImVec2 returns are unsupported |
| `ImGui::GetMainViewport` | ✅ | [imgui_api_gm.cpp](https://github.com/nommiin/ImGui_GM/blob/main/dll/gm/imgui_api_gm.cpp#L526) | - |
| `ImGui::GetBackgroundDrawList` | ✅ | [imgui_drawlist_gm.cpp](https://github.com/nommiin/ImGui_GM/blob/main/dll/gm/imgui_drawlist_gm.cpp#L4) | - |
| `ImGui::GetForegroundDrawList` | ✅ | [imgui_drawlist_gm.cpp](https://github.com/nommiin/ImGui_GM/blob/main/dll/gm/imgui_drawlist_gm.cpp#L18) | - |
| `ImGui::IsRectVisible` | ✅ | [imgui_api_gm.cpp](https://github.com/nommiin/ImGui_GM/blob/main/dll/gm/imgui_api_gm.cpp#L332) | - |
| `ImGui::GetTime` | ✅ | [imgui_api_gm.cpp](https://github.com/nommiin/ImGui_GM/blob/main/dll/gm/imgui_api_gm.cpp#L342) | - |
| `ImGui::GetFrameCount` | ✅ | [imgui_api_gm.cpp](https://github.com/nommiin/ImGui_GM/blob/main/dll/gm/imgui_api_gm.cpp#L347) | - |
| `ImGui::GetDrawListSharedData` | ❌ | - | - |
| `ImGui::GetStyleColorName` | ✅ | [imgui_style_gm.cpp](https://github.com/nommiin/ImGui_GM/blob/main/dll/gm/imgui_style_gm.cpp#L86) | - |
| `ImGui::SetStateStorage` | ❌ | - | - |
| `ImGui::GetStateStorage` | ❌ | - | - |
| `ImGui::CalcTextSize` | ✅ | - | Use Width/Height wrappers. ImVec2 returns are unsupported |
| `ImGui::ColorConvertU32ToFloat4` | ❌ | - | - |
| `ImGui::ColorConvertFloat4ToU32` | ❌ | - | - |
| `ImGui::ColorConvertRGBtoHSV` | ❌ | - | - |
| `ImGui::ColorConvertHSVtoRGB` | ❌ | - | - |
| `ImGui::IsKeyDown` | ✅ | [imgui_input_gm.cpp](https://github.com/nommiin/ImGui_GM/blob/main/dll/gm/imgui_input_gm.cpp#L3) | - |
| `ImGui::IsKeyPressed` | ✅ | [imgui_input_gm.cpp](https://github.com/nommiin/ImGui_GM/blob/main/dll/gm/imgui_input_gm.cpp#L20) | - |
| `ImGui::IsKeyReleased` | ✅ | [imgui_input_gm.cpp](https://github.com/nommiin/ImGui_GM/blob/main/dll/gm/imgui_input_gm.cpp#L39) | - |
| `ImGui::IsKeyChordPressed` | ✅ | [imgui_input_gm.cpp](https://github.com/nommiin/ImGui_GM/blob/main/dll/gm/imgui_input_gm.cpp#L58) | - |
| `ImGui::GetKeyPressedAmount` | ✅ | [imgui_input_gm.cpp](https://github.com/nommiin/ImGui_GM/blob/main/dll/gm/imgui_input_gm.cpp#L84) | - |
| `ImGui::GetKeyName` | ✅ | [imgui_input_gm.cpp](https://github.com/nommiin/ImGui_GM/blob/main/dll/gm/imgui_input_gm.cpp#L98) | - |
| `ImGui::SetNextFrameWantCaptureKeyboard` | ✅ | [imgui_api_gm.cpp](https://github.com/nommiin/ImGui_GM/blob/main/dll/gm/imgui_api_gm.cpp#L619) | - |
| `ImGui::Shortcut` | ✅ | [imgui_input_gm.cpp](https://github.com/nommiin/ImGui_GM/blob/main/dll/gm/imgui_input_gm.cpp#L305) | - |
| `ImGui::SetNextItemShortcut` | ✅ | [imgui_input_gm.cpp](https://github.com/nommiin/ImGui_GM/blob/main/dll/gm/imgui_input_gm.cpp#L325) | - |
| `ImGui::SetItemKeyOwner` | ✅ | [imgui_input_gm.cpp](https://github.com/nommiin/ImGui_GM/blob/main/dll/gm/imgui_input_gm.cpp#L337) | - |
| `ImGui::IsMouseDown` | ✅ | [imgui_input_gm.cpp](https://github.com/nommiin/ImGui_GM/blob/main/dll/gm/imgui_input_gm.cpp#L116) | - |
| `ImGui::IsMouseClicked` | ✅ | [imgui_input_gm.cpp](https://github.com/nommiin/ImGui_GM/blob/main/dll/gm/imgui_input_gm.cpp#L134) | - |
| `ImGui::IsMouseReleased` | ✅ | [imgui_input_gm.cpp](https://github.com/nommiin/ImGui_GM/blob/main/dll/gm/imgui_input_gm.cpp#L155) | - |
| `ImGui::IsMouseDoubleClicked` | ✅ | [imgui_input_gm.cpp](https://github.com/nommiin/ImGui_GM/blob/main/dll/gm/imgui_input_gm.cpp#L173) | - |
| `ImGui::GetMouseClickedCount` | ✅ | [imgui_input_gm.cpp](https://github.com/nommiin/ImGui_GM/blob/main/dll/gm/imgui_input_gm.cpp#L191) | - |
| `ImGui::IsMouseHoveringRect` | ✅ | [imgui_input_gm.cpp](https://github.com/nommiin/ImGui_GM/blob/main/dll/gm/imgui_input_gm.cpp#L202) | - |
| `ImGui::IsMousePosValid` | ✅ | [imgui_input_gm.cpp](https://github.com/nommiin/ImGui_GM/blob/main/dll/gm/imgui_input_gm.cpp#L215) | - |
| `ImGui::IsAnyMouseDown` | ✅ | [imgui_input_gm.cpp](https://github.com/nommiin/ImGui_GM/blob/main/dll/gm/imgui_input_gm.cpp#L222) | - |
| `ImGui::GetMousePos` | ✅ | - | Use X/Y wrappers. ImVec2 returns are unsupported |
| `ImGui::GetMousePosOnOpeningCurrentPopup` | ✅ | - | Use X/Y wrappers. ImVec2 returns are unsupported |
| `ImGui::IsMouseDragging` | ✅ | [imgui_input_gm.cpp](https://github.com/nommiin/ImGui_GM/blob/main/dll/gm/imgui_input_gm.cpp#L227) | - |
| `ImGui::GetMouseDragDelta` | ✅ | - | Use X/Y wrappers. ImVec2 returns are unsupported |
| `ImGui::ResetMouseDragDelta` | ✅ | [imgui_input_gm.cpp](https://github.com/nommiin/ImGui_GM/blob/main/dll/gm/imgui_input_gm.cpp#L295) | - |
| `ImGui::GetMouseCursor` | ✅ | - | Handled internally by GML |
| `ImGui::SetMouseCursor` | ✅ | - | Handled internally by GML |
| `ImGui::SetNextFrameWantCaptureMouse` | ✅ | [imgui_api_gm.cpp](https://github.com/nommiin/ImGui_GM/blob/main/dll/gm/imgui_api_gm.cpp#L632) | - |
| `ImGui::GetClipboardText` | ✅ | [imgui_api_gm.cpp](https://github.com/nommiin/ImGui_GM/blob/main/dll/gm/imgui_api_gm.cpp#L549) | - |
| `ImGui::SetClipboardText` | ✅ | [imgui_api_gm.cpp](https://github.com/nommiin/ImGui_GM/blob/main/dll/gm/imgui_api_gm.cpp#L555) | - |
| `ImGui::LoadIniSettingsFromDisk` | ✅ | [imgui_api_gm.cpp](https://github.com/nommiin/ImGui_GM/blob/main/dll/gm/imgui_api_gm.cpp#L459) | - |
| `ImGui::LoadIniSettingsFromMemory` | ✅ | [imgui_api_gm.cpp](https://github.com/nommiin/ImGui_GM/blob/main/dll/gm/imgui_api_gm.cpp#L470) | - |
| `ImGui::SaveIniSettingsToDisk` | ✅ | [imgui_api_gm.cpp](https://github.com/nommiin/ImGui_GM/blob/main/dll/gm/imgui_api_gm.cpp#L482) | - |
| `ImGui::SaveIniSettingsToMemory` | ✅ | [imgui_api_gm.cpp](https://github.com/nommiin/ImGui_GM/blob/main/dll/gm/imgui_api_gm.cpp#L494) | - |
| `ImGui::DebugTextEncoding` | ❌ | - | - |
| `ImGui::DebugFlashStyleColor` | ❌ | - | - |
| `ImGui::DebugStartItemPicker` | ❌ | - | - |
| `ImGui::DebugCheckVersionAndDataLayout` | ❌ | - | - |
| `ImGui::DebugLog` | ✅ | [imgui_api_gm.cpp](https://github.com/nommiin/ImGui_GM/blob/main/dll/gm/imgui_api_gm.cpp#L564) | - |
| `ImGui::DebugLogV` | ❌ | - | Unsupported, use `string` function in GameMaker for string formatting |
| `ImGui::SetAllocatorFunctions` | ❌ | - | - |
| `ImGui::GetAllocatorFunctions` | ❌ | - | - |
| `ImGui::MemAlloc` | ❌ | - | - |
| `ImGui::MemFree` | ❌ | - | - |
| `ImGui::UpdatePlatformWindows` | ✅ | - | Handled internally by `__imgui_draw` function |
| `ImGui::RenderPlatformWindowsDefault` | ✅ | - | Handled internally by `__imgui_draw` function |
| `ImGui::DestroyPlatformWindows` | ✅ | - | Handled internally by `__imgui_shutdown` function |
| `ImGui::FindViewportByID` | ✅ | [imgui_docking_gm.cpp](https://github.com/nommiin/ImGui_GM/blob/main/dll/gm/imgui_docking_gm.cpp#L27) | - |
| `ImGui::FindViewportByPlatformHandle` | ✅ | [imgui_docking_gm.cpp](https://github.com/nommiin/ImGui_GM/blob/main/dll/gm/imgui_docking_gm.cpp#L35) | - |
| `ImGui::ClearIniSettings` | ✅ | [imgui_api_gm.cpp](https://github.com/nommiin/ImGui_GM/blob/main/dll/gm/imgui_api_gm.cpp#L502) | - |
| `ImGui::GetKeyChordName` | ✅ | [imgui_input_gm.cpp](https://github.com/nommiin/ImGui_GM/blob/main/dll/gm/imgui_input_gm.cpp#L107) | - |
| `ImGui::DockBuilderDockWindow` | ✅ | [imgui_docking_gm.cpp](https://github.com/nommiin/ImGui_GM/blob/main/dll/gm/imgui_docking_gm.cpp#L111) | - |
| `ImGui::DockBuilderGetNode` | ✅ | [imgui_docking_gm.cpp](https://github.com/nommiin/ImGui_GM/blob/main/dll/gm/imgui_docking_gm.cpp#L119) | - |
| `ImGui::DockBuilderAddNode` | ✅ | [imgui_docking_gm.cpp](https://github.com/nommiin/ImGui_GM/blob/main/dll/gm/imgui_docking_gm.cpp#L133) | - |
| `ImGui::DockBuilderRemoveNode` | ✅ | [imgui_docking_gm.cpp](https://github.com/nommiin/ImGui_GM/blob/main/dll/gm/imgui_docking_gm.cpp#L143) | - |
| `ImGui::DockBuilderRemoveNodeDockedWindows` | ✅ | [imgui_docking_gm.cpp](https://github.com/nommiin/ImGui_GM/blob/main/dll/gm/imgui_docking_gm.cpp#L150) | - |
| `ImGui::DockBuilderRemoveNodeChildNodes` | ✅ | [imgui_docking_gm.cpp](https://github.com/nommiin/ImGui_GM/blob/main/dll/gm/imgui_docking_gm.cpp#L159) | - |
| `ImGui::DockBuilderSetNodePos` | ✅ | [imgui_docking_gm.cpp](https://github.com/nommiin/ImGui_GM/blob/main/dll/gm/imgui_docking_gm.cpp#L166) | - |
| `ImGui::DockBuilderSetNodeSize` | ✅ | [imgui_docking_gm.cpp](https://github.com/nommiin/ImGui_GM/blob/main/dll/gm/imgui_docking_gm.cpp#L175) | - |
| `ImGui::DockBuilderSplitNode` | ✅ | [imgui_docking_gm.cpp](https://github.com/nommiin/ImGui_GM/blob/main/dll/gm/imgui_docking_gm.cpp#L184) | - |
| `ImGui::DockBuilderCopyDockSpace` | ✅ | [imgui_docking_gm.cpp](https://github.com/nommiin/ImGui_GM/blob/main/dll/gm/imgui_docking_gm.cpp#L198) | - |
| `ImGui::DockBuilderCopyNode` | ✅ | [imgui_docking_gm.cpp](https://github.com/nommiin/ImGui_GM/blob/main/dll/gm/imgui_docking_gm.cpp#L217) | - |
| `ImGui::DockBuilderCopyWindowSettings` | ✅ | [imgui_docking_gm.cpp](https://github.com/nommiin/ImGui_GM/blob/main/dll/gm/imgui_docking_gm.cpp#L235) | - |
| `ImGui::DockBuilderFinish` | ✅ | [imgui_docking_gm.cpp](https://github.com/nommiin/ImGui_GM/blob/main/dll/gm/imgui_docking_gm.cpp#L243) | - |

# Non-Standard

Below is a table of non-standard functions made specifically for ImGui

| Function | Link | Notes |
| -------- | ---- | ----- |
| `ImGui.GetItemRectMinX()` | [imgui_api_gm.cpp](https://github.com/nommiin/ImGui_GM/blob/main/dll/gm/imgui_api_gm.cpp#L274) | - |
| `ImGui.GetItemRectMinY()` | [imgui_api_gm.cpp](https://github.com/nommiin/ImGui_GM/blob/main/dll/gm/imgui_api_gm.cpp#L281) | - |
| `ImGui.GetItemRectMaxX()` | [imgui_api_gm.cpp](https://github.com/nommiin/ImGui_GM/blob/main/dll/gm/imgui_api_gm.cpp#L288) | - |
| `ImGui.GetItemRectMaxY()` | [imgui_api_gm.cpp](https://github.com/nommiin/ImGui_GM/blob/main/dll/gm/imgui_api_gm.cpp#L295) | - |
| `ImGui.GetItemRectSizeWidth()` | [imgui_api_gm.cpp](https://github.com/nommiin/ImGui_GM/blob/main/dll/gm/imgui_api_gm.cpp#L302) | - |
| `ImGui.GetItemRectSizeHeight()` | [imgui_api_gm.cpp](https://github.com/nommiin/ImGui_GM/blob/main/dll/gm/imgui_api_gm.cpp#L309) | - |
| `ImGui.CalcTextWidth(text, hide_text_after_double_hash, wrap_width)` | [imgui_api_gm.cpp](https://github.com/nommiin/ImGui_GM/blob/main/dll/gm/imgui_api_gm.cpp#L352) | - |
| `ImGui.CalcTextHeight(text, hide_text_after_double_hash, wrap_width)` | [imgui_api_gm.cpp](https://github.com/nommiin/ImGui_GM/blob/main/dll/gm/imgui_api_gm.cpp#L364) | - |
| `ImGui.PushAllowKeyboardFocus(allow_keyboard_focus)` | [imgui_api_gm.cpp](https://github.com/nommiin/ImGui_GM/blob/main/dll/gm/imgui_api_gm.cpp#L376) | - |
| `ImGui.PopAllowKeyboardFocus()` | [imgui_api_gm.cpp](https://github.com/nommiin/ImGui_GM/blob/main/dll/gm/imgui_api_gm.cpp#L383) | - |
| `ImGui.PushButtonRepeat(_repeat)` | [imgui_api_gm.cpp](https://github.com/nommiin/ImGui_GM/blob/main/dll/gm/imgui_api_gm.cpp#L403) | - |
| `ImGui.PopButtonRepeat()` | [imgui_api_gm.cpp](https://github.com/nommiin/ImGui_GM/blob/main/dll/gm/imgui_api_gm.cpp#L410) | - |
| `ImGui.ConfigFlagsGet()` | [imgui_api_gm.cpp](https://github.com/nommiin/ImGui_GM/blob/main/dll/gm/imgui_api_gm.cpp#L420) | - |
| `ImGui.IniFilename(val)` | [imgui_api_gm.cpp](https://github.com/nommiin/ImGui_GM/blob/main/dll/gm/imgui_api_gm.cpp#L428) | - |
| `ImGui.WantSaveIniSettings(val)` | [imgui_api_gm.cpp](https://github.com/nommiin/ImGui_GM/blob/main/dll/gm/imgui_api_gm.cpp#L443) | - |
| `ImGui.ConfigFlagsSet(flags)` | [imgui_api_gm.cpp](https://github.com/nommiin/ImGui_GM/blob/main/dll/gm/imgui_api_gm.cpp#L508) | - |
| `ImGui.ConfigFlagToggle(flag)` | [imgui_api_gm.cpp](https://github.com/nommiin/ImGui_GM/blob/main/dll/gm/imgui_api_gm.cpp#L516) | - |
| `ImGui.GetViewportID(vp)` | [imgui_api_gm.cpp](https://github.com/nommiin/ImGui_GM/blob/main/dll/gm/imgui_api_gm.cpp#L531) | - |
| `ImGui.WantKeyboardCapture(val)` | [imgui_api_gm.cpp](https://github.com/nommiin/ImGui_GM/blob/main/dll/gm/imgui_api_gm.cpp#L645) | - |
| `ImGui.WantMouseCapture(val)` | [imgui_api_gm.cpp](https://github.com/nommiin/ImGui_GM/blob/main/dll/gm/imgui_api_gm.cpp#L660) | - |
| `ImGui.WantTextInput(val)` | [imgui_api_gm.cpp](https://github.com/nommiin/ImGui_GM/blob/main/dll/gm/imgui_api_gm.cpp#L675) | - |
| `ImGui.WantMouseCaptureUnlessPopupClose(val)` | [imgui_api_gm.cpp](https://github.com/nommiin/ImGui_GM/blob/main/dll/gm/imgui_api_gm.cpp#L690) | - |
| `ImGui.DockBuilderGetCentralNode(node_id)` | [imgui_docking_gm.cpp](https://github.com/nommiin/ImGui_GM/blob/main/dll/gm/imgui_docking_gm.cpp#L126) | - |
| `ImGui.DragFloatN(label, v, v_speed, v_min, v_max, format, flags, count)` | [imgui_drag_gm.cpp](https://github.com/nommiin/ImGui_GM/blob/main/dll/gm/imgui_drag_gm.cpp#L94) | - |
| `ImGui.DragIntN(label, v, v_speed, v_min, v_max, format, flags, count)` | [imgui_drag_gm.cpp](https://github.com/nommiin/ImGui_GM/blob/main/dll/gm/imgui_drag_gm.cpp#L237) | - |
| `ImGui.DrawListAddLine(list, x1, y1, x2, y2, col, thickness)` | [imgui_drawlist_gm.cpp](https://github.com/nommiin/ImGui_GM/blob/main/dll/gm/imgui_drawlist_gm.cpp#L37) | - |
| `ImGui.DrawListAddRect(list, x1, y1, x2, y2, col, rounding, flags, thickness)` | [imgui_drawlist_gm.cpp](https://github.com/nommiin/ImGui_GM/blob/main/dll/gm/imgui_drawlist_gm.cpp#L52) | - |
| `ImGui.DrawListAddRectFilled(list, x1, y1, x2, y2, col, rounding, flags)` | [imgui_drawlist_gm.cpp](https://github.com/nommiin/ImGui_GM/blob/main/dll/gm/imgui_drawlist_gm.cpp#L71) | - |
| `ImGui.DrawListAddRectFilledMultiColor(list, x1, y1, x2, y2, col1, col2, col3, col4)` | [imgui_drawlist_gm.cpp](https://github.com/nommiin/ImGui_GM/blob/main/dll/gm/imgui_drawlist_gm.cpp#L88) | - |
| `ImGui.DrawListAddQuad(list, x1, y1, x2, y2, x3, y3, x4, y4, col, thickness)` | [imgui_drawlist_gm.cpp](https://github.com/nommiin/ImGui_GM/blob/main/dll/gm/imgui_drawlist_gm.cpp#L104) | - |
| `ImGui.DrawListAddQuadFilled(list, x1, y1, x2, y2, x3, y3, x4, y4, col)` | [imgui_drawlist_gm.cpp](https://github.com/nommiin/ImGui_GM/blob/main/dll/gm/imgui_drawlist_gm.cpp#L123) | - |
| `ImGui.DrawListAddTriangle(list, x1, y1, x2, y2, x3, y3, col, thickness)` | [imgui_drawlist_gm.cpp](https://github.com/nommiin/ImGui_GM/blob/main/dll/gm/imgui_drawlist_gm.cpp#L140) | - |
| `ImGui.DrawListAddTriangleFilled(list, x1, y1, x2, y2, x3, y3, col)` | [imgui_drawlist_gm.cpp](https://github.com/nommiin/ImGui_GM/blob/main/dll/gm/imgui_drawlist_gm.cpp#L157) | - |
| `ImGui.DrawListAddCircle(list, _x, _y, radius, col, num_segments, thickness)` | [imgui_drawlist_gm.cpp](https://github.com/nommiin/ImGui_GM/blob/main/dll/gm/imgui_drawlist_gm.cpp#L172) | - |
| `ImGui.DrawListAddCircleFilled(list, _x, _y, radius, col, num_segments)` | [imgui_drawlist_gm.cpp](https://github.com/nommiin/ImGui_GM/blob/main/dll/gm/imgui_drawlist_gm.cpp#L188) | - |
| `ImGui.DrawListAddNgon(list, _x, _y, radius, col, num_segments, thickness)` | [imgui_drawlist_gm.cpp](https://github.com/nommiin/ImGui_GM/blob/main/dll/gm/imgui_drawlist_gm.cpp#L202) | - |
| `ImGui.DrawListAddNgonFilled(list, _x, _y, radius, col, num_segments)` | [imgui_drawlist_gm.cpp](https://github.com/nommiin/ImGui_GM/blob/main/dll/gm/imgui_drawlist_gm.cpp#L218) | - |
| `ImGui.DrawListAddText(list, _x, _y, text, col)` | [imgui_drawlist_gm.cpp](https://github.com/nommiin/ImGui_GM/blob/main/dll/gm/imgui_drawlist_gm.cpp#L232) | - |
| `ImGui.DrawListAddTextFont(list, _x, _y, text, col, font, font_size, wrap_width)` | [imgui_drawlist_gm.cpp](https://github.com/nommiin/ImGui_GM/blob/main/dll/gm/imgui_drawlist_gm.cpp#L244) | - |
| `ImGui.DrawListAddPolyline(list, positions, col, flags, thickness, num_points)` | [imgui_drawlist_gm.cpp](https://github.com/nommiin/ImGui_GM/blob/main/dll/gm/imgui_drawlist_gm.cpp#L261) | - |
| `ImGui.DrawListAddConvexPolyFilled(list, positions, col, num_points)` | [imgui_drawlist_gm.cpp](https://github.com/nommiin/ImGui_GM/blob/main/dll/gm/imgui_drawlist_gm.cpp#L287) | - |
| `ImGui.DrawListAddBezierCubic(list, x1, y1, x2, y2, x3, y3, x4, y4, col, thickness, num_segments)` | [imgui_drawlist_gm.cpp](https://github.com/nommiin/ImGui_GM/blob/main/dll/gm/imgui_drawlist_gm.cpp#L309) | - |
| `ImGui.DrawListAddBezierQuadratic(list, x1, y1, x2, y2, x3, y3, col, thickness, num_segments)` | [imgui_drawlist_gm.cpp](https://github.com/nommiin/ImGui_GM/blob/main/dll/gm/imgui_drawlist_gm.cpp#L329) | - |
| `ImGui.DrawListPathFillConvex(list, col)` | [imgui_drawlist_gm.cpp](https://github.com/nommiin/ImGui_GM/blob/main/dll/gm/imgui_drawlist_gm.cpp#L347) | - |
| `ImGui.DrawListPathStroke(list, col, flags, thickness)` | [imgui_drawlist_gm.cpp](https://github.com/nommiin/ImGui_GM/blob/main/dll/gm/imgui_drawlist_gm.cpp#L356) | - |
| `ImGui.DrawListPathClear(list)` | [imgui_drawlist_gm.cpp](https://github.com/nommiin/ImGui_GM/blob/main/dll/gm/imgui_drawlist_gm.cpp#L369) | - |
| `ImGui.DrawListPathLineTo(list, _x, _y)` | [imgui_drawlist_gm.cpp](https://github.com/nommiin/ImGui_GM/blob/main/dll/gm/imgui_drawlist_gm.cpp#L377) | - |
| `ImGui.DrawListPathLineToMergeDuplicate(list, _x, _y)` | [imgui_drawlist_gm.cpp](https://github.com/nommiin/ImGui_GM/blob/main/dll/gm/imgui_drawlist_gm.cpp#L387) | - |
| `ImGui.DrawListPathArcTo(list, _x, _y, radius, a_min, a_max, num_segments)` | [imgui_drawlist_gm.cpp](https://github.com/nommiin/ImGui_GM/blob/main/dll/gm/imgui_drawlist_gm.cpp#L397) | - |
| `ImGui.DrawListPathArcToFast(list, _x, _y, radius, a_min_of_12, a_max_of_12)` | [imgui_drawlist_gm.cpp](https://github.com/nommiin/ImGui_GM/blob/main/dll/gm/imgui_drawlist_gm.cpp#L412) | - |
| `ImGui.DrawListPathBezierCubicCurveTo(list, x2, y2, x3, y3, x4, y4, num_segments)` | [imgui_drawlist_gm.cpp](https://github.com/nommiin/ImGui_GM/blob/main/dll/gm/imgui_drawlist_gm.cpp#L425) | - |
| `ImGui.DrawListPathBezierQuadraticCurveTo(list, x2, y2, x3, y3, num_segments)` | [imgui_drawlist_gm.cpp](https://github.com/nommiin/ImGui_GM/blob/main/dll/gm/imgui_drawlist_gm.cpp#L441) | - |
| `ImGui.DrawListPathRect(list, x1, y1, x2, y2, rounding, flags)` | [imgui_drawlist_gm.cpp](https://github.com/nommiin/ImGui_GM/blob/main/dll/gm/imgui_drawlist_gm.cpp#L455) | - |
| `ImGui.DrawListAddImage(list, sprite, subimg, x1, y1, x2, y2, col, uv)` | [imgui_drawlist_gm.cpp](https://github.com/nommiin/ImGui_GM/blob/main/dll/gm/imgui_drawlist_gm.cpp#L471) | - |
| `ImGui.DrawListAddImageRounded(list, sprite, subimg, x1, y1, x2, y2, col, rounding, flags, uv)` | [imgui_drawlist_gm.cpp](https://github.com/nommiin/ImGui_GM/blob/main/dll/gm/imgui_drawlist_gm.cpp#L494) | - |
| `ImGui.DrawListPushClipRect(list, clip_min_x, clip_min_y, clip_max_x, clip_max_y, intersect_with_current_clip_rect)` | [imgui_drawlist_gm.cpp](https://github.com/nommiin/ImGui_GM/blob/main/dll/gm/imgui_drawlist_gm.cpp#L516) | - |
| `ImGui.DrawlistPushClipRectFullscreen(list)` | [imgui_drawlist_gm.cpp](https://github.com/nommiin/ImGui_GM/blob/main/dll/gm/imgui_drawlist_gm.cpp#L529) | - |
| `ImGui.DrawListPopClipRect(list)` | [imgui_drawlist_gm.cpp](https://github.com/nommiin/ImGui_GM/blob/main/dll/gm/imgui_drawlist_gm.cpp#L536) | - |
| `ImGui.DrawListPushTextureID(list, sprite, subimg)` | [imgui_drawlist_gm.cpp](https://github.com/nommiin/ImGui_GM/blob/main/dll/gm/imgui_drawlist_gm.cpp#L544) | - |
| `ImGui.DrawListPopTextureID(list)` | [imgui_drawlist_gm.cpp](https://github.com/nommiin/ImGui_GM/blob/main/dll/gm/imgui_drawlist_gm.cpp#L555) | - |
| `ImGui.DrawListFlagsGet(list)` | [imgui_drawlist_gm.cpp](https://github.com/nommiin/ImGui_GM/blob/main/dll/gm/imgui_drawlist_gm.cpp#L563) | - |
| `ImGui.DrawListFlagsSet(list, flags)` | [imgui_drawlist_gm.cpp](https://github.com/nommiin/ImGui_GM/blob/main/dll/gm/imgui_drawlist_gm.cpp#L571) | - |
| `ImGui.DrawListFlagToggle(list, flag)` | [imgui_drawlist_gm.cpp](https://github.com/nommiin/ImGui_GM/blob/main/dll/gm/imgui_drawlist_gm.cpp#L580) | - |
| `ImGui.MemoryEditorShowWindow(title, buffer, offset, size)` | [imgui_ext_memeditor_gm.cpp](https://github.com/nommiin/ImGui_GM/blob/main/dll/gm/imgui_ext_memeditor_gm.cpp#L5) | - |
| `ImGui.MemoryEditorDrawContents(buffer, offset, size)` | [imgui_ext_memeditor_gm.cpp](https://github.com/nommiin/ImGui_GM/blob/main/dll/gm/imgui_ext_memeditor_gm.cpp#L18) | - |
| `ImGui.AddFontFromFile(file, size)` | [imgui_fonts_gm.cpp](https://github.com/nommiin/ImGui_GM/blob/main/dll/gm/imgui_fonts_gm.cpp#L25) | - |
| `ImGui.AddFontDefault()` | [imgui_fonts_gm.cpp](https://github.com/nommiin/ImGui_GM/blob/main/dll/gm/imgui_fonts_gm.cpp#L41) | - |
| `ImGui.GetMousePosX()` | [imgui_input_gm.cpp](https://github.com/nommiin/ImGui_GM/blob/main/dll/gm/imgui_input_gm.cpp#L240) | - |
| `ImGui.GetMousePosY()` | [imgui_input_gm.cpp](https://github.com/nommiin/ImGui_GM/blob/main/dll/gm/imgui_input_gm.cpp#L247) | - |
| `ImGui.GetMousePosOnOpeningCurrentPopupX()` | [imgui_input_gm.cpp](https://github.com/nommiin/ImGui_GM/blob/main/dll/gm/imgui_input_gm.cpp#L254) | - |
| `ImGui.GetMousePosOnOpeningCurrentPopupY()` | [imgui_input_gm.cpp](https://github.com/nommiin/ImGui_GM/blob/main/dll/gm/imgui_input_gm.cpp#L261) | - |
| `ImGui.GetMouseDragDeltaX(button, lock_threshold)` | [imgui_input_gm.cpp](https://github.com/nommiin/ImGui_GM/blob/main/dll/gm/imgui_input_gm.cpp#L268) | - |
| `ImGui.GetMouseDragDeltaY(button, lock_threshold)` | [imgui_input_gm.cpp](https://github.com/nommiin/ImGui_GM/blob/main/dll/gm/imgui_input_gm.cpp#L281) | - |
| `ImGui.InputFloatN(label, v, len, step, step_fast, format, flags)` | [imgui_input_widgets_gm.cpp](https://github.com/nommiin/ImGui_GM/blob/main/dll/gm/imgui_input_widgets_gm.cpp#L130) | - |
| `ImGui.InputIntN(label, v, flags, count)` | [imgui_input_widgets_gm.cpp](https://github.com/nommiin/ImGui_GM/blob/main/dll/gm/imgui_input_widgets_gm.cpp#L218) | - |
| `ImGui.GetCursorStartPosX()` | [imgui_layout_gm.cpp](https://github.com/nommiin/ImGui_GM/blob/main/dll/gm/imgui_layout_gm.cpp#L89) | - |
| `ImGui.GetCursorStartPosY()` | [imgui_layout_gm.cpp](https://github.com/nommiin/ImGui_GM/blob/main/dll/gm/imgui_layout_gm.cpp#L96) | - |
| `ImGui.GetCursorScreenPosX()` | [imgui_layout_gm.cpp](https://github.com/nommiin/ImGui_GM/blob/main/dll/gm/imgui_layout_gm.cpp#L103) | - |
| `ImGui.GetCursorScreenPosY()` | [imgui_layout_gm.cpp](https://github.com/nommiin/ImGui_GM/blob/main/dll/gm/imgui_layout_gm.cpp#L110) | - |
| `ImGui.GetContentRegionAvailX()` | [imgui_layout_gm.cpp](https://github.com/nommiin/ImGui_GM/blob/main/dll/gm/imgui_layout_gm.cpp#L167) | - |
| `ImGui.GetContentRegionAvailY()` | [imgui_layout_gm.cpp](https://github.com/nommiin/ImGui_GM/blob/main/dll/gm/imgui_layout_gm.cpp#L174) | - |
| `ImGui.GetContentRegionMaxX()` | [imgui_layout_gm.cpp](https://github.com/nommiin/ImGui_GM/blob/main/dll/gm/imgui_layout_gm.cpp#L181) | - |
| `ImGui.GetContentRegionMaxY()` | [imgui_layout_gm.cpp](https://github.com/nommiin/ImGui_GM/blob/main/dll/gm/imgui_layout_gm.cpp#L188) | - |
| `ImGui.GetWindowContentRegionMinX()` | [imgui_layout_gm.cpp](https://github.com/nommiin/ImGui_GM/blob/main/dll/gm/imgui_layout_gm.cpp#L195) | - |
| `ImGui.GetWindowContentRegionMinY()` | [imgui_layout_gm.cpp](https://github.com/nommiin/ImGui_GM/blob/main/dll/gm/imgui_layout_gm.cpp#L202) | - |
| `ImGui.GetWindowContentRegionMaxX()` | [imgui_layout_gm.cpp](https://github.com/nommiin/ImGui_GM/blob/main/dll/gm/imgui_layout_gm.cpp#L209) | - |
| `ImGui.GetWindowContentRegionMaxY()` | [imgui_layout_gm.cpp](https://github.com/nommiin/ImGui_GM/blob/main/dll/gm/imgui_layout_gm.cpp#L216) | - |
| `ImGui.GetDragDropPayloadType()` | [imgui_payload_gm.cpp](https://github.com/nommiin/ImGui_GM/blob/main/dll/gm/imgui_payload_gm.cpp#L83) | - |
| `ImGui.CreateMultiSelectBasicStorage(yystruct)` | [imgui_selectable_gm.cpp](https://github.com/nommiin/ImGui_GM/blob/main/dll/gm/imgui_selectable_gm.cpp#L26) | - |
| `ImGui.DestroyMultiSelectBasicStorage(storage_ptr)` | [imgui_selectable_gm.cpp](https://github.com/nommiin/ImGui_GM/blob/main/dll/gm/imgui_selectable_gm.cpp#L36) | - |
| `ImGui.SelectionStorageApplyRequests(selection, ms_io)` | [imgui_selectable_gm.cpp](https://github.com/nommiin/ImGui_GM/blob/main/dll/gm/imgui_selectable_gm.cpp#L58) | - |
| `ImGui.SelectionStorageContains(selection, idx)` | [imgui_selectable_gm.cpp](https://github.com/nommiin/ImGui_GM/blob/main/dll/gm/imgui_selectable_gm.cpp#L91) | - |
| `ImGui.SelectionStorageSize(selection, value)` | [imgui_selectable_gm.cpp](https://github.com/nommiin/ImGui_GM/blob/main/dll/gm/imgui_selectable_gm.cpp#L108) | - |
| `ImGui.SliderFloatN(label, v, v_speed, v_min, v_max, format, flags, count)` | [imgui_slider_gm.cpp](https://github.com/nommiin/ImGui_GM/blob/main/dll/gm/imgui_slider_gm.cpp#L86) | - |
| `ImGui.SliderIntN(label, v, v_min, v_max, format, flags, count)` | [imgui_slider_gm.cpp](https://github.com/nommiin/ImGui_GM/blob/main/dll/gm/imgui_slider_gm.cpp#L196) | - |
| `ImGui.GetStyleColor(idx)` | [imgui_style_gm.cpp](https://github.com/nommiin/ImGui_GM/blob/main/dll/gm/imgui_style_gm.cpp#L79) | - |
| `ImGui.SetStyleColor(idx, col, alpha)` | [imgui_style_gm.cpp](https://github.com/nommiin/ImGui_GM/blob/main/dll/gm/imgui_style_gm.cpp#L94) | - |
| `ImGui.SetStyleVar(idx, val, val2)` | [imgui_style_gm.cpp](https://github.com/nommiin/ImGui_GM/blob/main/dll/gm/imgui_style_gm.cpp#L107) | - |
| `ImGui.Surface(surface, color, alpha, width, height, uv)` | [imgui_widgets_gm.cpp](https://github.com/nommiin/ImGui_GM/blob/main/dll/gm/imgui_widgets_gm.cpp#L90) | - |
| `ImGui.BeginChildFrame(_id, width, height, flags)` | [imgui_window_gm.cpp](https://github.com/nommiin/ImGui_GM/blob/main/dll/gm/imgui_window_gm.cpp#L49) | - |
| `ImGui.EndChildFrame()` | [imgui_window_gm.cpp](https://github.com/nommiin/ImGui_GM/blob/main/dll/gm/imgui_window_gm.cpp#L62) | - |
| `ImGui.GetWindowPosX()` | [imgui_window_gm.cpp](https://github.com/nommiin/ImGui_GM/blob/main/dll/gm/imgui_window_gm.cpp#L98) | - |
| `ImGui.GetWindowPosY()` | [imgui_window_gm.cpp](https://github.com/nommiin/ImGui_GM/blob/main/dll/gm/imgui_window_gm.cpp#L105) | - |
