function CmdSetRally(cmd) {
    
    var inst = global.net_id_list[cmd.net_id];
    
    inst.rally_x = cmd.x;
    inst.rally_y = cmd.y
    
}