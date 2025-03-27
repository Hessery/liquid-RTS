function MenuMainStep() {
    
    for (var i = 0; i < array_length(menu_options); i ++) {
		
		var text_height = string_height(menu_options[i].text)
		
		var draw_x = room_width / 2;
		var draw_y = room_height / 1.6 + (i * text_height);
		
		var t_width = string_width(menu_options[i].text) / 2;
		var t_height = string_height(menu_options[i].text) / 2;
		
		if (KeyCheckPressed("Primary Action") &&
			point_in_rectangle(
				mouse_x, mouse_y,
				draw_x - t_width,
				draw_y - t_height,
				draw_x + t_width,
				draw_y + t_height
			)
		) {
			menu_options[i].action();
		}
	}
    
}