/// @description Insert description here
// You can write your code in this editor
alarm[0] = 30 + instance_number(objBabyShielder)

var baby_shel = instance_create(x, y, objEnemyBullet)

with(baby_shel) {
	damage = 1
	angle = point_direction(x, y, objPlayer_x, objPlayer_y) + random_range(-2, 2)
	spd = 1.2 * global.enemy_spd
	sprite_index = sprBanditBullet
}

champion_bullet(baby_shel)