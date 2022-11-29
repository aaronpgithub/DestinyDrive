/// @description Insert description here
// You can write your code in this editor
event_inherited()

if (angle < 0 and y < road_y_min) or (angle > 0 and y > road_y_max) {
	if bnce = true {
	spd = 0
	
	globalvar drangol;
	drangol = -(angle)
	
		var dring = instance_create(x, y, objBouncerLaser)
		
		with(dring) {
			angle = drangol
			spd = -1 * global.enemy_spd
            damage = 1
			image_angle = angle
		}
		
	bnce = false 
	}
}

if x <= -10 {
	spd = 0
}

	var kill = true;
	for(var dopp = 0; dopp < instance_number(objBouncerLaserMid); dopp++) {
		if instance_find(objBouncerLaserMid, dopp).bounce_laser_id = id kill = false
	}
	if kill = true instance_destroy()

if damage = 1 alarm[5] = 10