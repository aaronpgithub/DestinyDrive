///@param *top road clamp
///@param *bottom road clamp
function road_random() {

	var min_clamp, max_clamp;

			min_clamp = 0
			max_clamp = 0

	switch(argument_count) {
		case 1: //just want a min clamp, weird
		min_clamp = argument[0]
		break;
		case 2: //want both min and max clamp
		min_clamp = argument[0]
		max_clamp = argument[1]
		break;
	}

	return random_range(road_y_min + min_clamp, road_y_max + max_clamp);


}
