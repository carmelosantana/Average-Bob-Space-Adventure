function check_global_input_actions(){
	switch (os_type) {
		case os_windows:
		case os_macosx:
		case os_linux:
			// restart game
			if ( keyboard_check(vk_control) and keyboard_check(ord("R")) and keyboard_check(ord("G")) ){
				game_restart();
			}
	
			// screenshot
			if ( keyboard_check(vk_control) and keyboard_check_pressed(ord("S")) ) {
			    screen_save(working_directory + "Screens\Screen_" + string(current_time) + ".png");
		    }
			break;
	}
}