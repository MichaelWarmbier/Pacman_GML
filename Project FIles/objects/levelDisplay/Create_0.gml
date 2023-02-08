all_levels = ["CHERRY", "STRAWBERRY", "ORANGE", "ORANGE", "APPLE", "APPLE", "MELON",
"MELON", "SHIP", "SHIP", "BELL", "BELL", "KEY", "KEY", "KEY", "KEY", "KEY", "KEY", "KEY"];
level_data = ["", "", "", "", "", "", ""];
R = [0, 0]

if (global.currentLevel < 8) R = [1, global.currentLevel];
if (global.currentLevel > 7 && global.currentLevel < 19) R = [global.currentLevel - 6, global.currentLevel];
if (global.currentLevel > 18) R = [13, 19];
	
	
var j = 0;
for (i = R[0]; i <= R[1]; i++) {
	level_data[j] = all_levels[i - 1];
	j++;
}

show_debug_message("THE CURRENT LEVELSET IS: " + level_data[0] + level_data[1] + level_data[2] + level_data[3] +
level_data[4] + level_data[5] + level_data[6]);