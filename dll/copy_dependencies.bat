@echo off
Rem Copies needed .cpp & .h files from thirdparty/*
Rem Sorry if this isn't the right way to do this
Rem At least it works... right?

copy "thirdparty\imgui\im*.cpp"
copy "thirdparty\imgui\im*.h"
copy "thirdparty\imgui\backends\imgui_impl_dx11.*"

copy "thirdparty\steamworks\source\Steamworks_vs\Steamworks\Extension_Interface.h"
copy "thirdparty\steamworks\source\Steamworks_vs\Steamworks\YYRValue.h"
copy "thirdparty\steamworks\source\Steamworks_vs\Steamworks\Ref.h"