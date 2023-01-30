workspace "dll"
    configurations { "Debug", "Release" }
    architecture "x86_64"
    location "dll"

project "imgui_gm"
    kind "SharedLib"
    language "C++"
    targetdir "extensions/ImGui_GM/"
    defines { "OS_Windows", "GDKEXTENSION_EXPORTS", "__YYDEFINE_EXTENSION_FUNCTIONS__" }

    files {"dll/*.h", "dll/*.cpp"}
    vpaths {
        ["Header Files"] = "**.h",
        ["Source Files"] = {"**.c", "**.cpp"},
        ["Source Files/Wrappers"] = {"dll/imgui_*_gm.cpp"}
     }
     
    filter "configurations:Debug"
      defines { "DEBUG" }
      symbols "On"

   filter "configurations:Release"
      defines { "NDEBUG" }
      optimize "On"