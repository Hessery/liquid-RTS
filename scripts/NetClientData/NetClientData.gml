function NetClientData() {
    
    var p = async_load[? "buffer"];
    
    switch (buffer_read(p, buffer_u8)) {
        case PACKET_PLAYER_LIST_UPDATE: NetClientDataPlayerList(p);  break;
    }
    
}