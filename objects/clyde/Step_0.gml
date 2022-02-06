if (place_meeting(x, y, slowdown)) { spd = 1.5; }
else spd = pacman.spd;

if (point_distance(pacman.x + 16, pacman.y + 16, self.x + 16, self.y + 16) < (8 * 16))
	target = [scatter_target[0], scatter_target[1]];
else 
	target = [pacman.x + 16, pacman.y + 16];
	
if (global.inGameCutscene) image_speed = 0;
else if (global.gameStart) ghostAdvance(target, clyde);