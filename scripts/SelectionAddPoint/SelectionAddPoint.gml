function SelectionAddPoint(xpos, ypos) {
    
    var inst = collision_point(xpos, ypos, global.game_objects, false, true);
    
    if (inst != noone) { inst.selected = true };
    
}