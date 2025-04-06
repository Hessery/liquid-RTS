var width = display_get_gui_width();
var height = display_get_gui_height();
var gui_x = 0;
var gui_y = height - ypos;

if (array_length(global.selected) > 0) {
    
    selection_bar_y = min(selection_bar_y + open_speed, 48);

} else {
    
    selection_bar_y = max(selection_bar_y - open_speed, 0);
    
}

DrawSet([c_dkgrey]);
draw_rectangle(gui_x, gui_y - selection_bar_y, width, gui_y, false);

for (var i = 0; i < array_length(global.selected); i ++) {
    
    ColourReplaceBegin(global.colour[global.selected[i].player])
    
    draw_sprite_stretched(
        global.selected[i].icon,
        0,
        gui_x + ((array_length(global.selected) - i) * 16) - 8,
        gui_y - selection_bar_y + 8,
        32, 32
    );
    
    ColourReplaceEnd();
    
}


var st = DrawSet([c_dkgrey]);
draw_rectangle(gui_x, gui_y, width, height, false);

DrawSet(st);