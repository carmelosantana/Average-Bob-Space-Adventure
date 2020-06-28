/// @description spawn new asteroids
switch(room){
	case rm_game:
		spawn_asteroids();
		alarm[0] = room_speed*4;		
		break
}