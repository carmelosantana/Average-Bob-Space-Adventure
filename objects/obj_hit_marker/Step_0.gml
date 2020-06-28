image_alpha -= 0.01;
speed -= 0.2;
var c = c_purple;
draw_set_font(fnt_primary);

draw_text_transformed_color(
	x, y, "HIT", 
	1, 1, 0, c, c, c, c, 1
);
if ( image_alpha <= 0 ) {
	instance_destroy();
}