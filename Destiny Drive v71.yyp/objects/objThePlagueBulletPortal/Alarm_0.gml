/// @description Insert description here
// You can write your code in this editor

alarm[0] = 50
globalvar portal_bullet_speed;
portal_bullet_speed = 1.25

if instance_exists(objThePlague) {
	if objThePlague.transition_amount = 1 { alarm[0] = 26; portal_bullet_speed = 0.8 }
}

var portalbul = instance_create(x, y, objEnemyBullet)

with(portalbul) {
	damage = 1
	spd = portal_bullet_speed
	angle = point_direction(x, y, objPlayer_x, objPlayer_y)
	sprite_index = sprThePlaguePukeBullet
	image_index = choose(0, 1)
}