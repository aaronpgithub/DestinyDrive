/// @description Insert description here
// You can write your code in this editor
if instance_exists(objPracticeBossSelectMenu) {
	offset = button_offset(objPracticeBossSelectMenu) + objPracticeBossSelectMenu.max_width - 1
}

if ds_list_size(objPracticeControl.boss_attacks) <= 4 {
	sprite_index = noone
} else sprite_index = sprPracticeMenuScrollArrow