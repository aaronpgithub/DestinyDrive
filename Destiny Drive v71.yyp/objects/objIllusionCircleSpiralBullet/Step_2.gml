/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
event_inherited();

i_l_d_r = lerp(i_l_d_r, i_l_d, 0.3)

if instance_exists(i_c_ID) {
	x = i_c_ID.x + lengthdir_x(i_l_d_r, angle)
	y = i_c_ID.y + lengthdir_y(i_l_d_r, angle)
} else instance_destroy()