function CmdMove(cmd) {
    
    var inst = global.net_id_list[cmd.net_id];
    
    inst.des_x = cmd.x;
    inst.des_y = cmd.y
}