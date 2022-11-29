/// @description Insert description here
// You can write your code in this editor
alarm[1] = 9

var fallworm = instance_create(random_range(90, 390), -10, objRocketBullet)

with(fallworm) {
	damage = 1
	image_angle = 225
	sprite_index = sprParasiteWormLittleWorm
	spd = -3
}

allowparasite = true