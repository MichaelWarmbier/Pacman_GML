for (i = 0; i < 7; i++) {
	switch (level_data[i]) {
		case "CHERRY": 
			draw_sprite(large_cherries, -1, (bbox_right - (global.obj_res * (i + 1))), bbox_top); 
			break;
		case "STRAWBERRY":
			draw_sprite(large_strawberry, -1, (bbox_right - (global.obj_res * (i + 1))), bbox_top); 
			break;
		case "ORANGE":
			draw_sprite(large_orange, -1, (bbox_right - (global.obj_res * (i + 1))), bbox_top); 
			break;
		case "APPLE":
			draw_sprite(large_apple, -1, (bbox_right - (global.obj_res * (i + 1))), bbox_top); 
			break;
		case "MELON":
			draw_sprite(large_melon, -1, (bbox_right - (global.obj_res * (i + 1))), bbox_top); 
			break;
		case "SHIP":
			draw_sprite(large_ship, -1, (bbox_right - (global.obj_res * (i + 1))), bbox_top); 
			break;
		case "BELL":
			draw_sprite(large_bell, -1, (bbox_right - (global.obj_res * (i + 1))), bbox_top); 
			break;
		case "KEY":
			draw_sprite(large_key, -1, (bbox_right - (global.obj_res * (i + 1))), bbox_top); 
			break;
	}
}
