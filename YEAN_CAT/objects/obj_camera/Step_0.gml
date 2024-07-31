// obj_camera Step Event
var max_altitude = 40000;
var current_altitude = obj_terrain.playeraltitude;
global.threedee = -min(current_altitude / max_altitude, 1);
global.camera_zoom = clamp(1 + obj_terrain.playeraltitude / 40000 + master.level / 1000, 1, 1.99);

// Update desired position if following an object
if (target_object != noone && instance_exists(target_object)) {
    desired_x = target_object.x;
    desired_y = target_object.y;
}

// Apply offset
desired_x += target_offset_x;
desired_y += target_offset_y;

// Smoothly move the camera
target_x = lerp(target_x, desired_x, cam_speed);
target_y = lerp(target_y, desired_y, cam_speed);

// Update view matrix
var viewmat = matrix_build_lookat(
    target_x, target_y, -1,
    target_x, target_y, 0,
    0, -1, 0
);
camera_set_view_mat(camera, viewmat);

// Update camera view size
cam_width = base_width * abs(global.camera_zoom);
cam_height = base_height * abs(global.camera_zoom);

// Update projection matrix
var fov = lerp(0.1, 60, global.threedee);
var aspect = cam_width / cam_height;
var znear = 1;
var zfar = 32000;

var projmat;
if (global.threedee < 0.01) {
    projmat = matrix_build_projection_ortho(cam_width, -cam_height, znear, zfar);
} else {
    projmat = matrix_build_projection_perspective_fov(fov, aspect, znear, zfar);
}

camera_set_proj_mat(camera, projmat);

// Set the camera position
camera_set_view_pos(cam, target_x - cam_width/2, target_y - cam_height/2);
camera_set_view_size(cam, cam_width, cam_height);