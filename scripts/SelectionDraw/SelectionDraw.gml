function SelectionDraw() {
    
    var st = DrawSet([-1, 0.3])
    if (is_building) {
        SelectionRectangleDraw();
    } else {
        SelectionCircleDraw();
    }
    DrawSet(st);
    SelectionHpDraw();
    
}