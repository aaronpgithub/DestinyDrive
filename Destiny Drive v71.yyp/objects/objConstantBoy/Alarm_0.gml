/// @description Insert description here
// You can write your code in this editor

if burstofbul > 0 {
	
	var abullet = instance_create(mid_x, mid_y, objEnemyBullet)
	
	with(abullet) {
		damage = 1
		angle = 0
		spd = -2
		
		sprite_index = sprConstantBoyBullet
	}
	
	alarm[0] = 6
	
	burstofbul--
	
} else {
	alarm[0] = 35
	burstofbul = 3
}