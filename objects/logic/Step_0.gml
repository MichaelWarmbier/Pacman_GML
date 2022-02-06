/* Check if level has been completed */
if ((!(instance_exists(smallPellet) || instance_exists(largePellet)) || (keyboard_check_pressed(ord("P"))) && global.pToEnd) && !global.inGameCutscene) {
	global.currentLevel += 1;
	global.inGameCutscene = true;
	alarm[2] = room_speed * 2;
	pacman.image_speed = 0;
}

/* Check if game has been paused */
if (keyboard_check_pressed(vk_enter) && !global.inGameCutscene) {
	global.paused = !global.paused;
	forcePaused = !forcePaused;
}
if (window_has_focus() && !forcePaused)
	global.paused = false;
else if (!global.inGameCutscene)
	global.paused = true;
	
/* Setup GameOver */
if (global.playerLives <= 0 && !global.gameOver) {
	global.gameOver = true;
	alarm[0] = -1;
	gameOverDisplay.visible = true;
	readyDisplay.visible = false;
	blinky.visible = false;
	inky.visible = false;
	pinky.visible = false;
	clyde.visible = false;
	pacman.visible = false;
	alarm[1] = room_speed * 4.5;
}

/* Setup Win */
if (flashCounter >= 4) {
	alarm[2] = -1;
	alarm[3] = -1;
	if (alarm[4] == -1)
		alarm[4] = room_speed * .2;
	flashCounter = 0;
}