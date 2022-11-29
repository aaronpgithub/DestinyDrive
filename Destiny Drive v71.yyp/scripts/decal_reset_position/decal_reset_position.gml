function decal_reset_position(argument0, argument1, argument2) {
	var array_position = argument0;
	var decal_list = variable_instance_get(self, "decal_list_" + string(array_position));

	if bg[array_position, 1] < -320 {
	#region transitions
		var new_default = 0, old_default = 0, do_transition = argument2;
	
		if do_transition = true and room = rmGame {
			switch(global.level) {
				//WASTELAND
				case "wasteland":
				var less_mini = false
				var	greater_mini = false

				if global.wave > objGameControl.mini_wave - 4 { less_mini = true }
				if global.wave > objGameControl.mini_wave + 1 { greater_mini = true }
			
					if array_position <= 2 { //wall or road or background
						if bg[3, 13] = bg[array_position, 13] {
							less_mini = false
							greater_mini = false
						}
					}

					if (less_mini = true and greater_mini = false) and string_copy(sprite_get_name(bg[array_position, 6]), 0, 9) != "sprBandit" {
						new_default = asset_get_index(string_replace(sprite_get_name(bg[array_position, 6]), "spr", "sprBandit"))
						old_default = bg[array_position, 6]
						bg[array_position, 13] = "bandit"
					}
				
					if greater_mini = true and string_copy(sprite_get_name(bg[array_position, 6]), 0, 9) = "sprBandit" {
						new_default = asset_get_index(string_replace(sprite_get_name(bg[array_position, 6]), "sprBandit", "spr"))
						old_default = bg[array_position, 6]
						bg[array_position, 13] = "wasteland"
					}
				break;
				//
			}
	
			if new_default != 0 and old_default != 0 decal_transition(array_position, new_default, old_default)
		}
	#endregion
	
		if ds_list_empty(decal_list) {
			repeat(3) ds_list_add(decal_list, bg[array_position, 6])
		}
	
		bg[array_position, 1] = 320
		bg[array_position, 3] = ds_list_find_value(decal_list, 0)
		bg[array_position, 4] = ds_list_find_value(decal_list, 1)
		bg[array_position, 5] = ds_list_find_value(decal_list, 2)
	
		repeat(3) {
			ds_list_delete(decal_list, 0)
		}
	
		if ds_list_empty(decal_list) {
			repeat(3) ds_list_add(decal_list, bg[array_position, 6])
		}
	
	#region conditionals
		if is_string(argument1) { //check what to do
			switch(argument1) {
				case "cloud":
					bg[array_position, 10] = random_range(-7, 7) //special
					bg[array_position, 11] = random_range(-7, 7) //special
					bg[array_position, 12] = random_range(-7, 7) //special
				break;
			}
		} else { //change image index
			bg[array_position, 7] = irandom_range(0, argument1)
			bg[array_position, 8] = irandom_range(0, argument1)
			bg[array_position, 9] = irandom_range(0, argument1)
		}
	#endregion
	}


}
