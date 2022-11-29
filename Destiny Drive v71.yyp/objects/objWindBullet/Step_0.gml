/// @description Insert description here
// You can write your code in this editor
event_inherited()

x_sine_t += 4
y_sine_t += 4

x_sine_t = x_sine_t mod 360
y_sine_t = y_sine_t mod 360

spd = sin(degtorad(x_sine_t)) * 3

if spd < 0 spd /= 1.5

len += spd

var yperp = sin(degtorad(y_sine_t)) * -15;

x = xstart + lengthdir_x(len, angle) + lengthdir_y(yperp, angle - 90)
y = ystart + lengthdir_y(len, angle) + lengthdir_y(yperp, angle - 90)

if x < -50 or y > room_height + 50 {
	instance_destroy()
}