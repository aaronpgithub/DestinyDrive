/// @description Insert description here
// You can write your code in this editor
event_inherited()

len -= sin(degtorad(x_sine_t)) * 10

x_sine_t += xtad
y_sine_t += ytad

x_sine_t = x_sine_t mod 360
y_sine_t = y_sine_t mod 360

len += spd + sin(degtorad(x_sine_t)) * 10

var yperp = sin(degtorad(y_sine_t)) * -15;

realposx = xstart + lengthdir_x(len, angle) + lengthdir_y(yperp, angle - 90)
realposy = ystart + lengthdir_y(len, angle) + lengthdir_y(yperp, angle - 90)

y = lerp(y, realposy, 0.4)
x = lerp(x, realposx, 0.4)

if x < -50 or y > room_height + 50 {
	instance_destroy()
}