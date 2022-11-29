/// @description Insert description here
// You can write your code in this editor
	alarm[5] = 25
	
	globalvar cangfsl, spcfs;
	cangfsl = 1
	spcfs = spiral_confuse
	
	repeat(6) {
		var confs = instance_create(x, y, objEnemyBullet)
		
		with(confs) {
			damage = 1
			angle = (60 * cangfsl) + spcfs
			spd = -1.2 * global.enemy_spd
			image_angle = angle
		}
		cangfsl++
	}
	
	spiral_confuse += 5