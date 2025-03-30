function NetClientDataPlayerList() {
    
    var packet          = async_load[? "buffer"];
    var json_str        = buffer_read(packet, buffer_string);
    var player_index    = buffer_read(packet, buffer_u8);
    
    player_list = json_parse(json_str);
    player = player_index;
    
}