function checkCollision(tm, xpos, ypos){
	if (tilemap_get_at_pixel(tm, xpos, ypos)) 
		return true;
}