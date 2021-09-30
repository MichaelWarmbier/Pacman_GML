draw_sprite(sprite_index, image_index, x, y);
if ((global.debug || global.debug_i) && instance_exists(blinky)) {
	draw_line_width_color(self.x + 16, self.y + 16, target[0], target[1], 2, color, color);
	draw_line_width_color(blinky.x + global.tile_res, blinky.y + global.tile_res, blinky.x + (median_tile[0] - blinky.x) * 2, blinky.y + (median_tile[1] - blinky.y) * 2, 2, c_white, c_white);
	draw_sprite(inky_target, -1, target[0] - 16, target[1] - 16);
}