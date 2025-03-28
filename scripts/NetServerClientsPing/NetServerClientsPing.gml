function NetServerClientsPing() {
    
    if (current_milisecond != 0) { return }
    
    ping_start_frame = sim_frame;
    
    var b = NetBufferCreate();
    buffer_write(b, buffer_u8, PACKET_PING);
    NetServerSendAll(b);
    
    NetServerPlayerListSend();
    
}