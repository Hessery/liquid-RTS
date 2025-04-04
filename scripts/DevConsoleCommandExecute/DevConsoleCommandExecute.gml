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
		case "create":			CreateUnit();			break;
		case "faction":			SetFaction(cmd_arr);	break;
		case "getSeed":			GetSeed();				break;
		case "ip":				SetIp(cmd_arr[1]);		break;
		case "gain":			SetGain(cmd_arr[1]);	break;
		case "trackPos":		TrackPos();				break;
		case "trackPlaying":	TrackPlaying();			break;
		default:	output = "Unkwn: " + cmd;
	}
	
	if (output != "") { DevConsoleLog(output) }
	
}