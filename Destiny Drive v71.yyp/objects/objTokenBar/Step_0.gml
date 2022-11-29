/// @description Insert description here
// You can write your code in this editor
if alarm[0] <= 0 {
	if finished = false {
		with(objGameControl) alarm[4] = room_speed * 2
	} else {
		if mouse_check_button_pressed(mb_left) with(objGameControl) alarm[4] = 1
	}
	
	y = lerp(y, ylerp, 0.2)
}

if objGameControl.level_complete_type != "stats" instance_destroy()

depth = -1000