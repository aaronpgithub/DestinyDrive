function add_movement() {
	//what add movement needs to be able to do
	//special conditionals for certain things (wasteland clouds changing y, image index changing)
	//setting transitions when going past -320

	///@param array_position
	///@param conditional
	///@param quick_transition
	///@param do_transition

	//fix the conditional thing, it needs to only trigger when going past -320

	var array_position = argument[0];
	var condition = ""
	var quick_transition = false;
	var do_transition = true

	if argument_count > 1 condition = argument[1]

	if argument_count > 2 quick_transition = argument[2]

	if argument_count > 3 do_transition = argument[3]

	var speed_left = bg[array_position, 0] * global.decal_spd

	for(var background = 0; speed_left > 0; background -= 1) {
			var speed_subtract = 1;
				if speed_left < 1 speed_subtract = speed_left
			
			bg[array_position, 1] -= speed_subtract
			speed_left -= 1
		
			decal_reset_position(array_position, condition, do_transition)
	}

			if quick_transition = true {
				do {
					if bg[array_position, 1] > 0 bg[array_position, 1] -= 320
				} until (bg[array_position, 1] <= 0)
			
				decal_reset_position(array_position, condition, do_transition)
			}


}
