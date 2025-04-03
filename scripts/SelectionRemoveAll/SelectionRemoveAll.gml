function SelectionRemoveAll() {
    
    var count = array_length(global.game_objects);
    
    for (var i = 0; i < count; i ++) {
		with (global.game_objects[i]) { selected = false }
	}
    
}