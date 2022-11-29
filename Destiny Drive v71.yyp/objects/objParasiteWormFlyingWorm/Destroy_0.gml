/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
event_inherited();

if !instance_exists(objParasiteWormBuddyBubble) {
	if instance_exists(objParasiteSpawner) {
		objParasiteSpawner.alarm[0] = 5
	}
}