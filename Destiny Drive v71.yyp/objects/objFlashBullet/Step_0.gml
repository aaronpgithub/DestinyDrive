/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
event_inherited();

flash_spooky += 10
flash_spooky = flash_spooky mod 360

	spd = -6 * sin(degtorad(flash_spooky))
	if spd > 0 spd /= 10