draw_sprite(sprite_index, image_index, x, y);
if (global.debug || global.debug_b) {
	draw_line_width_color(self.x + 16, self.y + 16, target[0], target[1], 2, c_red, c_red);
	draw_sprite(blinky_target, -1, target[0] - 16, target[1] - 16);
}

if (global.debug_pos || global.debug || global.debug_b) {
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