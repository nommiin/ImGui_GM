var __yyc = static_get(ImGui);
__yyc.__Render();

draw_set_colour(c_white);
draw_text(4, 4, string("FPS: {0} ({1})\nStr: {2}\nStr2: {3}\nStr3: {4}", fps, round(fps_real), str, str2, str3));