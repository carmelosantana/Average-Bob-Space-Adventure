sprite_index = choose(
	spr_asteroid_32,
	spr_asteroid_64,
	spr_asteroid_128
);

direction = irandom_range(0, 359);
image_angle = irandom_range(0, 359);

speed = 1;