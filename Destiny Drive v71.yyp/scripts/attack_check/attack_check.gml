function attack_check() {
	var normal_attack = true, prac_attack = 0;

	if global.practice = true and instance_exists(objPracticeControl) {
		prac_attack = objPracticeControl.settings_array[1, 3]
		if argument_count > 1 {
			prac_attack = argument[1]
		}
		if prac_attack != 0 normal_attack = false
	}

	if normal_attack = true {
		if ds_list_empty(attack_list) {
		attack_choice = 0
		attack_amount = -10 //resetting JUST IN CASE you transition when the list is empty, which would create a duplicate attack!
		var attacks = 1;
			repeat(argument[0]) {
				ds_list_add(attack_list, attacks)
		
				attacks++
			}
		}

		//if boss transitioned to have more attacks
		//-10 is the starter when boss is created
		if attack_amount < argument[0] and attack_amount != -10 {
			var list_position = 1;
	
			repeat(argument[0]) {
				if list_position > attack_amount {
					ds_list_add(attack_list, list_position)
					ds_list_shuffle(attack_list)
				}
				list_position++
			}
		}

		//if previous list had this attack last, reshuffle so previous attack isnt done again
		if attack_done != -1 {
			do {
			ds_list_shuffle(attack_list)
			} until ds_list_find_value(attack_list, 0) != attack_done
		} else {
			ds_list_shuffle(attack_list)
		}

		//since job is done, reset attack done
		if attack_done != -1 attack_done = -1

		attack_choice = ds_list_find_value(attack_list, 0)

		//making sure next list of attacks wont have this attack as the next attack
		if ds_list_size(attack_list) = 1 {
			attack_done = ds_list_find_value(attack_list, 0)
		}

		ds_list_delete(attack_list, 0)

		//the amount of attacks that the boss is doing
		attack_amount = argument[0]
	} else {
		if instance_exists(objPracticeControl) {
			attack_choice = prac_attack
		}
	}


}
