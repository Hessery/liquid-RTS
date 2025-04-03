// Make sure youre the host
if (global.net_role != NET_ROLE_HOST) { exit }

// Make sure there is a player to claim this base
if (player >= array_length(global.net_object.player_list)) {
    instance_destroy();
    exit;
}

CmdAdd({
    cmd : CMD_CREATE,
    x : x,
    y : y,
    obj : obj_terran_hq,
    vars : {
        player : player
    }
})

for (var i = 0; i < 3; i ++) {
    
    CmdAdd({
        cmd : CMD_CREATE,
        x : x + (i * 64),
        y : y,
        obj : obj_terran_soldier,
        vars : {
            player : player
        }
    })
    
}

instance_destroy();