switch(room){
	case rm_level_0:
		if ( lives <= 0 ) {
			room_goto(rm_game_over);
		}
		break;
		
	case rm_game_over:
		init_game_room();
		if ( keyboard_check_pressed(vk_enter) ){
			game_restart();
		}
		break;
		
	case rm_start:
		if ( keyboard_check_pressed(vk_enter) ){
			room_goto(rm_level_0);
		}	
		break;		
}