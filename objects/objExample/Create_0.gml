ImGui.__Initialize();

open = true;
frame = 0;
surface = -1;

combo = ["First Item", "Second Item", "Third Item"];
combo_sel = 0;

color = c_white;

text = "hiii";

buff = buffer_create(32, buffer_fixed, 1);
buffer_write(buff, buffer_string, "hewwo");