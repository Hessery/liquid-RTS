function NetClientDataCmd() {
    
    var packet = async_load[? "buffer"];
    var cmd_str = buffer_read(packet, buffer_string);
    var cmd = json_parse(cmd_str);
    
    array_push(cmd_list, cmd);
    
}