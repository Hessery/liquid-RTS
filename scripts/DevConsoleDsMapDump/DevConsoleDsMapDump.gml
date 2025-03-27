function DevConsoleLogDsMap(map) {
    
    var key = ds_map_find_first(map)
	var size = ds_map_size(map);
	for (var i = 0; i < size; i ++) {
		DevConsoleLog(key + " : " + string(map[? key]))
		key = ds_map_find_next(map, key);
	}
    
}