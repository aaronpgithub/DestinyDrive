/// @description Insert description here
// You can write your code in this editor
#region circle stuff
circle_timer--

if circle_timer < 0 {
	circle_timer = 7
	
	var mult = 1
	
	if circle_num % 2 = 0 {
		mult = -1
	}
	
	ds_list_add(plague_circles, 0.01 * mult)
	
	circle_num++
}
#endregion

if y > road_y_min and y < road_y_max {
	motion_set(angle, spd)
	alarm[0] = 90
} else {
	motion_set(0, 0)
}

if instance_exists(objThePlague) {
	if objThePlague.attack_choice != 2 instance_destroy()
}