function NetClientDataPlayerList(packet) {
    
    var json_str = buffer_read(packet, buffer_string);
    player_list = json_parse(json_str);
    
    for (var i = 0; i < array_length(player_list); i ++) {
        
        DevConsoleLog(player_list[i]);
        
    }
    
}