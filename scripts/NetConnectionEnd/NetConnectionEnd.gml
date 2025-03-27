function NetConnectionEnd() {
    
    global.menu_state = MENU_MAIN;
    global.net_role = NET_ROLE_NONE;
    
    if (global.net_object != -1) {
        
        if (global.net_object.object_index = obj_net_server) {
            network_destroy(global.server)
        } else {
            network_destroy(global.socket);
        }
        instance_destroy(global.net_object);
        global.net_object = -1;
        
    }
    
    DevConsoleLog("Clobbered network connection");
    
}