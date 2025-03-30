function NetClientsLog() {
    
    if (global.net_object = -1) { 
        DevConsoleLog("No server running");
        return
    }
    // if (global.net_object.object_index != obj_net_server) {
    //     DevConsoleLog("Not a server")
    //     return
    // }
    
    for (var i = 0; i < array_length(global.net_object.player_list); i ++) {
        DevConsoleLog(global.net_object.player_list[i]);
    }
    
}