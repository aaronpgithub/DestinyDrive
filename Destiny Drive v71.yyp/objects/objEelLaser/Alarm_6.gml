/// @description Insert description here
// You can write your code in this editor

if instance_exists(eel_id) {
alarm[6] = eel_id.alarm[0] / 5
}

light = !light

if alarm[6] = 0 {
	light = true
	alarm[6] = 1
}