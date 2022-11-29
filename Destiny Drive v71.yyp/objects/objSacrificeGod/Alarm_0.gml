/// @description Insert description here
// You can write your code in this editor

alarm[0] = 8

	globalvar dointhisro;

	for(dointhisro = 0; dointhisro < 4; dointhisro++) {
		var create_bullet = true
		
		if dointhisro = burst_wall and burst_sacrifice > 0 create_bullet = false
		
		if create_bullet = true {
		
			var sacrificebulr = instance_create(90, road_y_mid, objSacrificeRotationBullet)
		
			with(sacrificebulr) {
				offset_sacri = dointhisro * (-90)
			}
		}
	}
	
	burst_sacrifice -= 1
	
	if burst_sacrifice < -8 {
	burst_wall++
	burst_wall = burst_wall mod 4
	burst_sacrifice = 3
	}