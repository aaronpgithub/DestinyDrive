/// @description Insert description here
// You can write your code in this editor
if !instance_exists(objEyeOfTheStorm) {
	instance_destroy()
} else {
	x = objEyeOfTheStorm.cloud_pos_x
	y = objEyeOfTheStorm.cloud_pos_y
}

draw_circle_color(x, y, cloud_radius, c_gray, c_gray, 0)