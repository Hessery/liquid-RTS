function SelectionCull() {
    
    var array = global.selected;
    var team = false;
    var units = false;
    var military = false;
    
    for (var i = 0; i < array_length(array); i ++) {
        
        if (array[i].player = global.net_object.player) { team = true };
        if (!array[i].is_building) { units = true };
        if (array[i].is_military) { military = true };
        
    }
    
    // DevConsoleLog(team);
    // DevConsoleLog(units);
    // DevConsoleLog(military);
    
    for (var i = 0; i < array_length(array); i ++) {
        
        // Keep only objects on my team if any
        if (team) {
            if (array[i].player != global.net_object.player) { 
                array[i].selected = false;
                array_delete(array, i, 1);
                continue;
            }
        }
        
        // Keep only non buildings if any
        if (units) {
            if (array[i].is_building) { 
                array[i].selected = false;
                array_delete(array, i, 1); 
                continue;
            };
        }
        
        // Keep only military if any
        if (military) {
            if (!array[i].is_military) { 
                array[i].selected = false;
                array_delete(array, i, 1); 
                continue;
            };
        }
    }
    
    global.selected = array;
    
}