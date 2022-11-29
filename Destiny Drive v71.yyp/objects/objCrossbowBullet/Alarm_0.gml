/// @description Insert description here
// You can write your code in this editor
alarm[0] = 110

globalvar myangba;
myangba = 0

repeat(2) {
	var cross = instance_create(x, y, objEnemyBullet)

	with(cross) {
		damage = 1
		spd = 1
		angle = point_direction(x, y, objPlayer_x, objPlayer_y) + random_range(-5, 5) + myangba
		image_angle = angle
	}
	
	myangba += 180
}