
if (selected) { 
    SelectionDraw();
	if (PlayersUnit() || global.debug) {
		draw_sprite(spr_rally, -1, rally_x, rally_y);
	}
}

ColourReplaceBegin(global.colour[player]);

draw_self();

ColourReplaceEnd();