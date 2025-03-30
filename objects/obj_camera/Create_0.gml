with (obj_base_marker) {
    
    if (player = global.net_object.player) {
        var cam = view_camera;
        var cam_w = camera_get_view_width(cam);
        var cam_h = camera_get_view_height(cam);
        camera_set_view_pos(cam, x - (cam_w / 2), y - (cam_h / 2));
    }
    
}