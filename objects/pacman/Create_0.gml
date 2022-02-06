enum dir {UP = 0, RIGHT = 1, DOWN = 2, LEFT = 4};
tilemap = layer_tilemap_get_id("collisionTiles");

spd = 2;
face = dir.RIGHT;
active = false;