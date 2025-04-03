function SelectionRectangle(x1, y1, x2, y2) {
    
    SelectionRemoveAll();
    
    if (x1 = x2 && y1 = y2) {
        SelectionAddPoint(x2, y2);
    } else {
        SelectionAddRectangle(x1, y1, x2, y2);
    }
    
}