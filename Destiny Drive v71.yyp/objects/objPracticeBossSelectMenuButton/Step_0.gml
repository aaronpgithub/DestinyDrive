/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
event_inherited();

if instance_exists(objPracticeBossSelectMenu) {
	offset = button_offset(objPracticeBossSelectMenu) + 3
	
	image_xscale = string_width(objPracticeControl.boss_select[menu_button_type, 0]) + 3
}