function SimTick() {
    
    if (global.menu_state != MENU_NONE) { return }
    if (global.net_object = -1) { return }
    if (global.net_role = NET_ROLE_NONE) { return }
    if (sim_frame % 6 != 0) { return }
    
    sim_tick ++
    
    // Process the commands
    for (var i = 0; i < array_length(cmd_list); i ++) {
        
        if (cmd_list[i].exe_frame != sim_tick) { continue }
        
        switch (cmd_list[i].cmd) {
            case CMD_CREATE:    CmdCreate(cmd_list[i]);     break;
            case CMD_SET_RALLY: CmdSetRally(cmd_list[i]);   break;
            case CMD_MOVE:      CmdMove(cmd_list[i]);       break;
        }
        
        array_delete(cmd_list, i, 1);
        i --
        
    }
    
}