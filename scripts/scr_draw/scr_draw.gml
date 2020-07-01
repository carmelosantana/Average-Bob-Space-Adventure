// draws large Space Bob logo
function draw_logo(ww, hh){
	var colors;
	colors[0] = c_green;
	colors[1] = c_yellow;
	colors[2] = c_red;

	i = 0;
	repeat (3) {
		draw_text_transformed_color(
			ww, hh, "Average Bob", 
			2, 2, 0, colors[i], colors[i], colors[i], colors[i], 1
		);
		i += 1;
		ww += 5;
		hh += 5;		
	}
}

function draw_game_over(ww, hh){
	draw_set_halign(fa_center);
	var c = c_red;
	draw_text_transformed_color(
		ww, hh, "Gameover!", 
		2, 2, 0, c, c, c, c, 1
	);
	draw_set_halign(fa_left);
}

function draw_select_menu(){
	draw_set_halign(fa_center);
	draw_logo();
	var c = c_white;
	var fnt_sz = 0.5;
	hh = room_height*0.5;
	hh += 30
	draw_text_transformed_color(
		room_width/2, hh, "1. Classic", fnt_sz, fnt_sz, 0, c, c, c, c, 1
	);

	hh += 30
	draw_text_transformed_color(
		room_width/2, hh, "2. Party", fnt_sz, fnt_sz, 0, c, c, c, c, 1
	);
		
	hh += 30
	draw_text_transformed_color(
		room_width/2, hh, "3. Options", fnt_sz, fnt_sz, 0, c, c, c, c, 0.4
	);		
	draw_set_halign(fa_left);
}