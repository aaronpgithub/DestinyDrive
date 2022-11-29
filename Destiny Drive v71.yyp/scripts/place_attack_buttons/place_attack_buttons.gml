///@param *skip pos
function place_attack_buttons() {

		globalvar id_to_set, asm_y;
		asm_y = 90

	if argument_count < 0 {

		//looping thru and setting y's
		for(id_to_set = 0; id_to_set < instance_number(objPracticeAttackSelectMenuButton); id_to_set++) {
			with(objPracticeAttackSelectMenuButton) {
				if menu_button_type = id_to_set {
					attk_y = asm_y
					menu_button_type_offset = 0
				}
			}
		
			asm_y += 12
		}
	} else {
	
		globalvar current_off; current_off = 0;
	
		//looping thru and setting y's
		for(id_to_set = 0; id_to_set < instance_number(objPracticeAttackSelectMenuButton); id_to_set++) {
			//if we wanna skip this section, add another space
		
		
			var arg = 0;
			repeat(argument_count) {
				if argument[arg] = id_to_set {
					asm_y += 12
					current_off += 1
				}
				arg += 1
			}
		
			with(objPracticeAttackSelectMenuButton) {
				if menu_button_type = id_to_set {
					attk_y = asm_y
					menu_button_type_offset = current_off
				}
			}
		
			asm_y += 12
		}
	}


}
