/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
event_inherited();

if instance_exists(objCarriageOfIllusion) {
	if objCarriageOfIllusion.attack_choice != 4 {
		damage = 0
		outside_special = false
	} else {
		image_alpha = 1 - alarm[0] / 60
		image_xscale = 1 - alarm[0] / 60
		image_yscale = image_xscale
	}
	
	if outside_special = false {
		image_alpha -= 0.1
		if image_alpha < 0 instance_destroy()
	}
}