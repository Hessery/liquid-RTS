function NetServerDataCmd() {
    
    var packet = async_load[? "buffer"];
    var cmd_str = buffer_read(packet, buffer_string);
    var execution_frame = NetServerExeTickCalc();
    
    var cmd = json_parse(cmd_str);
    cmd.exe_frame = execution_frame;
    array_push(cmd_list, cmd);
    
    var b = NetBufferCreate();
    buffer_write(b, buffer_u8, PACKET_CMD);
    buffer_write(b, buffer_string, json_stringify(cmd))
    NetServerSendAll(b);
    
}