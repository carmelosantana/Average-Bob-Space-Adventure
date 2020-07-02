/// @description spawn new asteroids
switch(room){
	case rm_level_0:
		spawn_off_screen(obj_asteroid, 4, 128);
		alarm[0] = room_speed*4;		
		break
}