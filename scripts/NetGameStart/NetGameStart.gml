function NetGameStart() {
    
    if (global.net_role != NET_ROLE_HOST) { return }
    if (global.net_object = -1) { return }
    
    global.net_object.seed = irandom(999);
    global.net_object.start_second = current_second + 3;
    
    var b = NetBufferCreate();
    buffer_write(b, buffer_u8, PACKET_GAME_START);
    buffer_write(b, buffer_u8, global.net_object.start_second);
    buffer_write(b, buffer_u16, global.net_object.seed);
    NetServerSendAll(b);
    
    obj_dev_console.open = false;
    
    DevConsoleLog("Starting game...");
    
}