if (idle && !global.paused && !global.inGameCutscene && global.gameStart) {
	if (idleStance && y >= 270) {
		y -= 1;
	}
	if (idleStance && y == 270) idleStance = false;
	if (!idleStance && (y + sprite_height) <= 316) {
		y += 1;
	}
	if (!idleStance && (y + sprite_height) == 316) idleStance = true;
}
alarm[0] = room_speed / 32;