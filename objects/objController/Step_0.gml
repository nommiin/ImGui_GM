var __yyc = static_get(ImGui);
__yyc.ShowAboutWindow();
__yyc.ShowStyleEditor();

__yyc.SetNextWindowPos(96, 32, ImGuiCond.FirstUseEver);
__yyc.SetNextWindowSize(480, 640, ImGuiCond.FirstUseEver);

if (__yyc.Begin("Test Window", true)) {
	// Text Widgets
	__yyc.Text("Text");
	__yyc.TextColored("TextColored", c_green, 1);
	__yyc.TextColored("Red: " + string(c_red), c_red, 1);
	__yyc.TextColored("Green: " + string(c_green), c_green, 1);
	__yyc.TextColored("Blue: " + string(c_blue), c_blue, 1);
	__yyc.TextColored("White: " + string(c_white), c_white, 1);
	
	// Input Widgets
	str = __yyc.InputText("InputText", str);
	if (__yyc.Button("Press Me")) {
		show_message(string("your input was: {0}", str));	
	}
	
	//var a = sprite_get_texture(Sprite1, 0);
	
	__yyc.Text("image here!");
	__yyc.Image(Sprite1);
	__yyc.Text("image done");
	
	str2 = __yyc.InputTextWithHint("InputTextWithHint", "(hint goes here ^_^)", str2);
	str3 = __yyc.InputTextMultiline("InputTextMultiline", str3);
	__yyc.End();
}