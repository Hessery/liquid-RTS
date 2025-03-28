function CreateUnit() {
    
    if (global.net_role != NET_ROLE_CLIENT) { return }
    
    var json_str = json_stringify({ 
        cmd : CMD_CREATE, 
        x : mouse_x, 
        y : mouse_y, 
        obj : obj_test, 
        vars : { 
            colour : c_blue 
        } 
    });
    
    var b = NetBufferCreate();
    buffer_write(b, buffer_u8, PACKET_CMD)
    buffer_write(b, buffer_string, json_str)
    network_send_packet(global.socket, b, buffer_tell(b));
    
    
}