if (KeyCheckPressed("Primary Action")) {
    
    start_x = mouse_x;
    start_y = mouse_y;
    
}

if (KeyCheck("Primary Action")) {
    
    // Something here?
    
}

if (KeyCheckReleased("Primary Action")) {
    
    SelectionRectangle(start_x, start_y, mouse_x, mouse_y);
	
	start_x = 0;
	start_y = 0;
    
}