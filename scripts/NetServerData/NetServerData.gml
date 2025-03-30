function NetServerData() {
    
    var packet = async_load[? "buffer"];
    
    switch (buffer_read(packet, buffer_u8)) {
        case PACKET_CONNECTION:     NetServerDataConnection();      break;
        case PACKET_PING:           NetServerDataPing();            break;
        case PACKET_CMD:            NetServerDataCmd();             break;
        case PACKET_CHANGE_FACTION: NetServerDataChangeFaction();   break;
    }
    
}