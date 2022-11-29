/// @description Lasers
alarm[4] = darkness_alarm * darkness_warmup
if darkness_warmup > 1 darkness_warmup -= 0.25

globalvar point_laser, laser_angle;
point_laser = point_direction(laser_x, laser_y, room_width * 0.5, room_height * 0.5)
laser_angle = point_laser + 90

repeat(15) {
	var shooy = instance_create(laser_x + lengthdir_x(strip, point_laser), laser_y + lengthdir_y(strip, point_laser), objHorrorLaser)

	with(shooy) {
		damage = 0
		spd = 0
		no_move_destroy = false
		angle = laser_angle + 90
		image_angle = angle
	}
	
	strip += 40// * strip_dir
}

strip_dir = -strip_dir
strip = 0
if strip_dir = -1 strip += 20

//0497133165
//18002557828