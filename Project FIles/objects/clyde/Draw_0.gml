draw_sprite(sprite_index, image_index, x, y);
if (global.debug || global.debug_c) {
	draw_line_width_color(self.x + 16, self.y + 16, target[0], target[1], 2, color, color);
	draw_sprite(clyde_target, -1, target[0] - 16, target[1] - 16);
	draw_set_color = color;
	draw_circle(self.x + global.tile_res, self.y + global.tile_res, 8 * global.tile_res, true);
}

if (global.debug_pos || global.debug || global.debug_c) {
	if (checkCollision(global.tilemap, bbox_left, bbox_top - spd) || checkCollision(global.tilemap, bbox_right, bbox_top - spd))
		draw_set_color(c_red); else draw_set_color(c_green);
		draw_rectangle(bbox_left, bbox_top - 4, bbox_right, bbox_top - 1, false);
	if (checkCollision(global.tilemap, bbox_left, bbox_bottom + spd) || checkCollision(global.tilemap, bbox_right, bbox_bottom + spd))
		draw_set_color(c_red); else draw_set_color(c_green);
		draw_rectangle(bbox_left, bbox_bottom + 1, bbox_right, bbox_bottom + 4, false);
	if (checkCollision(global.tilemap, bbox_left - spd, bbox_top) || checkCollision(global.tilemap, bbox_left - spd, bbox_bottom))
		draw_set_color(c_red); else draw_set_color(c_green);
		draw_rectangle(bbox_left - 4, bbox_top, bbox_left - 1, bbox_bottom, false);
	if (checkCollision(global.tilemap, bbox_right + spd, bbox_top) || checkCollision(global.tilemap, bbox_right + spd, bbox_bottom))
		draw_set_color(c_red); else draw_set_color(c_green);
		draw_rectangle(bbox_right + 1, bbox_top, bbox_right + 4, bbox_bottom, false);
}