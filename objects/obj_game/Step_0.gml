switch(room){
	case rm_game:
		if ( lives <= 0 ) {
			room_goto(rm_gameover);
		}
		break;
		
	case rm_gameover:
		init_game_room();
		if ( keyboard_check_pressed(vk_enter) ){
			game_restart();
		}
		break;
		
	case rm_start:
		if ( keyboard_check_pressed(vk_enter) ){
			room_goto(rm_game);
		}	
		break;		
}