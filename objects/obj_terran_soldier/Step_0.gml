if (selected && KeyCheckPressed("Secondary Action") && PlayersUnit()) {
    
    CmdAdd({
        cmd : CMD_MOVE,
        x : mouse_x,
        y : mouse_y,
        net_id : net_id
    })
    
}

var move_speed = 2;

if (point_distance(x, y, des_x, des_y) > move_speed) {
    
    var dir = point_direction(x, y, des_x, des_y);
    
    x += lengthdir_x(move_speed, dir);
    y += lengthdir_y(move_speed, dir);
    
    if (x > xprevious) { image_xscale = 1 }
    if (x < xprevious) { image_xscale = -1 }
    
    sprite_index = spr_terran_soldier_run;
    
} else {
    
    x = des_x;
    y = des_y;
    
    sprite_index = spr_terran_soldier_stand;
    
}