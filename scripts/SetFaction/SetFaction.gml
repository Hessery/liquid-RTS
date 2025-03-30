function SetFaction(cmd_arr) {
    
    if (global.net_role = NET_ROLE_NONE) { return }
    if (global.net_object = -1) { return }
    
    var faction = -1;
    
    switch (cmd_arr[1]) {
        case "terran":  faction = FACTION_TERRAN;   break;
        case "titan":   faction = FACTION_TITAN;    break;
        case "turtle":  faction = FACTION_TURTLE;   break;
    }
    
    if (faction = -1) {
        DevConsoleLog("Faction doesnt exists ('terran', 'titan' and 'turtle' only");
        return
    }
    
    if (global.net_role = NET_ROLE_CLIENT) {
        var b = NetBufferCreate();
        buffer_write(b, buffer_u8, PACKET_CHANGE_FACTION);
        buffer_write(b, buffer_u8, faction);
        network_send_packet(global.socket, b, buffer_tell(b));
    }
    
    if (global.net_role = NET_ROLE_HOST) {
        global.net_object.player_list[0].faction = faction;
        NetServerPlayerListSend();
    }
    
    DevConsoleLog("Set faction: " + cmd_arr[1]);
}