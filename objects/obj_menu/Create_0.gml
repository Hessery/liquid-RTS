menu_options = [
	{ text : "Host",	action : show_message },
	{ text : "Join",	action : show_message },
	{ text : "Options",	action : room_goto,	option : rm_options },
	{ text : "Exit",	action : game_end,	option : 0 }
]