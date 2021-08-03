extraLife[1] = inst_5EB7D450; extraLife[2] = inst_34A3C9BE; extraLife[3] = inst_4C48D102;


if (pacman.playerLives <= 3) extraLife[3].sprite_index = emptySprite32x32;
else extraLife[3].sprite_index = extraLifeSprite;
if (pacman.playerLives <= 2) extraLife[2].sprite_index = emptySprite32x32;
else extraLife[2].sprite_index = extraLifeSprite;
if (pacman.playerLives <= 1) extraLife[1].sprite_index = emptySprite32x32;
else extraLife[1].sprite_index = extraLifeSprite;