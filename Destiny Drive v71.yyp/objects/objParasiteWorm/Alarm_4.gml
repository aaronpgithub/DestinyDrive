/// @description Flies

alarm[5] = 10

if instance_exists(objParasiteWormHowl) {
	if objParasiteWormHowl.allowparasite = false exit;
}

globalvar flyblast;
flyblast = player_dir + 180

repeat(50) {
	var randangflies = random(360), randlenflies = random(30);
	
	var fliyb = instance_create(x + lengthdir_x(randlenflies, randangflies), y + lengthdir_y(randlenflies, randangflies), objParasiteWormFlyBullet)
	
	with(fliyb) {
		damage = 1
		angle = flyblast
		spd = -2
	}
}

alarm[0] = 5