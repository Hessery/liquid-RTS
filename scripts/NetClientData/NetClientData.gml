function NetClientData() {
    
    var p = async_load[? "buffer"];
    
    switch (buffer_read(p, buffer_u8)) {
        case PACKET_PLAYER_LIST_UPDATE: NetClientDataPlayerList();  break;
        case PACKET_PING:               NetClientDataPing();        break;
        case PACKET_GAME_START:         NetClientDataGameStart();   break;
        case PACKET_CMD:                NetClientDataCmd();         break;
    }
    
}