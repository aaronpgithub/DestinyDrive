/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
event_inherited();

if instance_number(objSmoky) > 1 {
	var dinky = 0;
	do {
		if instance_find(objSmoky, dinky).id > id and instance_find(objSmoky, dinky).id != id {
			
			with(instance_find(objSmoky, dinky)) {
				
				var droop = instance_create(xstart, ystart, choose(objShaker, objCougher, objCrybaby))
				globalvar popx, popy;
				popx = pos_x
				popy = pos_y
				
				with(droop) {
					pos_x = popx
					pos_y = popy
				}
				
				instance_destroy()
			}
			
			dinky = 0
		}
		dinky++
	} until (instance_number(objSmoky) <= 1)
}