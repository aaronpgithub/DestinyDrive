/// @description Pistol
alarm[3] = 25

var pipst = instance_create(mid_x, mid_y, objHunterPistolBullet)

with(pipst) {
	angle = point_direction(x, y, objPlayer_x, objPlayer_y)
	spd = 3
	damage = 1
	image_angle = angle
}

var pipst2 = instance_create(mid_x, mid_y, objHunterPistolBullet)

with(pipst2) {
	angle = point_direction(x, y, objPlayer_x, objPlayer_y) + choose(-10, 10)
	spd = 3
	damage = 1
	image_angle = angle
}