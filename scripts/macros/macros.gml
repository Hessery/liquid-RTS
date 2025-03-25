// Macros
#macro NET_ROLE_HOST			0
#macro NET_ROLE_CLIENT			1
#macro NET_ROLE_NONE			2

#macro MENU_MAIN				0
#macro MENU_OPTIONS				1
#macro MENU_LOBBY				2

#macro NET_CONNECT				1
#macro NET_DISCONNECT			2
#macro NET_DATA					3
#macro NET_CLIENT_CONNECTION	4

// Globals
global.debug = false;
global.key_map = ds_map_create()
global.net_role = NET_ROLE_NONE;
global.menu_state = MENU_MAIN;

// Key bindings
KeySet("Primary Action",		mb_left);
KeySet("Secondary Action",		mb_right);
KeySet("Toggle Dev Console",	192);
KeySet("Dev Console Commit",	vk_enter);