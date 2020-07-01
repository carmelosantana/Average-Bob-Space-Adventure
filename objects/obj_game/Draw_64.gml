switch(room){
	case rm_level_0:
		draw_set_font(fnt_mono);
		var c = c_white;
		draw_text_transformed_color(
			20, 20, "SCORE: "+string(score), 
			1, 1, 0, c, c, c, c, 1
		);
		draw_text_transformed_color(
			20, 50, "LIVES: "+string(lives), 
			1, 1, 0, c, c, c, c, 1
		);
		break;
		
	case rm_start:
		draw_set_halign(fa_center);
		
		var ww = room_width/2;
		var hh = room_height*0.2;
		
		draw_logo(ww, hh);
		
		var c = c_silver;
		hh += 200;
		draw_text_transformed_color(
			ww, hh, "Space Adventure",  
			0.5, 0.5, 0, c, c, c, c, 1
		);
		
		var c = c_white;
		hh += 100;		
		draw_text_transformed_color(
			ww, hh, "** Press ENTER to start **",  
			0.4, 0.4, 0, c, c, c, c, 1
		);		
		draw_set_halign(fa_left);
		break;	
		
	case rm_win:
		draw_set_halign(fa_center);
		var c = c_lime;
		draw_text_transformed_color(
			room_width/1.5, room_height*0.3, "You win!", 
			2, 2, 0, c, c, c, c, 1
		);
		draw_set_halign(fa_left);
		break;
		
	case rm_game_over:
		var ww = room_width/2;
		var hh = room_height*0.2;
		draw_game_over(ww, hh);
		break;		
}
draw_set_font(fnt_primary);
