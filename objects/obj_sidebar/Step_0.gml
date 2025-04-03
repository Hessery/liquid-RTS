var m_gui_x = device_mouse_x_to_gui(0);
var m_gui_y = device_mouse_y_to_gui(0);

var width = display_get_gui_width();
var height = display_get_gui_height();

if (open) {
    
    if (m_gui_y < height - 150) { open = false }
    ypos = min(ypos + open_speed, 150);

} else {
    
    if (m_gui_y > height - 48) { open = true }
    ypos = max(0, ypos - open_speed);
    
}