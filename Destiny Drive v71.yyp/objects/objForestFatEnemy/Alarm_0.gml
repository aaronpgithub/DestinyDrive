/// @description Insert description here
// You can write your code in this editor
alarm[0] = 70

var fgatty = instance_create(mid_x, mid_y, objEnemyBullet)

with(fgatty) {
	damage = 1
	spd = 1
	angle = point_direction(x, y, 0, road_random())
	sprite_index = sprEnemyCannonball
}