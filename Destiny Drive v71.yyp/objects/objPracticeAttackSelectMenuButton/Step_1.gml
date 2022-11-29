/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
event_inherited();

if x < objPracticeControl.lerp_menu hover = false

if instance_exists(objPracticeBossSelectMenu) {
	if ds_exists(objPracticeControl.boss_attacks, ds_type_list) {
		if menu_button_type >= ds_list_size(objPracticeControl.boss_attacks) - objPracticeControl.max_boss_button_offset {
			hover = false
		}
		
		if x < objPracticeControl.lerp_menu or (y < BOSS_ATTACK_SURFACE_Y or y > BOSS_ATTACK_SURFACE_Y + objPracticeBossSelectMenu.ba_max_height - 2) {
			hover = false
		}
	}
}