workspace "dll"
    configurations { "Debug", "Release" }
    location "dll"
    architecture "x86_64"

project "imgui_gm"
    kind "SharedLib"
    language "C++"
    cppdialect "C++14"
    targetdir "extensions/ImGui_GM/"
    defines { "GDKEXTENSION_EXPORTS", "__YYDEFINE_EXTENSION_FUNCTIONS__" }

    includedirs { "dll", "dll/imgui" }

    files {
        "dll/*.h",
        "dll/*.cpp",
        "dll/imgui/*.h",
        "dll/imgui/*.cpp",
        "dll/gm/*.h",
        "dll/gm/*.cpp",
    }
    vpaths {
        ["Wrappers/ImGui"] = {"dll/gm/*_gm.cpp", },
        ["ImGui/GM"] = {"dll/gm/**.h", "dll/gm/**.c", "dll/gm/**.cpp", },
        ["ImGui/Internal"] = {
            "dll/imgui/**.h", "dll/imgui/**.c", "dll/imgui/**.cpp",
        },
        ["ImGui"] = {
            "dll/imgui_gm.h", "dll/imgui_gm.cpp",
            "dll/imgui_impl_gm.h", "dll/imgui_impl_gm.cpp",
        },
        ["Header/ImGui"] = {"dll/imgui_gm_*.h", },
    }


    filter { "action:gmake*" }
        defines "OS_Linux"
        pic "on"
        buildoptions {
            "-shared", "-o extensions/ImGui_GM/imgui_gm.so", "-Werror"
        }

    filter "configurations:Debug"
        defines { "DEBUG" }
        symbols "On"
        postbuildcommands { "set NO_COLOR=1 && node ../tools/brief/main.js" }

    filter "configurations:Release"
        defines { "NDEBUG" }
        optimize "On"
        postbuildcommands { "set NO_COLOR=1 && node ../tools/brief/main.js" }

    -- Windows
    filter { "action:vs*" }
        defines "OS_Windows"

    -- Ubuntu
    filter { "action:gmake*" }
        if _OPTIONS["os"] == "linux" or os.ishost("linux") then
            defines "OS_Linux"
            pic "on"
            targetextension ".so"
            buildoptions {
                "-shared", "-o extensions/ImGui_GM/imgui_gm.so", "-Werror"
            }
        else
            defines "OS_Mac"
        end
