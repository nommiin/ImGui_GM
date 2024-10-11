@echo off

Rem Variables

set gm_program=GameMakerStudio2-Beta
set gm_runtime=runtime-2024.1300.0.733

Rem Copy ImGui files (updates)

cd imgui
copy "..\thirdparty\imgui\im*.cpp"
copy "..\thirdparty\imgui\im*.h"
copy "..\thirdparty\imgui\backends\imgui_impl_dx11.*"
copy "..\thirdparty\imgui\backends\imgui_impl_win32.*"
cd ..

Rem Copy GameMaker files (once)

:: set gm_base=%PROGRAMDATA%\%gm_program%\Cache\runtimes\%gm_runtime%\yyc\include
:: copy "%gm_base%\extension\YYRunnerInterface.h" "Extension_Interface.h"
:: copy "%gm_base%\YYStd.h"
:: copy "%gm_base%\Ref.h"

:: echo #include "Ref.h" > YYRValue.h
:: type %gm_base%\YYRValue.h >> YYRValue.h
:: echo Copied and modified YYRValue.h
