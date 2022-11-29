/// @description Insert description here
// You can write your code in this editor
event_inherited()

if point_distance(x, y, objPlayer_x, objPlayer_y) > 5 {
	motion_set(point_direction(x, y, objPlayer_x, objPlayer_y), 0.8)
} else {
	motion_set(0, 0)
}

if damage = 1 alarm[5] = 10