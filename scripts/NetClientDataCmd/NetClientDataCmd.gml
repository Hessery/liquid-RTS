function NetClientDataCmd() {
    
    DevConsoleLog("Recieved cmd from server")
    
    // Adds the recieved cmd to the cmd_list
    var packet = async_load[? "buffer"];
    var cmd_str = buffer_read(packet, buffer_string);
    var cmd = json_parse(cmd_str);
    
    if (cmd.exe_frame <= sim_tick) {
        DevConsoleLog("Desync! Breaking connection!");
        NetConnectionEnd();
    }
    
    //DevConsoleLog(typeof(cmd.exe_frame) + " < " + typeof(sim_tick));
    array_push(cmd_list, cmd);
    
}