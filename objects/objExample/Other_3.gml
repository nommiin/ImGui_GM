///
/// Game End Event
///

/// Save settings
if ini_filename != "" {
    ImGui.SaveIniSettingsToDisk(ini_filename);
}
ImGui.__Shutdown();
