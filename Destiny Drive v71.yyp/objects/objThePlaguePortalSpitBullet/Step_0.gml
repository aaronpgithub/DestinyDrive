/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
event_inherited();

if speed_sign = 1 {
	if len > 400 {
		instance_destroy()
	}
} else {
	if len < 1 {
		instance_destroy()
	}
}

len += spd * speed_sign

x = xstart + lengthdir_x(len, angle)
y = ystart + lengthdir_y(len, angle)