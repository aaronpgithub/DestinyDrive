/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
event_inherited();

if third_miniboss = false close_alpha = 2

if distance != -1 and x > objPlayer_x and close_alpha > 1 {
	angle = lerp(angle, point_direction(x, y, objPlayer_x, objPlayer_y), sensitivity)
	image_angle = angle
}

if slowdown = true spd = lerp(spd, 1, 0.05)

if x < 0 instance_destroy()