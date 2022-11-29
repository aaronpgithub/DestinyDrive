/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
event_inherited();

if !instance_exists(objHorrorApparition) {
	instance_destroy()
} else {
	if alarm[0] < objHorrorApparition.darkness_prep and shrink = 0 {
		image_alpha = lerp(image_alpha, 1, objHorrorApparition.darkness_alpha)
		image_xscale = lerp(image_xscale, 1, objHorrorApparition.darkness_entry)
	}

	if shrink > 0 {
		image_alpha -= shrink
		image_xscale -= shrink
		shrink += objHorrorApparition.darkness_death
	
		if image_xscale <= 0 or image_alpha <= 0 instance_destroy()
	}

	if image_index = 1 {
		if damage = 1 alarm[1] = 10
	}
}