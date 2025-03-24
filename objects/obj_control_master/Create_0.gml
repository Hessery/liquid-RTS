if (instance_number(object_index) > 1) {
	instance_destroy();
};



// Init global variables
global.debug = false;
global.key_map = ds_map_create()


// Init keys
key_set("Primary Action",		mb_left);
key_set("Secondary Action",		mb_right);
key_set("Toggle Dev Console",	192);


// Init other persistant objects
instance_create_depth(0, 0, depth, obj_dev_console);
