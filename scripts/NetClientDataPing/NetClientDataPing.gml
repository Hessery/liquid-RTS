function NetClientDataPing() {
    
    server_alive = 200;
    
    var b = NetBufferCreate();
    buffer_write(b, buffer_u8, PACKET_PING);
    network_send_packet(global.socket, b, buffer_tell(b));
    
}