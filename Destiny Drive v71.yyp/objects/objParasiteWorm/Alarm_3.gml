/// @description Sine bullets
alarm[3] = 40

if transition_amount >= 1 alarm[2] = 34

if instance_exists(objParasiteWormHowl) {
	if objParasiteWormHowl.allowparasite = false {
		alarm[0] = room_speed * 10
		exit;
	}
}

var siney = instance_create(x, y, objParasiteWormSineBullet)

with(siney) {
	damage = 1
	angle = 0
	spd = -1.5
}