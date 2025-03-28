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
    
    // If game running, tell everyone who dropped and when to delete their stuff
    
    DevConsoleLog("Failed to find disconnecting client")
    
}