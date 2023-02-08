if (place_meeting(x, y, slowdown)) { spd = 1.5; }
else spd = 2;
target = [pacman.x + 16, pacman.y + 16];

if (global.inGameCutscene) image_speed = 0;
else if (global.gameStart) ghostAdvance(target, blinky);