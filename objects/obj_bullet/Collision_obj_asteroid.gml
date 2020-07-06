instance_destroy();
on_bullet_collision();

with(other){
	var points = 0;
	
	
	if ( sprite_index == spr_asteroid_128 ) {
		var points = 5;
		
		repeat(2){
			var new_asteroid = instance_create_layer(x, y, "Instances", obj_asteroid);
			new_asteroid.sprite_index = spr_asteroid_64;
		}
		
		audio_play_sound(snd_explode_0, 5, false);

	} else if ( sprite_index == spr_asteroid_64 ) {
		var points = 10
		
		repeat(2){
			var new_asteroid = instance_create_layer(x, y, "Instances", obj_asteroid);
			new_asteroid.sprite_index = spr_asteroid_32;
		}
		
		audio_play_sound(snd_explode_0, 5, false);
		
	} else if ( sprite_index == spr_asteroid_32 ) {
		var points = 15;
	
		audio_play_sound(snd_explode_0, 5, false);
		
	}
	
	score += points;
	
	generate_debris_explosion(10, true, 1);
	
	instance_destroy();
}