if (global.net_role = NET_ROLE_HOST) {
	
	global.server = network_create_server(
		network_socket_tcp,
		6969,
		8
	)
	
	if (global.server = -1) { return }
	
	global.player_count = 1;
	global.username = string(irandom(99));
	global.username_list = ds_map_create();
	global.team = 0;
	
	DevConsoleLog("Started server");
	
} else {
	
	global.socket = network_create_socket(network_socket_tcp);
	var success = network_connect_async(
		global.socket,
		"localhost",
		6969
	)
	
}