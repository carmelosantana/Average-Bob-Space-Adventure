/// @description Camera position
if ( instance_exists(global.camera_target) ) {
	global.camera_x = global.camera_target.x - global.camera_width/2;
	global.camera_y = global.camera_target.y - global.camera_height/2;
	
	// move camera to player center
	global.camera_x = clamp(global.camera_x, 0, room_width-global.camera_width);
	global.camera_y = clamp(global.camera_y, 0, room_height-global.camera_height);
	
	// get camera corners
	global.camera_xx = global.camera_x + global.camera_width;
	global.camera_yy = global.camera_y  + global.camera_height;	
}

camera_set_view_pos(view_camera[0], global.camera_x, global.camera_y);