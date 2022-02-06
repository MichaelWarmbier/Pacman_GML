if (!global.invincible) {
	if (!global.inGameCutscene) {
		alarm[0] = room_speed * 1.5;
		image_speed = 0;
	} global.inGameCutscene = true;
	
	if (image_speed > 0)
	 if (image_index > image_number - 1) 
		visible = false;
}