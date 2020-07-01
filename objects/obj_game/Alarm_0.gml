/// @description spawn new asteroids
switch(room){
	case rm_level_0:
		spawn_asteroids();
		alarm[0] = room_speed*4;		
		break
}