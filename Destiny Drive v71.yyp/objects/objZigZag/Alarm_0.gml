/// @description Insert description here
// You can write your code in this editor

alarm[0] = 280 * instance_number(objZigZag)

var ziggy = instance_create(mid_x, mid_y, objZigZagBullet)

with(ziggy) {
	damage = 1
	angle_set = choose(-70, 70)
	angle = angle_set
	spd = -3
	fastburst = 10
	alarm[0] = 5
}