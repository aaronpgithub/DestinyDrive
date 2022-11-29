/// @description Insert description here
// You can write your code in this editor
if instance_exists(objPracticeBossSelectMenu) {
	offset = button_offset(objPracticeBossSelectMenu) + objPracticeBossSelectMenu.max_width - 1
	offset += -102 + (image_xscale * 40)
	
	if image_xscale = -1 {
		if objPracticeControl.settings_array[1, 2] <= 0 {
			image_yscale = 0
		} else image_yscale = 1
	} else {
		if objPracticeControl.settings_array[1, 2] >= objPracticeControl.boss_phases - 1 {
			image_yscale = 0
		} else image_yscale = 1
	}
}