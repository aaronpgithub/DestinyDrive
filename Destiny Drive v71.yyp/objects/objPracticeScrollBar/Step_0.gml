/// @description Insert description here
// You can write your code in this editor
if instance_exists(objPracticeBossSelectMenu) {
	offset = button_offset(objPracticeBossSelectMenu) + objPracticeBossSelectMenu.max_width - 1
	if clicked = false {
		y = 95 - (objPracticeBossSelectMenu.ba_max_height - 15) * (objPracticeBossSelectMenu.scroll_amt / objPracticeBossSelectMenu.total_scroll)
	} else {
		y = clamp(mouse_y, 95, 95 + objPracticeBossSelectMenu.ba_max_height - 15)
		objPracticeBossSelectMenu.real_scroll = -( ((y - 95) / (objPracticeBossSelectMenu.ba_max_height - 15)) * objPracticeBossSelectMenu.total_scroll )
	}
}

if ds_list_size(objPracticeControl.boss_attacks) <= 4 {
	sprite_index = noone
} else sprite_index = sprPracticeMenuScrollButton