function SimGameStart() {
    if (current_second != start_second || room = rm_game) { return }
	
	DevConsoleLog(" -- Game Start --")
	random_set_seed(seed);
	room = rm_game;
	global.menu_state = MENU_NONE;
	sim_frame = 0;
	
}