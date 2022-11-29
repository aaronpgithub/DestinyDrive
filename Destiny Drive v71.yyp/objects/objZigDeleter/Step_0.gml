/// @description Insert description here
// You can write your code in this editor

if sin(degtorad(zigt)) > slow_period or sin(degtorad(zigt)) < -(slow_period) {
	zigt += 2
} else zigt += 4

x = xstart + ( round(sin(degtorad(zigt)) * 12) * 4 )

if !instance_exists(objSpookyScott) instance_destroy()

//draw_rectangle_color(x, y, x + 32, y + 8, c_white, c_white, c_white, c_white, 0)