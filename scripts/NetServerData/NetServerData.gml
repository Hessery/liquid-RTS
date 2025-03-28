function NetServerData() {
    
    var packet = async_load[? "buffer"];
    
    switch (buffer_read(packet, buffer_u8)) {
        case PACKET_CONNECTION: NetServerDataConnection();  break;
        case PACKET_PING:       NetServerDataPing();        break;
    }
    
}