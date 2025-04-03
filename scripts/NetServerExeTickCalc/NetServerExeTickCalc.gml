function NetServerExeTickCalc() {
    
    if (global.net_object = -1) { return }
    if (global.net_role != NET_ROLE_HOST) { return }
    
    return global.net_object.sim_tick + 2;
    
}