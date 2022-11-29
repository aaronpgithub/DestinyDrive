/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
event_inherited();

if frac(pathpoint / 4) = 0 fling_y = -100
if frac(pathpoint / 5) = 0 destroy = true

if flung = true and destroy = true {
	image_alpha -= 0.1
	if image_alpha < 0 instance_destroy()
}

if x < 200 and flung = false {
	angle = point_direction(x, y, 0, fling_y) + 180
	
		if fling_y = -100 angle = point_direction(x, y, objPlayer_x, objPlayer_y) + 180 + random_range(-10, 10)
		
	flung = true
}

if flung = true and instance_exists(objSpookyScott) {
	
	if objSpookyScott.transition_amount >= 1 image_alpha -= 0.0125
	
}

if x < -10 instance_destroy()