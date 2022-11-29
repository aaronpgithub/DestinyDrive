/// @description acid spray

alarm[2] = 65

if transition_amount >= 1 alarm[2] = 62

if instance_exists(objParasiteWormHowl) {
	if objParasiteWormHowl.allowparasite = false {
		alarm[0] = room_speed * 10
		exit;
	}
}

repeat(3) {
	var blastofacid = instance_create(x, y, objEnemyBullet)
	
	with(blastofacid) {
		damage = 1
		angle = random_range(-15, 15)
		spd = -(random_range(1.6, 2))
		sprite_index = sprHomingAcidShot
	}
}