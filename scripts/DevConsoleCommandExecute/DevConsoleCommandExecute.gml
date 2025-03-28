function DevConsoleCommandExecute(cmd) {
	
	var cmd_arr = string_split(cmd, " ");
	var output = "";
	switch (cmd_arr[0]) {
		case "exit":			game_end();				break;
		case "menu":			MenuGoto(cmd_arr[1]);	break;
		case "endConnection":	NetConnectionEnd();		break;
		case "clientsLog":		NetClientsLog();		break;
		case "gameStart":		NetGameStart();			break;
		case "fullscreen":		FullscreenToggle();		break;
		default:	output = "Unkwn: " + cmd;
	}
	
	if (output != "") { DevConsoleLog(output) }
	
}