if (instance_place(x, y, smallPellet) != noone)
	instance_destroy(instance_place(x, y, smallPellet));
if (!global.currentEatSound) audio_play_sound(munch_1, 9, false);
if (global.currentEatSound) audio_play_sound(munch_2, 9, false);
global.currentEatSound = !global.currentEatSound;