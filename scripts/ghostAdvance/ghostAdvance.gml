function ghostAdvance(target, ghost) {
	tilemap = layer_tilemap_get_id("collisionTiles");
	directions = [false, false, false, false]; // top right bottom left
	switchDir = false;
	centerPoints = [ghost.x + (ghost.sprite_width / 2), ghost.y + (ghost.sprite_height / 2)];
	distances = [0,0,0,0]; // top right bottom left
	
	if (global.paused) ghost.visible = false;
	else if (!ghost.idle) {
		ghost.visible = true;
		
		if (!checkCollision(tilemap, ghost.bbox_left, ghost.bbox_top - 1) && !checkCollision(tilemap, ghost.bbox_right, ghost.bbox_top - 1)) // up
			directions[0] = true;
		if (!checkCollision(tilemap, ghost.bbox_right + 1, ghost.bbox_top) && !checkCollision(tilemap, ghost.bbox_right + 1, ghost.bbox_bottom)) // right
			directions[1] = true;
		if (!checkCollision(tilemap, ghost.bbox_left, ghost.bbox_bottom + 1) && !checkCollision(tilemap, ghost.bbox_right, ghost.bbox_bottom + 1)) // down
			directions[2] = true;	
		if (!checkCollision(tilemap, ghost.bbox_left - 1, ghost.bbox_top) && !checkCollision(tilemap, ghost.bbox_left - 1, ghost.bbox_bottom)) // right
			directions[3] = true;
	
		if ((ghost.face == dir.UP && (directions[3] || directions[1])) ||
			 (ghost.face == dir.RIGHT && (directions[0] || directions[2])) ||
			 (ghost.face == dir.DOWN && (directions[3] || directions[1])) ||
			 (ghost.face == dir.LEFT && (directions[0] || directions[2])))
		switchDir = true;
			
		
		if (switchDir) { // Decision
			distances[0] = distance(centerPoints[0], centerPoints[1] - sprite_height, target[0], target[1]);
			distances[1] = distance(centerPoints[0] + sprite_width, centerPoints[1], target[0], target[1]);
			distances[2] = distance(centerPoints[0], centerPoints[1] + sprite_height, target[0], target[1]);
			distances[3] = distance(centerPoints[0] - sprite_width, centerPoints[1], target[0], target[1]);
			

			if (!directions[0] || ghost.face == dir.DOWN)
				distances[0] = 9999;
			if (!directions[1] || ghost.face == dir.LEFT)
				distances[1] = 9999;
			if (!directions[2] || ghost.face == dir.UP)
				distances[2] = 9999;
			if (!directions[3] || ghost.face == dir.RIGHT)
				distances[3] = 9999;
				
			switch (min(distances[0], distances[1], distances[2], distances[3])) {
				case distances[0]: if (!place_meeting(ghost.x, ghost.y, upwards_block)) ghost.face = dir.UP; break;
				case distances[1]: ghost.face = dir.RIGHT; break;
				case distances[2]: ghost.face = dir.DOWN; break;
				case distances[3]: ghost.face = dir.LEFT; break;
			}
			
			switchDir = false;
		}
		
		
		switch (ghost.face) {
			case dir.UP: if (directions[0]) ghost.y -= ghost.spd; break;
			case dir.RIGHT: if (directions[1]) ghost.x += ghost.spd; break;
			case dir.DOWN: if (directions[2]) ghost.y += ghost.spd; break;
			case dir.LEFT: if (directions[3]) ghost.x -= ghost.spd; break;
		}
	}
	else ghost.visible = true;
}