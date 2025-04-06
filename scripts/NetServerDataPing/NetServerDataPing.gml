function NetServerDataPing() {
    
    var client = async_load[? "id"];
    DevConsoleLog(string(sim_frame) + " " + string(ping_start_frame));
    DevConsoleLog(string(current_milisecond) + " + (" + string(game_frame - ping_start_frame) + ") - 1 * 16.67")
    // var ping = string((game_frame - ping_start_frame) * 16.67);
    var ping = string(current_milisecond + (((game_frame - ping_start_frame) - 1) * 16.67));
    
    for (var i = 0; i < array_length(player_list); i ++) {
        
        if (player_list[i].socket = client) {
            
            player_list[i].ping = ping;
            player_list[i].first_ping = false;
            return
            
        }
        
    }
    
    DevConsoleLog("Missing client! " + string(client));
    
}