if (selected && KeyCheckReleased("Secondary Action") && PlayersUnit()) {
	
	CmdAdd({
		cmd : CMD_SET_RALLY,
		x : mouse_x,
		y : mouse_y,
		net_id : net_id
	})
	
}