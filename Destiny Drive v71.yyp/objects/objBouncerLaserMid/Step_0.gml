/// @description Insert description here
// You can write your code in this editor
event_inherited()

if instance_exists(bounce_laser_id) {
	
	x = xstart
	y = ystart
	
	if bounce_laser_id.spd != 0 {
		if point_distance(x, y, bounce_laser_id.x, bounce_laser_id.y) > len {
			x = bounce_laser_id.x + lengthdir_x(len, point_direction(x, y, bounce_laser_id.x, bounce_laser_id.y) + 180)
			y = bounce_laser_id.y + lengthdir_y(len, point_direction(x, y, bounce_laser_id.x, bounce_laser_id.y) + 180)
		}
	} else {
			x = bounce_laser_id.x + lengthdir_x(len, point_direction(x, y, bounce_laser_id.x, bounce_laser_id.y) + 180)
			y = bounce_laser_id.y + lengthdir_y(len, point_direction(x, y, bounce_laser_id.x, bounce_laser_id.y) + 180)
			len -= 1 * global.enemy_spd
			if len <= 0 instance_destroy()
	}
	
	image_xscale = point_distance(x, y, bounce_laser_id.x, bounce_laser_id.y) / 8
	image_angle = point_direction(x, y, bounce_laser_id.x, bounce_laser_id.y) + 180
}

if damage = 1 alarm[5] = 10