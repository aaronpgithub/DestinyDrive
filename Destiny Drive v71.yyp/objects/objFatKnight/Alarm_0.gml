/// @description Insert description here
// You can write your code in this editor
alarm[0] = 170

var slowbullet = instance_create(x, y, objEnemyBullet)

with(slowbullet) {
	damage = 1
	angle = point_direction(x, y, objPlayer_x, objPlayer_y) + 180
	spd = -1 * global.enemy_spd
	
	sprite_index = sprFatKnightLaser
}

champion_bullet(slowbullet)