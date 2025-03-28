function NetServerDataConnection() {
    
    var packet      = async_load[? "buffer"]
    var client      = async_load[? "id"];
    var username    = buffer_read(packet, buffer_string);
    
    array_push(player_list, { 
        name : username, 
        ping : "999", 
        first_ping : true,
        socket : client,
	    colour : irandom(7)
    });
    
    NetServerPlayerListSend();
    
}