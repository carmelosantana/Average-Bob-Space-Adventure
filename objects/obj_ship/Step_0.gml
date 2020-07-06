if( global.player_alive ) {
	// left click
	if ( keyboard_check(vk_left) and !keyboard_check(vk_right) ) {
		image_angle += max_image_angle;
	}
	if ( !keyboard_check(vk_left) and keyboard_check(vk_right) ) {
		image_angle -= max_image_angle;
	}
	
	// sets thruster lag	
	if ( keyboard_check_released(vk_left) or keyboard_check_released(vk_right) ) {
		if ( keyboard_check_released(vk_left) ) {
			image_angle_lag = max_image_angle_lag;
		} else {
			image_angle_lag = -max_image_angle_lag;
		}
		image_acceleration = max_image_acceleration;
	}	

	// resets img_acceleration when we're done moving
	if ( image_acceleration > 0 ) {
		if ( image_angle_lag > 0 ) {
			image_angle_lag -= image_acceleration;
			image_angle += image_acceleration;
		
		} else if ( image_angle_lag < 0 ) {
			image_angle_lag += image_acceleration;
			image_angle -= image_acceleration;
		}
		image_acceleration -= image_acceleration*image_deceleration_rate;

	} else if ( image_acceleration < 0 ) {
		image_acceleration = 0;
		image_angle_lag = 0;
	}	

	if ( keyboard_check(vk_up) ) {
		if ( direction == image_angle and speed > max_speed ){
			speed = max_speed;
			
		} else {
			motion_add(image_angle, 0.06);
	
		}		
	}

	if ( keyboard_check(vk_down) ) {
		speed -= 0.02;
	}

	if ( keyboard_check_pressed(vk_space) ) {
		weapon_shoot(id, weapon, image_angle);
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

MOVE_WRAP;