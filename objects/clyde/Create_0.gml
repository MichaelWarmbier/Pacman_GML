color = $51B7FF;
scatter_target = [16 + global.tile_res, 560 + global.tile_res];
target = [pacman.x + 16, pacman.y + 16];
face = dir.RIGHT;
spd = 2;
idle = true;
freeze = false;
idleStance = true;
alarm[0] = room_speed / 32;