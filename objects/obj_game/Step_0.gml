check_global_input_actions();

switch(room){
	case rm_level_0:
		layer_x("Parallax_0", global.camera_x*0.5);
		layer_y("Parallax_0", global.camera_y*0.5);	

		layer_x("Parallax_1", global.camera_x*0.4);	
		layer_y("Parallax_1", global.camera_y*0.4);	

		layer_x("Parallax_2", global.camera_x*0.1);	
		layer_y("Parallax_2", global.camera_y*0.1);
		
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