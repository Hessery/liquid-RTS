function SelectionAddRectangle(x1, y1, x2, y2) {
    
    var list = ds_list_create();
    var count = collision_rectangle_list(
        x1, y1, 
        x2, y2, 
        global.game_objects,
        false,
        true,
        list, 
        false
    );
    
    // for (var i = 0; i < count; i ++) {
    //     list[| i].selected = true;
    // }
    
    global.selected = []
    
    for (var i = 0; i < ds_list_size(list); i ++) {
            
        var inst = ds_list_find_value(list, i);
        
        inst.selected = true;
        
        if (!array_contains(global.selected, inst)) { 
            
            array_push(global.selected, inst);
            
        };
        
    }
    
}