function NetServerPlayerListSend() {
    
    var clients_string = json_stringify(player_list);
    
    var b = NetBufferCreate();
    buffer_write(b, buffer_u8, PACKET_PLAYER_LIST_UPDATE);
    buffer_write(b, buffer_string, clients_string);
    NetServerSendAll(b)
    
}