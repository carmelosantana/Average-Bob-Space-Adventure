if( global.player_alive ) {
	// controls
	if ( keyboard_check(vk_left) ) {
		image_angle += 5;
	}

	if ( keyboard_check(vk_right) ) {
		image_angle -= 5;
	}

	if ( keyboard_check(vk_up) ) {
		motion_add(image_angle, 0.06);
	}

	if ( keyboard_check(vk_down) ) {
		speed -= 0.02;
	}

	if ( keyboard_check_pressed(vk_space) ) {
		audio_play_sound(snd_bullet_1, 5, false);
		var inst_bullet = instance_create_layer(x, y, "Instances", obj_bullet);
		inst_bullet.direction = image_angle;	
	}
	
} else if ( !global.player_alive ) {
	// slow + stop ship
	if ( speed > 0 ) {		
		speed -= speed*0.2;
		
	} else if ( speed < 0 ) {
		speed = 0;
	}		

	if ( speed == 0 ) {
		if ( game_get_speed(gamespeed_fps) != ROOM_SPEED_INIT ){		
			// slowly increase room speed
			new_room_speed = game_get_speed(gamespeed_fps) + ROOM_SPEED_INIT*0.2;
			game_set_speed(new_room_speed, gamespeed_fps);
		
			// reset room speed and player
			if ( game_get_speed(gamespeed_fps) > ROOM_SPEED_INIT ){
				game_set_speed(ROOM_SPEED_INIT, gamespeed_fps);
				
			}
			
		} else if ( speed == 0 and game_get_speed(gamespeed_fps) == ROOM_SPEED_INIT ) {
			global.player_alive = true;		
			sprite_index = spr_ship_shielded;
			alarm[0] = room_speed*2.2;
			
		}
	}
}

move_wrap(true, true, sprite_width/2);