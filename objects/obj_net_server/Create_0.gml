player = 0;
player_list = [ { 
	name : global.username, 
	ping : "0",
	first_ping : false,
	socket : -1,
	colour : irandom(7),
	faction : FACTION_TERRAN
} ];
next_id = 0;

start_second = -1;
NetServerPingInit();
SimInit();
CmdInit();