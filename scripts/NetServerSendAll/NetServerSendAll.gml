function NetServerSendAll(buffer) {
    
    if (global.net_object = -1) {
        DevConsoleLog("No net object");
        return;
    }
    if (global.net_object.object_index != obj_net_server) {
        DevConsoleLog("Cant send packet to all, not the server");
        return
    }
    
    with (global.net_object) {
        
        for (var i = 0; i < array_length(player_list); i ++) {
            
            var socket = player_list[i].socket
            if (socket = -1) { continue }
            
            network_send_packet(socket, buffer, buffer_tell(buffer));
            
        }
        
    }
    
}