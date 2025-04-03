function CreateUnit() {
    
	CmdAdd({
		cmd : CMD_CREATE,
		x : mouse_x,
		y : mouse_y,
		obj : obj_terran_soldier,
		vars : {
			player : global.net_object.player,
		}
	});
	
}