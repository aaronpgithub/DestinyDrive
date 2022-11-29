/// @description Insert description here
// You can write your code in this editor
alarm[2] = 42
	var fallworm2 = instance_create(objPlayer_x + lengthdir_x(340, 45), objPlayer_y + lengthdir_y(340, 45), objRocketBullet)

	with(fallworm2) {
		damage = 1
		image_angle = 225
		sprite_index = sprParasiteWormLittleWorm
		spd = -3
	}