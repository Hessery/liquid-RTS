function NetDisconnect() {
    
    DevConsoleLog("Client disconnected")
    
    var client = async_load[? "socket"];
    
    for (var i = 0; i < array_length(player_list); i ++) {
        
        if (player_list[i].socket = client) {
            
            array_delete(player_list, i, 1);
            NetServerPlayerListSend();
            return
        }
        
    }
    
    DevConsoleLog("Failed to find disconnecting client")
    
}