function NetServerExeTickCalc() {
    
    if (global.net_object = -1) { return }
    if (global.net_role != NET_ROLE_HOST) { return }
    
    var slowest_connection = 0;
    for (var i = 0; i < array_length(global.net_object.player_list); i ++) {
        
        var player_data = global.net_object.player_list[i]
        
        if (!player_data.first_ping) {
            
            if (real(player_data.ping) > slowest_connection) {
                
                slowest_connection = string_digits(player_data.ping);
                
            }
        }
    }
    DevConsoleLog(global.net_object.sim_tick + 2 + ceil(slowest_connection / 2.2));
    return global.net_object.sim_tick + 2 + ceil(slowest_connection / 2.2);
    
}