if (global.menu_state != MENU_NONE) { NetPlayerListDraw(32, 64) }

for (var i = 0; i < array_length(player_list); i ++) {
	draw_text(32, 128 + (i * 22), player_list[i])
}