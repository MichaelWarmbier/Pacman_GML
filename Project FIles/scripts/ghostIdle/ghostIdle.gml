function ghostIdle(ghost) {
	if (ghost.idle && !global.paused && !global.inGameCutscene && global.gameStart) {
		if (ghost.idleStance && ghost.y >= (global.tile_res * 17)) ghost.y -= 1;
		if (ghost.idleStance && ghost.y == (global.tile_res * 17)) ghost.idleStance = false;
		if (!ghost.idleStance && (ghost.y + global.obj_res) <= (global.tile_res * 20)) ghost.y += 1;
		if (!ghost.idleStance && (ghost.y + global.obj_res) == (global.tile_res * 20)) ghost.idleStance = true;
	}
}