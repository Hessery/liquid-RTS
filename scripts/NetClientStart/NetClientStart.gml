function NetClientStart(){
	
	if (global.net_role != NET_ROLE_NONE) { 
		DevConsoleLog("Unable to assign net role."); 
		return;
	}
	if (global.net_object != -1) { 
		DevConsoleLog("Unable to start server. Connection already present."); 
		return;
	}
	
	global.net_role = NET_ROLE_CLIENT;
	global.menu_state = MENU_LOBBY;
	
	global.socket = network_create_socket(network_socket_tcp);
	var success = network_connect_async(
		global.socket,
		global.ip,
		6969
	)
	
	global.net_object = instance_create_depth(0, 0, 0, obj_net_client);

}