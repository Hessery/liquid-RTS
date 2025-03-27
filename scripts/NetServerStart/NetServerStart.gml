function NetStartServer() {
	
	DevConsoleLog("Starting server...")
	
	global.net_role = NET_ROLE_HOST;
	global.menu_state = MENU_LOBBY;
	
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
	
	global.net_object = instance_create_depth(0, 0, 0, obj_net_server);
	
}