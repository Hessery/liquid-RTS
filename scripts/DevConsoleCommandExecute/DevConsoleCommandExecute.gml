function DevConsoleCommandExecute(cmd) {
	
	var cmd_arr = string_split(cmd, " ");
	var output = "";
	switch (cmd_arr[0]) {
		case "exit":	game_end();		break;
		default:	output = "Unkwn: " + cmd;
	}
	
	if (output != "") { DevConsoleLog(output) }
	
}