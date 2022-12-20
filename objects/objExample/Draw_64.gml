ImGui.__Render();

draw_text(4, 4, string("FPS: {0} ({1})\nopen: {2}", fps, round(fps_real), open));

draw_circle_colour(64, 64, 8, col4, col4, false);

draw_set_alpha(((col4 >> 24) & 0xFF) / 255);
draw_circle_colour(64, 96, 8, col4, col4, false);
draw_set_alpha(1);