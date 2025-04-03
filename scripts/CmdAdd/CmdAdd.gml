function CmdAdd(cmd) {
    
    if (global.net_role = NET_ROLE_NONE) { return }
    if (global.net_role = NET_ROLE_HOST) {
        
        // Add a net id if creating a unit
        if (cmd.cmd = CMD_CREATE) { cmd.vars.net_id = NetServerUnitIdNext() }
        
        cmd.exe_frame = NetServerExeTickCalc();
        
        // Tell all the clients
        var json_str = json_stringify(cmd);
        
        var b = NetBufferCreate();
        buffer_write(b, buffer_u8, PACKET_CMD);
        buffer_write(b, buffer_string, json_str);
        NetServerSendAll(b);
        
        // Add cmd to the cmd_list
        array_push(global.net_object.cmd_list, cmd);
        
    }
    
    if (global.net_role = NET_ROLE_CLIENT) {
        
        // Send cmd to the server
        
        var json_str = json_stringify(cmd);
        var b = NetBufferCreate();
        
        buffer_write(b, buffer_u8, PACKET_CMD);
        buffer_write(b, buffer_string, json_str);
        
        network_send_packet(global.socket, b, buffer_tell(b));
        
    }
    
}