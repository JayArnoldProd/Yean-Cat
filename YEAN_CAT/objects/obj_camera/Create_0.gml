// obj_camera Create Event
cam = view_camera[0];
camera = camera_create();

base_width = 1920;
base_height = 1080;
cam_width = base_width;
cam_height = base_height;

target_x = room_width / 2;
target_y = room_height / 2;
desired_x = target_x;
desired_y = target_y;
target_object = noone;
target_offset_x = 0;
target_offset_y = 0;

transition_progress = 1;
transition_speed = 0.05; // Adjust this value to control the smoothness of camera movement

var viewmat = matrix_build_lookat(target_x, target_y, -1, 
                                  target_x, target_y, 0, 
                                  0, 1, 0);
var projmat = matrix_build_projection_ortho(cam_width, cam_height, 1, 32000);

camera_set_view_mat(camera, viewmat);
camera_set_proj_mat(camera, projmat);

view_camera[0] = camera;

cam_speed = 0.05; // Adjust this value to control camera movement speed