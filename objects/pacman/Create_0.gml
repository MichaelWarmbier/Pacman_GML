enum dir {LEFT, RIGHT, UP, DOWN};
tilemap = layer_tilemap_get_id("collisionTiles");

playerLives = 3;

spd = 2;
face = dir.RIGHT;
active = false;


// global

global.tile_res = 16;
global.obj_res = 32;

global.currentLevel = 1;

// debug

global.debug = 1;
global.debug_b = 0;
global.debug_i = 1;
global.debug_p = 0;
global.debug_c = 0;
