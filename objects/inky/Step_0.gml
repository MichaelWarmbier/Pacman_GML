switch (pacman.face) {
	case dir.UP:
	median_tile = [(pacman.x + 16) - (16 * 2), (pacman.y + 16) - (16 * 2)];
	/* This unique property to Inky's median target is an intentional bug based off the unintentional bug
	in the original arcade version of Pacman */
	break;
	case dir.DOWN:
	median_tile = [(pacman.x + 16), (pacman.y + 16) + (16 * 2)];
	break;
	case dir.LEFT:
	median_tile = [(pacman.x + 16) - (16 * 2), (pacman.y + 16)];
	break;
	case dir.RIGHT:
	median_tile = [(pacman.x + 16) + (16 * 2), (pacman.y + 16)];
	break;
}

if (instance_exists(blinky)) {
	target[0] = blinky.x + (median_tile[0] - blinky.x) * 2;
	target[1] = blinky.y + (median_tile[1] - blinky.y) * 2;
}

ghostAdvance(target, inky);