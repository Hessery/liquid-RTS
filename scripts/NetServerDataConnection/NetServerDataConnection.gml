function NetServerDataConnection(packet) {
    
    var client      = async_load[? "id"];
    var username    = buffer_read(packet, buffer_string);
    
    array_push(player_list, { name : username, ping : "999", socket : client });
    
    NetServerPlayerListSend();
    
}