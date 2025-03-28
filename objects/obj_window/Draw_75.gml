if (window_get_fullscreen()) { exit }

var st = DrawSet([c_grey]);

draw_rectangle(display_width - width, 0, display_width, height, false);
if (mouse_x > display_width - height && mouse_y < height) {
    DrawSet([c_red]);
    draw_rectangle(display_width - height, 0, display_width, height, false);
}

DrawSet([c_black])

draw_rectangle(display_width - width, 0, display_width, height, true);
draw_rectangle(display_width - height, 0, display_width, height, true);
draw_rectangle(1, 1, display_width - 2, display_height - 2, true);

DrawSet(st);












