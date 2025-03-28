function NetServerDataPing() {
    
    var client = async_load[? "id"];
    // var ping = string(floor(((sim_frame - ping_start_frame) * 16.67)));
    var ping = string(floor((sim_frame - ping_start_frame) / 2));
    
    for (var i = 0; i < array_length(player_list); i ++) {
        
        if (player_list[i].socket = client) {
            
            player_list[i].ping = ping;
            player_list[i].first_ping = false;
            return
            
        }
        
    }
    
    DevConsoleLog("Missing client! " + string(client));
    
}