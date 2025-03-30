function NetPlayerListDraw(xpos, ypos) {
    
    var st = DrawSet([])
    
    for (var i = 0; i < array_length(player_list); i ++) {
        
        var player = player_list[i];
        
        DrawSet([c_red])
        if (player.ping < 200)  { DrawSet([c_orange]) }
        if (player.ping < 100)  { DrawSet([c_lime]) }
        if (player.ping < 10)   { DrawSet([c_aqua]) }
        if (player.ping = 999)  { DrawSet([c_white]) }
		
		var ping_str = ""
        if (player.first_ping) {
            ping_str = "(pinging)";
        } else {
            ping_str = "(" + player.ping + "ms)"
        }
        
        var faction = "";
		switch (player.faction) {
			case FACTION_TERRAN:	faction = "Terran";	break;
			case FACTION_TITAN:		faction = "Titan";	break;
			case FACTION_TURTLE:	faction = "Turtle";	break;
		}
        
        
        draw_text(xpos, ypos + (i * 22), ping_str);
        
        DrawSet([global.colour[player.colour]]);
        
        draw_text(xpos + 100, ypos + (i * 22), player.name);
        draw_text(xpos + 200, ypos + (i * 22), faction);
    }
    
    DrawSet(st);
    
}