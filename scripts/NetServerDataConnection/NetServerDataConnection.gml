function NetServerDataConnection() {
    
    var packet      = async_load[? "buffer"]
    var client      = async_load[? "id"];
    var username    = buffer_read(packet, buffer_string);
    
    var colour = irandom(7);
    
    // Pick an unused colour
    while (true) {
		
		var bad_colour = false;
		if (colour = 8) { colour = 0 }
		
		for (var i = 0; i < array_length(player_list); i ++) {
			if (player_list[i].colour = colour) { 
				colour ++ 
				bad_colour = true
				break;
			}
		}
		
		if (!bad_colour) { break }
		
    }
    
    array_push(player_list, { 
        name : username, 
        ping : "999", 
        first_ping : true,
        socket : client,
	    colour : colour,
		faction : FACTION_TERRAN
    });
    
    NetServerPlayerListSend();
    
}