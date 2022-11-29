/// @description Insert description here
// You can write your code in this editor
if burst > 0 {
	globalvar emerg_angle;
	var emerg_bul = instance_create(x, y, objBullet)
	
	emerg_angle = point_direction(x, y, emergency_x, emergency_y)
	
	with(emerg_bul) {
		damage = 6
		angle = emerg_angle + random_range(-5, 5)
		spd = 4
		
		sprite_index = sprWeakShot
		
		bullet_count = false
		no_flash = true
	}
	
	alarm[0] = 6
	
	burst--
} else {
	burst = irandom_range(10, 18)
	
	emergency_x = 0
	emergency_y = 0
	
	alarm[0] = 100
}