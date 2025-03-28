function CmdCreate(cmd) {
    
    instance_create_depth(
        cmd.x,
        cmd.y,
        0,
        cmd.obj,
        cmd.vars
    );
    
}