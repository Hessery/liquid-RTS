function SelectionHpDraw() {
    
    var half_width = width  / 2;
    var half_height = height / 2;
    
    var st = DrawSet([c_red]);
    draw_rectangle(
        x - half_width, 
        y + half_height + 4, 
        x + half_width, 
        y + half_height + 8, 
        false
    );
    DrawSet([c_lime]);
    draw_rectangle(
        x - half_width, 
        y + half_height + 4, 
        (x - half_width) + ((hp / max_hp) * width), 
        y + half_height + 8, 
        false);
    DrawSet(st);
    
}