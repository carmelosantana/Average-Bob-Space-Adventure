// restarts "level 1"
function init_game_room(){
	score = INIT_SCORE;
	lives = INIT_LIVES;
	
	game_set_speed(ROOM_SPEED_INIT, gamespeed_fps);
}

function on_bullet_collision(){
	// some bullet sounds
	audio_play_sound(snd_hit_asteroid, 5, false);

	// new life
	if ( score >= SCORE_NEW_LIFE and score != global.score_last_new_life and (score mod SCORE_NEW_LIFE) == 0 ) {
		global.score_last_new_life = score;
		lives += 1;
	}
}

function generate_debris_explosion(_debris_repeat, _explosion, _explosion_repeat){
	repeat(_debris_repeat){
		instance_create_layer(x, y, "Instances", obj_debris);
	}
	
	if ( _explosion ){
		repeat(_explosion_repeat){
			instance_create_layer(x, y, "Instances", obj_explosion_large);	
		}
	}
}

function spawn_asteroids_stage_start(_repeat){
	repeat(_repeat){
		var xx = choose(
			irandom_range(0, room_width*0.3),
			irandom_range(room_width*0.3, 0)
		);
		var yy = choose(
			irandom_range(0, room_height*0.3),
			irandom_range(room_height*0.7, 0)
		);
	}
	instance_create_layer(xx, yy, "Instances", obj_asteroid);
}

function spawn_asteroids(){
	if ( choose(0, 1) == 0){
		var xx = choose(0, room_width);
		var yy = irandom_range(0, room_height);
	} else {
		var xx = irandom_range(0, room_width);
		var yy = choose(0, room_height);			
	}
	instance_create_layer(xx, yy, "Instances", obj_asteroid);
}