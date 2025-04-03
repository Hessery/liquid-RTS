function SelectionCircleDraw() {
    
    var st = DrawSet([c_white]);
    
    var half_width = width / 2;
    var half_height = height / 2;
    
    draw_ellipse(
        x - (half_width + 1), 
        y - (half_height / 2), 
        x + (half_width - 1), 
        y + (half_height / 2), 
        true
    );
    
    DrawSet(st);
    
}