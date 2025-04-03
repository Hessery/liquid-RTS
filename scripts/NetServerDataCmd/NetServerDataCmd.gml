function NetServerDataCmd() {
    
	// Get the cmd
    var packet = async_load[? "buffer"];
    var cmd_str = buffer_read(packet, buffer_string);
    var execution_frame = NetServerExeTickCalc();
    
	// Add the cmd to the cmd list
    var cmd = json_parse(cmd_str);
    //cmd.exe_frame = execution_frame;
    //array_push(cmd_list, cmd);
    
	// Tell everyone about the cmd
	CmdAdd(cmd);
    // var b = NetBufferCreate();
    // buffer_write(b, buffer_u8, PACKET_CMD);
    // buffer_write(b, buffer_string, json_stringify(cmd))
    // NetServerSendAll(b);
    
}