/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
event_inherited();

if instance_exists(objThePlague) {
	spd = (2 * objThePlague.tele_time_mult) * speed_sign
}

if speed_sign = 1 {
	if point_distance(x, y, room_width * 0.5, room_height * 0.5) > 400 {
		instance_destroy()
	}
} else {
	if point_distance(x, y, room_width * 0.5, room_height * 0.5) < 2 {
		instance_destroy()
	}
}