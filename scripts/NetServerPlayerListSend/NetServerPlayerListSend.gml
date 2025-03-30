function NetServerPlayerListSend() {
    
    with (global.net_object) {
        
        var clients_string = json_stringify(player_list);
        
        for (var i = 0; i < array_length(player_list); i ++) {
            
            var b = NetBufferCreate();
            buffer_write(b, buffer_u8, PACKET_PLAYER_LIST_UPDATE);
            buffer_write(b, buffer_string, clients_string);
            buffer_write(b, buffer_u8, i);
            network_send_packet(player_list[i].socket, b, buffer_tell(b));
            
        }
        
    }
    
}