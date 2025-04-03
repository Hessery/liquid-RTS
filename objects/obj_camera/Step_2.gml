var cam_speed = 10;
var camera = view_camera;
var cx = camera_get_view_x(camera);
var cy = camera_get_view_y(camera);
var cw = camera_get_view_width(camera);
var ch = camera_get_view_height(camera);

cx += (KeyCheck("Pan Camera Right") - KeyCheck("Pan Camera Left")) * cam_speed;
cy += (KeyCheck("Pan Camera Down") - KeyCheck("Pan Camera Up")) * cam_speed;

cx = clamp(cx, 0, room_width - cw);
cy = clamp(cy, 0, room_height - ch + 150);

camera_set_view_pos(camera, cx, cy);