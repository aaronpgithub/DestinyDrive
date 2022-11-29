/// @description Insert description here
// You can write your code in this editor
alarm[0] = 15

globalvar skl;
skl = skangle

var bncl = instance_create(x, y, objEnemyBullet)

with(bncl) {
	damage = 1
	angle = skl
	spd = -1.4 * global.enemy_spd
}

var bncl2 = instance_create(x, y, objEnemyBullet)

with(bncl2) {
	damage = 1
	angle = -skl
	spd = -1.4 * global.enemy_spd
}