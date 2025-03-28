player_list = [ { 
	name : global.username, 
	ping : "0",
	first_ping : false,
	socket : -1
} ];

start_second = -1;
NetServerPingInit();
SimInit();
CmdInit();