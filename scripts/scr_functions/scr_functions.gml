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

function spawn_off_screen(_obj, _repeat, _pad){
	var xx = irandom_range(0, room_width);
	var yy = irandom_range(0, room_height);
	
	repeat ( _repeat ){
		while ( check_point_in_camera(xx, yy, _pad) ){
			xx = irandom_range(0, room_width);
		}
		while ( check_point_in_camera(xx, yy, _pad) ){
			yy = irandom_range(0, room_height);
		}
				
		instance_create_layer(xx, yy, "Instances", _obj);
	}	
}

function check_point_in_camera(_xx, _yy, _pad) {
	var camera_x = global.camera_x - _pad;
	var camera_y = global.camera_y - _pad;
	var camera_xx = global.camera_xx + _pad;
	var camera_yy = global.camera_yy + _pad;
	
	return point_in_rectangle(_xx, _yy, camera_x, camera_y, camera_xx, camera_yy);
}