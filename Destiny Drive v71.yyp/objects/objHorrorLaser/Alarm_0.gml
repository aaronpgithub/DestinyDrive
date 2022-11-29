/// @description Insert description here
// You can write your code in this editor
image_index = 1
damage = 1

if !instance_exists(objHorrorApparition) {
	instance_destroy()
} else alarm[2] = objHorrorApparition.darkness_alive * dark_mult