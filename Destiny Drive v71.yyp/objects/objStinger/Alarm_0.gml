/// @description Insert description here
// You can write your code in this editor

if burst <= 0 {
	alarm[0] = irandom_range(200, 230)
	burst = 2
	
} else {
	alarm[0] = 10
	
	var sting = instance_create(x, y, objStingerBullet) 
	
	with(sting) {
		damage = 1
		spd = 3
		point_y = road_random(20, -20)
		t = 0
		amp = choose(random_range(-50, -20), random_range(20, 50))
		angle = point_direction(x, y, 0, point_y)
		
		outside_special = true
	}
	
	burst--
}