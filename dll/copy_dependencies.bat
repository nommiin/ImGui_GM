@echo off
Rem Copies ImGui into project and Runner headers
Rem Sorry if this isn't the right way to do this
Rem At least it works... right?

copy "thirdparty\imgui\im*.cpp"
copy "thirdparty\imgui\im*.h"
copy "thirdparty\imgui\backends\imgui_impl_dx11.*"
copy "thirdparty\imgui\backends\imgui_impl_win32.*"

set program=GameMakerStudio2-Beta
set runtime=runtime-2023.100.0.273
set base=%PROGRAMDATA%\%program%\Cache\runtimes\%runtime%\yyc\include

copy "%base%\extension\YYRunnerInterface.h" "Extension_Interface.h"
copy "%base%\YYStd.h"
copy "%base%\Ref.h"

echo #include "Ref.h" >> YYRValue.h
type %base%\YYRValue.h >> YYRValue.h
echo Copied and modified YYRValue.h