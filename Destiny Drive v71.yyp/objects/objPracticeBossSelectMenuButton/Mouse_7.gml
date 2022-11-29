/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
event_inherited();

if instance_exists(objPracticeControl) and instance_exists(objPracticeBossSelectMenu) and hover = true {
	
	globalvar mbt; mbt = menu_button_type;
	with(objPracticeControl) {
		settings_array[1, 1] = boss_select[mbt, 2]
		settings_array[1, 2] = 0
		//the practice attack from previous is NO MORE. 
		settings_array[1, 3] = 0
		settings_array[1, 4] = 0
		max_boss_button_offset = 0
	
		check_boss_attacks()
	}
	
	with(objPracticeBossSelectMenu) {
		scroll_amt = 0 //this var lerps to real scroll
		real_scroll = 0
	}
	
	with(objPracticeScrollBar) {
		y = BOSS_ATTACK_SURFACE_Y + 7
	}
}