/// @description Insert description here
// You can write your code in this editor
alarm[0] = 30

var brainiac_bolt = instance_create(objPlayer_x, objPlayer_y, objBrainiacBolt)

with(brainiac_bolt) {
	 alarm[0] = 60
}