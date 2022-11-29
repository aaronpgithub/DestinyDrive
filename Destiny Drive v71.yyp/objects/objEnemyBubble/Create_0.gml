/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
event_inherited();

if instance_exists(objFlyingFish) {
	if objFlyingFish.bubble_bounce = true {
		image_xscale = 1.5
		image_yscale = image_xscale
	}
}