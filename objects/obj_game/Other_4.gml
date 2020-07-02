// stop all music and sfx from previous room
audio_stop_all();

// setup rooms
switch(room){
	case rm_start:
		audio_play_sound(music_reggae_0, 9, true);
		break;
		
	case rm_level_0:
		audio_play_sound(music_reggae_1, 9, true);
		room_width = 3840;
		room_height = 2160;
		
		// level 0
		instance_create_layer(room_width/2, room_height/2, "Instances", obj_ship);
		spawn_off_screen(obj_asteroid, 10, 128);
		alarm[0] = room_speed;

		// room start
		init_game_room();
		break
		
	case rm_game_over:
		audio_play_sound(snd_game_over, 5, false);
		break;
}		