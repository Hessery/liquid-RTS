randomise();

// Macros
#macro NET_ROLE_HOST		    	0
#macro NET_ROLE_CLIENT		    	1
#macro NET_ROLE_NONE		    	2

#macro MENU_MAIN			    	0
#macro MENU_OPTIONS			    	1
#macro MENU_LOBBY			    	2
#macro MENU_NONE                    3

#macro ASYNC_CONNECT		    	1
#macro ASYNC_DISCONNECT		    	2
#macro ASYNC_DATA			    	3
#macro ASYNC_CLIENT_CONNECTION	    4

#macro PACKET_CONNECTION            0
#macro PACKET_PLAYER_LIST_UPDATE    1
#macro PACKET_PING                  2
#macro PACKET_GAME_START            3

// Globals
global.window_width = 960;
global.window_height = 540;
global.fullscreen = false;
global.debug = false;
global.key_map = ds_map_create()
global.net_role = NET_ROLE_NONE;
global.net_object = -1;
global.server = -1;
global.socket = -1;
global.menu_state = MENU_MAIN;
global.colour = [ c_red, c_lime, c_blue, c_yellow, c_green, c_aqua ];
// TODO: Make this mandatory to choose first time, then make changeable 
// in the options
global.username = choose("Ted", "Frank", "Chuck", "Walt", "Otis", "Ned", 
"Bart", "Cal");

// Key bindings
KeySet("Primary Action",		mb_left);
KeySet("Secondary Action",		mb_right);
KeySet("Toggle Dev Console",	192);
KeySet("Dev Console Commit",	vk_enter);

// Default draw set values
DrawSet([c_white, 1, fnt_default, fa_left, fa_top]);












