/// @description Setting attack
// You can write your code in this editor

// Inherit the parent event
event_inherited();

//the true attack number,	the special parameter for attacks (such as if its the same attack number but a diff variant)
var true_attack = 0, attack_param = 0;

if instance_exists(objPracticeControl) and instance_exists(objPracticeBossSelectMenu) and hover = true {
	true_attack = menu_button_type + 1
	
	switch(objPracticeControl.settings_array[1, 1]) {
		case objBanditCaravan:
		//attack_choice = 2, FUNNEL
		if true_attack = 3 attack_param = 1
		
		true_attack = real_attack_num(true_attack, 3)
		break;
		case objKingBubbs:
		//attack_choice = 6, WIZARD (True_attack = 6 is orange wiz)
		if true_attack = 7 attack_param = 1
		if true_attack = 8 attack_param = 2
		
		true_attack = real_attack_num(true_attack, 7, 7)
		break;
		case objNeighborhoodGang:
		globalvar bnum; bnum = true_attack - 1;
		
			with(objPracticeControl) {
			//if alive or not
			var old_text = "ALIVE", new_text = "DEAD";
		
			if string_char_at(boss_attacks[| bnum], string_length(boss_attacks[| bnum])) = "D" {
				new_text = "ALIVE"; old_text = "DEAD";
			}
			
			objPracticeControl.boss_attacks[| bnum] = string_replace(boss_attacks[| bnum], old_text, new_text)
			}
		
		true_attack = 0
		break;
		case objSpookyScott:
		//attack_choice = 2, GHOSTS (True_attack = 2 is triple ghost)
		if true_attack = 3 attack_param = 1
		if true_attack = 4 attack_param = 2
		
		true_attack = real_attack_num(true_attack, 3, 3)
		break;
		case objThePlague:
		//attack_choice = 2, GHOSTS (True_attack = 2 is triple ghost)
			if objPracticeControl.settings_array[1, 2] = 2 {
			if true_attack = 2 attack_param = 1
			if true_attack = 5 attack_param = 1
		
			true_attack = real_attack_num(true_attack, 2, 4)
			}
		break;
		case objParasiteWorm:
			var monstspawnattck = 0;						//button_id + 1, minus the parasite attacks (3)
		if objPracticeControl.settings_array[1, 2] = 0 {
			if menu_button_type + 1 > 3 monstspawnattck = menu_button_type - 2
		
				if monstspawnattck = 3 attack_param = 1
				if monstspawnattck = 5 attack_param = 1
			
			monstspawnattck = real_attack_num(monstspawnattck, 3, 4)
		} else {
			if menu_button_type + 1 > 4 monstspawnattck = menu_button_type - 3
		
				if monstspawnattck = 3 attack_param = 1
				if monstspawnattck = 5 attack_param = 1
			
			monstspawnattck = real_attack_num(monstspawnattck, 3, 4)
		}
		
		if monstspawnattck != 0 {
			objPracticeControl.settings_array[1, 5] = monstspawnattck
			objPracticeControl.special_boss_delete = string_replace(objPracticeControl.special_boss_delete, "m", "")
			objPracticeControl.special_boss_delete = string_insert("m", objPracticeControl.special_boss_delete, 0)
		}
		break;
		case objFlyingFish:
		//attack_choice = 2, BUBBLES (true_attack = 2 is triple ghost)
		if true_attack = 3 attack_param = 1
		
		true_attack = real_attack_num(true_attack, 3)
		break;
	}
	
	//dont change attack if choosing monster spawner attacks
	var parasite_worm_number = 3;
	if objPracticeControl.settings_array[1, 2] = 1 parasite_worm_number = 4
	
	if objPracticeControl.settings_array[1, 1] != objParasiteWorm or (objPracticeControl.settings_array[1, 1] = objParasiteWorm and menu_button_type + 1 <= parasite_worm_number) {
		objPracticeControl.settings_array[1, 3] = true_attack
		objPracticeControl.special_boss_delete = string_replace(objPracticeControl.special_boss_delete, "p", "")
		if objPracticeControl.settings_array[1, 1] = objParasiteWorm objPracticeControl.special_boss_delete = string_insert("p", objPracticeControl.special_boss_delete, 0)
	}
	
	objPracticeControl.settings_array[1, 4] = attack_param
	
	objPracticeControl.delete_attack = 2
}