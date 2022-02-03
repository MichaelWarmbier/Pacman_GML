switch (pacman.face) {
	case dir.UP:
	target = [(pacman.x + 16) - (16 * 4), (pacman.y + 16) - (16 * 4)];
	/* This unique property to Pinky's upwards target is an intentional bug based off the unintentional bug
	in the original arcade version of Pacman */
	break;
	case dir.DOWN:
	target = [(pacman.x + 16), (pacman.y + 16) + (16 * 4)];
	break;
	case dir.LEFT:
	target = [(pacman.x + 16) - (16 * 4), (pacman.y + 16)];
	break;
	case dir.RIGHT:
	target = [(pacman.x + 16) + (16 * 4), (pacman.y + 16)];
	break;
}

ghostAdvance(target, pinky);