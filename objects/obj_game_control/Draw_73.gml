if (KeyCheck("Primary Action")) {
    
    var st = DrawSet([c_lime]);
    if (start_x != mouse_x && start_y != mouse_y) {
    	draw_rectangle(start_x, start_y, mouse_x, mouse_y, true);
    }
    DrawSet(st);
    
}