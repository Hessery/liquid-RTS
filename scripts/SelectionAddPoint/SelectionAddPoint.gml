function SelectionAddPoint(xpos, ypos) {
    
    global.selected = [];
    var inst = collision_point(xpos, ypos, global.game_objects, false, true);
    
    if (inst = noone) { return }
        
    inst.selected = true;
    global.selected = [inst];
    
}