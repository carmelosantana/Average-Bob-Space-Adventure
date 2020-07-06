ww = global.camera_width/2;
hh = global.camera_height/2;

c = c_white;

draw_set_halign(fa_center);

draw_text_transformed_color(
	ww, hh, "PAUSE", 
	.8, .8, 0, c, c, c, c, 1
);

draw_set_halign(fa_left);
