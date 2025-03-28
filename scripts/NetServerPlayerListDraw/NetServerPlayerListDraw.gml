function NetPlayerListDraw(xpos, ypos) {
    
    var st = DrawSet([])
	var text = ""
    
    for (var i = 0; i < array_length(player_list); i ++) {
        
        var player = player_list[i];
        
        DrawSet([c_red])
        if (player.ping < 200)  { DrawSet([c_orange]) }
        if (player.ping < 100)  { DrawSet([c_lime]) }
        if (player.ping < 10)   { DrawSet([c_aqua]) }
        if (player.ping = 999)  { DrawSet([c_white]) }
		
        if (player.first_ping) {
            text = "(pinging) " + player.name
        } else {
            text = "(" + player.ping + "ms) " + player.name;
        }
        
        draw_text(xpos, ypos + (i * 22), text);
    }
    
    DrawSet(st);
    
}