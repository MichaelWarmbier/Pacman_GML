if (point_distance(pacman.x + 16, pacman.y + 16, self.x + 16, self.y + 16) < (8 * 16))
	target = [scatter_target[0], scatter_target[1]];
else 
	target = [pacman.x + 16, pacman.y + 16];
	
ghostAdvance(target, clyde);