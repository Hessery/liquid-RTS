function NetServerStart() {
	
	if (global.net_role != NET_ROLE_NONE) { 
		DevConsoleLog("Unable to assign net role."); 
		return;
	}
	if (global.net_object != -1) { 
		DevConsoleLog("Unable to start server. Connection already present."); 
		return;
	}
	
	global.server = network_create_server(
		network_socket_tcp,
		6969,
		7
	)
	
	if (global.server = -1) { 
		DevConsoleLog("Unable to start server. Is the port already bound?")
		return;
	}
	
	global.net_role = NET_ROLE_HOST;
	global.menu_state = MENU_LOBBY;
	
	DevConsoleLog("Started server");
	
	global.net_object = instance_create_depth(0, 0, 0, obj_net_server);
	
}