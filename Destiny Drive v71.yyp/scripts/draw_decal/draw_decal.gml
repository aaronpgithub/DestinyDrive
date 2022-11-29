///@param array_position
///@param draw_shadow
///@param special_conditional
function draw_decal() {

	globalvar array_position;
	array_position = argument[0];
	globalvar shadow_draw;
	shadow_draw = false;

	if argument_count > 1 shadow_draw = argument[1]

	globalvar array_y;

	for(array_y = 0; array_y < 3; array_y++) {
	
		var y_add_off = 0;
		if argument_count > 2 {
			switch(argument[2]) {
				case "cloud":
				y_add_off = bg[array_position, 10 + array_y]
				break;
			}
		}
	
		globalvar sprt, indx, sprx, spry;
		sprt = bg[array_position, array_y + 3]
		indx = 0 
		sprx = bg[array_position, 1] + (array_y * 320)
		spry = bg[array_position, 2] + y_add_off
	
		with(objBCKlayer) {
			if bck_array = array_position {
				background_array[array_y, 0] = sprt
				background_array[array_y, 1] = indx
				background_array[array_y, 2] = sprx
				background_array[array_y, 3] = spry
				shadow_to_draw = shadow_draw
			
				if argument_count > 2 {
					switch(argument[2]) {
						case "forest_fog":
							image_alpha = 1 + ((depth - 55) / 30)
							background_decal_color = make_colour_rgb(242, 239, 121)
						break;
					}
				}
			}
		}
	}


}
