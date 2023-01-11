ImGui.__Render();

draw_sprite_ext(sprAngy, 0, 640, 640, 1, 1, 0, test.Color(), test.Alpha());

draw_text(4, 4, string("FPS: {0} ({1})", fps, round(fps_real)));

draw_rectangle_colour(4, 256 + 4, 32, 256 + 32, c, c,c,c, false)