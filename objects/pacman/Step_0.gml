if (keyboard_check(ord("W")) || keyboard_check(vk_up)) {        // up
	if (!checkCollision(tilemap, bbox_left, bbox_top - 1) && !checkCollision(tilemap, bbox_right, bbox_top - 1)) {
		face = dir.UP; active = true;
		sprite_index = pacmanSprite_UP;
	}
}
else if (keyboard_check(ord("S")) || keyboard_check(vk_down)) { // down 
	if (!checkCollision(tilemap, bbox_left, bbox_bottom + 1) && !checkCollision(tilemap, bbox_right, bbox_bottom + 1)) {
		face = dir.DOWN; active = true;
		sprite_index = pacmanSprite_DOWN;
	}
}
else if (keyboard_check(ord("A")) || keyboard_check(vk_left)) {  // left
	if (!checkCollision(tilemap, bbox_left - 1, bbox_top) && !checkCollision(tilemap, bbox_left - 1, bbox_bottom)) {
		face = dir.LEFT; active = true;
		sprite_index = pacmanSprite_LEFT;
	}
}
else if (keyboard_check(ord("D")) || keyboard_check(vk_right)) { // right
	if (!checkCollision(tilemap, bbox_right + 1, bbox_top) && !checkCollision(tilemap, bbox_right + 1, bbox_bottom)) {
		face = dir.RIGHT; active = true;
		sprite_index = pacmanSprite_RIGHT;
	}
}

if (active)
	switch (face) {
		case dir.UP:
			if (!checkCollision(tilemap, bbox_left, bbox_top - 1) && !checkCollision(tilemap, bbox_right, bbox_top - 1))
			y -= spd; 
		break;
		case dir.DOWN: 
			if (!checkCollision(tilemap, bbox_left, bbox_bottom + 1) && !checkCollision(tilemap, bbox_right, bbox_bottom + 1))
			y += spd; 
		break;
		case dir.LEFT: 
			if (!checkCollision(tilemap, bbox_left - 1, bbox_top) && !checkCollision(tilemap, bbox_left - 1, bbox_bottom))
			x -= spd; 
		break;
		case dir.RIGHT: 
			if (!checkCollision(tilemap, bbox_right + 1, bbox_top) && !checkCollision(tilemap, bbox_right + 1, bbox_bottom))
			x += spd; 
		break;
	}
	
if (instance_place(x, y, smallPellet) != noone)
	instance_destroy(instance_place(x, y, smallPellet));
else if (instance_place(x, y, largePellet) != noone)
	instance_destroy(instance_place(x, y, largePellet));