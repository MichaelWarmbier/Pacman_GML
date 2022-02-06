/* Get user input and move if possible., change sprite */
if (global.paused) visible = false;
else if (!global.inGameCutscene && global.gameStart) {
	visible = true;

	if (keyboard_check(ord("W")) || keyboard_check(vk_up)) {        // up
		if (!checkCollision(tilemap, bbox_left, bbox_top - 1) && !checkCollision(tilemap, bbox_right, bbox_top - 1)) {
			face = dir.UP; active = true;
			sprite_index = pacmanSprite_UP;
		}
	}
	if (keyboard_check(ord("S")) || keyboard_check(vk_down)) { // down 
		if (!checkCollision(tilemap, bbox_left, bbox_bottom + 1) && !checkCollision(tilemap, bbox_right, bbox_bottom + 1)) {
			face = dir.DOWN; active = true;
			sprite_index = pacmanSprite_DOWN;
		}
	}
	if (keyboard_check(ord("A")) || keyboard_check(vk_left)) {  // left
		if (!checkCollision(tilemap, bbox_left - 1, bbox_top) && !checkCollision(tilemap, bbox_left - 1, bbox_bottom)) {
			face = dir.LEFT; active = true;
			sprite_index = pacmanSprite_LEFT;
		}
	}

	if (keyboard_check(ord("D")) || keyboard_check(vk_right)) { // right
		if (!checkCollision(tilemap, bbox_right + 1, bbox_top) && !checkCollision(tilemap, bbox_right + 1, bbox_bottom)) {
			face = dir.RIGHT; active = true;
			sprite_index = pacmanSprite_RIGHT;
		}
	}

	/* Move in direction */

	if (active)
		switch (face) {
		case dir.UP:
			if (!checkCollision(tilemap, bbox_left, bbox_top - spd) && !checkCollision(tilemap, bbox_right, bbox_top - spd) && bbox_left >= 0 && bbox_right <= room_width)
			y -= spd; 
		break;
		case dir.DOWN: 
			if (!checkCollision(tilemap, bbox_left, bbox_bottom + spd) && !checkCollision(tilemap, bbox_right, bbox_bottom + spd) && bbox_left >= 0 && bbox_right <= room_width)
			y += spd; 
		break;
		case dir.LEFT: 
			if (!checkCollision(tilemap, bbox_left - spd, bbox_top) && !checkCollision(tilemap, bbox_left - spd, bbox_bottom))
			x -= spd; 
		break;
		case dir.RIGHT: 
			if (!checkCollision(tilemap, bbox_right + spd, bbox_top) && !checkCollision(tilemap, bbox_right + spd, bbox_bottom))
			x += spd; 
		break;
	}
		
}
	

