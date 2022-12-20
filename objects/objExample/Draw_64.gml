ImGui.__Render();

draw_text(4, 4, string("FPS: {0} ({1})\nbuffer: {2}", fps, round(fps_real), buffer_peek(buff, 0, buffer_string)));