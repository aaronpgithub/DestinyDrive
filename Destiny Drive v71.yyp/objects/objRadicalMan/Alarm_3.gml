/// @description Insert description here
// You can write your code in this editor

if laser_burst <= -1 {
	laser_burst = 50
	ang_sub = -ang_sub
	angle_cool = 0
	alarm[3] = 30
	exit;
} else {
	
	repeat(3) {
	globalvar coolanglehere, cltm;
	coolanglehere = angle_cool
	
	var coollaser = instance_create(x, y + ang_sub, objCityLaser)
	
		with(coollaser) {
			sprite_index = sprCoolLaser
			alarm[4] = 60
			shoot_start = 60
			damage = 1
			angle = coolanglehere
			image_angle = angle
			scale_spd = 2
		}
	
	angle_cool -= ang_sub
	laser_burst--
	
	alarm[3] = 1
	}
}