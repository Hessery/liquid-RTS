function NetStartClient(){
	
	global.net_role = NET_ROLE_CLIENT;
	global.menu_state = MENU_LOBBY;
	
	instance_create_depth(0, 0, 0, obj_network_control);

}