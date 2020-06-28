switch(room){
	case rm_game:
		audio_play_sound(music_reggae_0, 9, true);
		
		// level 0
		spawn_asteroids_stage_start(6);
		alarm[0] = room_speed;

		// room start
		init_game_room();
		break
		
	case rm_gameover:
		audio_stop_sound(music_reggae_0);
		audio_play_sound(snd_game_over, 5, false);
		break;
}