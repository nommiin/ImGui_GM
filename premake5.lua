workspace "dll"
    configurations { "Debug", "Release" }
    if os.ishost("macosx") then
        architecture "universal"
    else
        architecture "x86_64"
    end
    location "dll"

project "imgui_gm"
    kind "SharedLib"
    language "C++"
    cppdialect "C++14"
    targetdir "extensions/ImGui_GM/"
    defines { "GDKEXTENSION_EXPORTS", "__YYDEFINE_EXTENSION_FUNCTIONS__" }

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

    -- Windows
    filter { "action:vs*" }
        defines "OS_Windows"

    -- Ubuntu
    filter { "action:gmake*" }
        if os.ishost("linux") then
            defines "OS_Linux"
            pic "on"
            buildoptions {"-shared", "-o extensions/ImGui_GM/imgui_gm.so", "-Werror"}
        else
            defines "OS_Mac"
        end
