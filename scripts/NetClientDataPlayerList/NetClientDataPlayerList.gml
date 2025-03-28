function NetClientDataPlayerList() {
    
    var packet = async_load[? "buffer"];
    var json_str = buffer_read(packet, buffer_string);
    
    player_list = json_parse(json_str);
    
}