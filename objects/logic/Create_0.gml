/* Constants */

global.tile_res = 16;
global.obj_res = 32;

/* Game Variables */

global.currentLevel = 1;
global.playerLives = 3;
global.paused = false;
global.gameStart = false;
global.gameOver = false;
global.inGameCutscene = false;
global.currentEatSound = 0;
forcePaused = false;
flashCounter = 0;

/* Debug Options */

global.debug = 0;
global.debug_b = 0;
global.debug_i = 0;
global.debug_p = 0;
global.debug_c = 0;
global.invincible = 0;
global.pToEnd = 1;

////////////////////

alarm[0] = room_speed * 4.75;
if (global.playerLives < 0) global.playerLives = 0;
if (global.playerLives > 4) global.playerLives = 4;