/// @description Insert description here
// You can write your code in this editor

alarm[0] = 70

var frspit = instance_create(90 - random_range(-80, 80), choose(road_y_min + 4, road_y_max - 8), objFireSpiritBullet)

with(frspit) {
	fire_angle = random_range(-10, 10)
	spd = 1 * global.enemy_spd
}