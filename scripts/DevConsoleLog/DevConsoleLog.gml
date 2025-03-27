function DevConsoleLog(str) {
	
	str = string(str);
	
	show_debug_message("> " + str)
	
	if (!instance_exists(obj_dev_console)) { return }
	
	array_push(obj_dev_console.console_log, str);
	
	while (array_length(obj_dev_console.console_log) > 8) { 
		array_delete(obj_dev_console.console_log, 0, 1);
	}
	
}