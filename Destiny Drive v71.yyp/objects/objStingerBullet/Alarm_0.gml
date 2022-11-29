/// @description Insert description here
// You can write your code in this editor

globalvar my_image_angle, start_angle, add_angle;
my_image_angle = image_angle

start_angle = -25
add_angle = 25

repeat(3) {
	var stinger_dest = instance_create(x, y, objEnemyBullet)
	
	with(stinger_dest) {
		angle = my_image_angle + start_angle
		damage = 1
		spd = 1
	}
	
	start_angle += add_angle
}

instance_destroy()