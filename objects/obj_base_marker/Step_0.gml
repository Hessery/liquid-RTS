if (player >= array_length(global.net_object.player_list)) {
    instance_destroy();
    exit;
}

// Make the base here
var inst = instance_create_depth(x, y, 0, obj_terran_hq);
inst.player = player;

instance_destroy();