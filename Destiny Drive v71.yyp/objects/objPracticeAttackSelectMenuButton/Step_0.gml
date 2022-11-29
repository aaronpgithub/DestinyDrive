/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
event_inherited();

if instance_exists(objPracticeBossSelectMenu) {
	if ds_exists(objPracticeControl.boss_attacks, ds_type_list) {
		if menu_button_type + menu_button_type_offset < ds_list_size(objPracticeControl.boss_attacks) {
		offset = button_offset(objPracticeBossSelectMenu) + 3
	
		image_xscale = string_width(objPracticeControl.boss_attacks[| menu_button_type + menu_button_type_offset]) + 3
		}
	}
	
	y = attk_y + objPracticeBossSelectMenu.scroll_amt
}