function NetServerDataChangeFaction() {
    
    var socket = async_load[? "id"];
    var packet = async_load[? "buffer"];
    var faction = buffer_read(packet, buffer_u8);
    
    player_list[socket].faction = faction;
    
}