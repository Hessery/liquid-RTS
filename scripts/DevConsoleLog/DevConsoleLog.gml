function DevConsoleLog(str) {
	
	str = string(str);
	
	show_debug_message("> " + str)
	
	if (!instance_exists(obj_dev_console)) { return }
	
	// TODO: turn this into a function that outputs an array, concat array to
	// console_log
	// Seperate lines
	var ln_length = 105;
	while (string_length(str) > ln_length) {
		
		array_push(obj_dev_console.console_log, string_copy(str, 1, ln_length));
		str = string_copy(str, ln_length + 1, string_length(str));
		
	}
	
	array_push(obj_dev_console.console_log, str);
	
	while (array_length(obj_dev_console.console_log) > 8) { 
		array_delete(obj_dev_console.console_log, 0, 1);
	}
	
}