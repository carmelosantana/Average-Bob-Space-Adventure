/// @description Camera init
global.camera_x = 0;
global.camera_y = 0;
global.camera_xx = 0;
global.camera_yy = 0;
global.camera_width = 1280;
global.camera_height = 720;
global.camera_target = obj_ship;

view_enabled = true;
view_visible[0] = true;

display_scale = 2;
display_width = global.camera_width * display_scale;
display_height = global.camera_height * display_scale;

camera_set_view_size(view_camera[0], global.camera_width, global.camera_height);
window_set_size(global.camera_width, global.camera_height);
surface_resize(application_surface, display_width, display_height);
display_set_gui_size(global.camera_width, global.camera_height);

camera_set_view_pos(view_camera[0], global.camera_x, global.camera_y);

alarm[0] = 1;