/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
event_inherited();
var clamp_x = 1;

if x > clamp_x {
x = xstart + lengthdir_x(len, angle) + lengthdir_x(sine_len, angle + 90)
y = ystart + lengthdir_y(len, angle) + lengthdir_y(sine_len, angle + 90)

var percent_near = point_distance(xstart, ystart, 0, point_y) / point_distance(x + lengthdir_x(-sine_len, angle * 90), y + lengthdir_y(-sine_len, angle * 90), 0, point_y)

t = 180 / percent_near

sine_len = amp * sin(degtorad(t))

len += spd

image_angle = point_direction(x, y, xprevious, yprevious)

alarm[0] = 70
} else {
	x = clamp_x
}