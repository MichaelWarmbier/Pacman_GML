draw_sprite(sprite_index, image_index, x, y);
if (global.debug || global.debug_b) {
	draw_line_width_color(self.x + 16, self.y + 16, target[0], target[1], 2, c_red, c_red);
	draw_sprite(blinky_target, -1, target[0] - 16, target[1] - 16);
}
