switch(room){
	case rm_game:
		// level 0
		spawn_asteroids_stage_start(6);
		alarm[0] = room_speed;

		// room start
		init_game_room();
		break
		
	case rm_gameover:
		audio_play_sound(snd_game_over, 5, false);
		break;
}