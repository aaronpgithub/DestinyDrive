/// @description Insert description here
// You can write your code in this editor

alarm[0] = 60

var portalbul = instance_create(x, y, objThePlagueRocketBullet)

with(portalbul) {
	damage = 1
	spd = 0
	no_move_destroy = false
	angle = point_direction(x, y, objPlayer_x, objPlayer_y)
	image_angle = angle
}