/// @description Insert description here
// You can write your code in this editor
alarm[6] = 4

var drin = 0;

create_if_exist(48, 64, objZigDeleter)

repeat(28) {
	var bullettospawn = objEnemyBullet, areatospawn = 2 + (drin * 6);
	
	if drin != 0 and drin != 27 {
		bullettospawn = objFadeBullet
	}
	
	if drin = 0 or (areatospawn < objZigDeleter.x or areatospawn > objZigDeleter.x + 48) {
		var ghosty = instance_create(areatospawn, 0, bullettospawn)

		with(ghosty) {
			damage = 1
			spd = -3
			angle = 90
			
			if object_index = objFadeBullet alarm[0] = 20
			
			sprite_index = sprGhostBullet
		}
	}
	
	drin++
}

