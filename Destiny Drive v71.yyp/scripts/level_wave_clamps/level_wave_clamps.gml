function level_wave_clamps(argument0) {
	switch(global.level) {
		case "wasteland":
			if argument0 > mini_wave - 4 and argument0 <= mini_wave + 1 {
				return 5;
			} else {
				return 6;
			}
		break;
		case "swamp":
			return 5;
		break;	
		case "forest":
			return 7;
		break;
	}

	return 9;


}
