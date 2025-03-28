if (window_get_fullscreen()) { exit }

if (KeyCheckPressed("Primary Action") &&
    mouse_x > display_width - height &&
    mouse_y < height
) { game_end() }

if (
    KeyCheckPressed("Primary Action") &&
    mouse_x < display_width &&
    mouse_y < height &&
    mouse_x > display_width - width
) {
    
    x_offset = window_mouse_get_x();
    y_offset = window_mouse_get_y();
    dragging = true;
    
}

if (KeyCheck("Primary Action") && dragging) {
    
    var display_mouse_x = display_mouse_get_x()
    var display_mouse_y = display_mouse_get_y();
    
    window_set_position(display_mouse_x - x_offset, display_mouse_y - y_offset);
    
}

if (KeyCheckReleased("Primary Action")) {
    
    dragging = false;
    x_offset = -1;
    y_offset = -1;
    
}