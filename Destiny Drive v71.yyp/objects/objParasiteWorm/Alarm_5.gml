/// @description Shootin accurate spray
// You can write your code in this editor
alarm[5] = 2

if instance_exists(objParasiteWormHowl) {
	if objParasiteWormHowl.allowparasite = false {
		alarm[0] = room_speed * 5
		exit;
	}
}

globalvar farty;
farty = point_direction(x, y, 0, lasang)

var fartlen, fartdir;
fartlen = random_range(-6, 6)
fartdir = farty + 90

var blastit = instance_create(x + lengthdir_x(fartlen, fartdir), y + lengthdir_y(fartlen, fartdir), objEnemyBullet)

with(blastit) {
	damage = 1
	angle = farty
	spd = 4
	
	sprite_index = sprHomingAcidShot
}

shot_las = true