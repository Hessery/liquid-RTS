if (global.fullscreen) { exit }

var st = DrawSet([c_grey]);

var mx = window_mouse_get_x()
var my = window_mouse_get_y();


draw_rectangle(display_width - width, 0, display_width, height, false);
if (mx > display_width - height && my < height) {
    DrawSet([c_red]);
    draw_rectangle(display_width - height, 0, display_width, height, false);
}

DrawSet([c_black])

draw_rectangle(display_width - width, 0, display_width, height, true);
draw_rectangle(display_width - height, 0, display_width, height, true);
draw_rectangle(1, 1, display_width - 2, display_height - 2, true);

DrawSet(st);












