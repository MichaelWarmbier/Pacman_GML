if (instance_place(x,y, pacman) && pacman.face == dir.LEFT)
	pacman.x += room_width - (global.tile_res);
else if (instance_place(x,y, pacman) && pacman.face == dir.RIGHT)
	pacman.x = 1;