/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
event_inherited();

if len < len_end {
	len += grapple_spd * global.enemy_spd
} else {
	len = len_end
}

if !instance_exists(grapple_id_follow) {
	motion_set(angle + 90, spd * grapple_movement)
} else {
	x = xstart + lengthdir_x(len, angle)
	y = ystart + lengthdir_y(len, angle)
}

if y > room_height or y < -5 instance_destroy()