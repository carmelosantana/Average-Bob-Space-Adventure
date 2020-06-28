// destroy object we run into
with(other){
	instance_destroy();
}	

// if new life, shield for 3 seconds
if ( global.new_life_shield ){	
	audio_play_sound(snd_explode_deep_0, 2, false);
	generate_debris_explosion(10, true, 2);
	
// otherwise do normal collision	
} else {	
	// shield on next life
	global.new_life_shield = true;
	global.player_alive = false;

	// deduct lives
	lives -= 1;
	sprite_index = spr_blank;

	game_set_speed(ROOM_SPEED_SLOW, gamespeed_fps);

	audio_play_sound(snd_explode_1, 2, false);	
	generate_debris_explosion(10, true, 2);	

	// display loading
	alarm[2] = room_speed*1.3;
}