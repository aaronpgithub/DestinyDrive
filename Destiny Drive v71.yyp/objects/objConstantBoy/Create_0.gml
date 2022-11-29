/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
event_inherited();

hp_set(50)

alarm[0] = 50

burstofbul = 3



if instance_number(objConstantBoy) > 1 {
	for(var constnab = 0; constnab < instance_number(objConstantBoy); constnab++) {
		if instance_find(objConstantBoy, constnab).id != id and instance_find(objConstantBoy, constnab).ystart = ystart {
			instance_change(choose(objZigZag, objPsychicBoneBoy, objForestFatEnemy), false)
			event_perform(ev_create, 0)
		}
	}
}