function SelectionRectangleDraw() {
    
    var st = DrawSet([c_white]);
    
    var half_height = height / 2;
    
    draw_line(x - width, y, x, y - half_height);
    draw_line(x, y - half_height, x + width, y);
    draw_line(x + width, y, x, y + half_height);
    draw_line(x, y + half_height, x - width, y);
    
    DrawSet(st);
    
}