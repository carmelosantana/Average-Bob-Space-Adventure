// lives, scoring
#macro INIT_SCORE 0
#macro INIT_LIVES 3
#macro SCORE_NEW_LIFE 1000

// room_speed
#macro ROOM_SPEED_SLOW 15
#macro ROOM_SPEED_SLOW_DURATION 3
if ( !variable_global_exists("create_room_speed") ){
	global.create_room_speed = game_get_speed(gamespeed_fps);
	#macro ROOM_SPEED_INIT global.create_room_speed
}

// player actions
#macro MOVE_WRAP move_wrap(true, true, sprite_width/2);

// debris
global.debris_pieces_ship = 10;
global.debris_pieces_asteroid = 2;

// player
global.player_alive = true;
global.score_last_new_life = 0;
global.new_life_shield = false;

// factions
enum factions {
	neutral,
	ally,
	enemy
}

// game modes
enum game_modes {
	arcade,
	campaign
}

// weapons
enum weapons {
	bullet,
	machine_gun,
	laser,
	proximity
}

// power ups
enum power_ups {
	shield,
	drone,
	camouflage
}

//game state
enum game_states {
	running,
	paused,
	started,
	menu	
}

global.game_state = game_states.started;

//randomize();