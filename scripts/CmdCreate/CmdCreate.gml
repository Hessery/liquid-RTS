function CmdCreate(cmd) {
    
    global.net_id_list[cmd.vars.net_id] = instance_create_depth(
        cmd.x,
        cmd.y,
        0,
        cmd.obj,
        cmd.vars
    );
    
}