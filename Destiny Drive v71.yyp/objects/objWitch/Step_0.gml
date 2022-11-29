/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
event_inherited();

if alarm[0] < witch_time and witch_burst <= 0 {
	witch_speed = alarm[0] / witch_time
}

if alarm[0] > witch_time {
	witch_speed = lerp(witch_speed, 1, 0.1)
}