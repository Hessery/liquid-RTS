function NetServerDataPing() {
    
    var client = async_load[? "id"];
    var ping = string(sim_frame - ping_start_frame);
    
    // DevConsoleLog(sim_frame);
    // DevConsoleLog(ping_start_frame);
    
    for (var i = 0; i < array_length(player_list); i ++) {
        
        if (player_list[i].socket = client) {
            
            player_list[i].ping = ping;
            player_list[i].first_ping = false;
            return
            
        }
        
    }
    
    DevConsoleLog("Missing client! " + string(client));
    
}