/// @description Insert description here
// You can write your code in this editor
if global.temple_level = "psychic" {
	x = lerp(x, room_width, 0.1)
} else {
	image_alpha -= 0.1
	if image_alpha <= 0 instance_destroy()
}

psy_ang += 1

//fix this
//it replaces enemy pos when paused. Make it where it focuses on the lowest to highest ID
if instance_exists(objEnemyParent) and !instance_exists(objBossParent) {
	globalvar x_rad_start, y_rad_start, circle_cut, newvar, angle_change, length_circle;
	x_rad_start = 248
	y_rad_start = 165
	circle_cut = 360 / instance_number(objEnemyParent)
	angle_change = psy_ang
	length_circle = 70
	
	for(newvar = 0; newvar < instance_number(objEnemyParent); newvar++) {
		with(instance_find(objEnemyParent, newvar)) {
			pos_x = x_rad_start + lengthdir_x(length_circle, (circle_cut * newvar) + angle_change)
			pos_y = y_rad_start + lengthdir_y(length_circle, (circle_cut * newvar) + angle_change)
		}
	}
}