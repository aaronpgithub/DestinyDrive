/// @description Insert description here
// You can write your code in this editor
alarm[0] = 60

var lillar = instance_create(x, y, objFlyBullet)

with(lillar) {
	damage = 1
	angle = point_direction(x, y, 0, road_random())
	spd = 2
}