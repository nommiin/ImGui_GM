ImGui.__Render();
draw_text(4, 4, string("FPS: {0} ({1})", fps, round(fps_real)));

draw_sprite_ext(sprAngy, 0, 128, 256, 1, 1, 0, col4.Color(), col4.Alpha());