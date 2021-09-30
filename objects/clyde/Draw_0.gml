draw_sprite(sprite_index, image_index, x, y);
if (global.debug || global.debug_c) {
	draw_line_width_color(self.x + 16, self.y + 16, target[0], target[1], 2, color, color);
	draw_sprite(clyde_target, -1, target[0] - 16, target[1] - 16);
	draw_set_color = color;
	draw_circle(self.x + global.tile_res, self.y + global.tile_res, 8 * global.tile_res, true);
}