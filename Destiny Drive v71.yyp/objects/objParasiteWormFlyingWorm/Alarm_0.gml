/// @description Insert description here
// You can write your code in this editor

if sprite_index = sprParasiteWormFlyingBuddy {
	alarm[0] = 35

	if instance_exists(objParasiteSpawner) {
		if objParasiteSpawner.alarm[0] < room_speed pos_x = 400
	}

	        globalvar flyworm, flyworminnac;
		
			flyworminnac = random_range(180, 210) + 180
    
	        for(flyworm = 8; flyworm >= 0; flyworm--)
	        {
	            var sr_dth_var = instance_create(x, y, objEnemyBullet)
            
	            with(sr_dth_var)
	            {
	            spd = -2.4 * global.enemy_spd
	            angle = (flyworm * 7.7) + flyworminnac
	            damage = 1
            
				sprite_index = sprAcidBullet
			
	            image_angle = angle
	            }
			
				champion_bullet(sr_dth_var)
	        }
} else {
	alarm[0] = 60

	if instance_exists(objParasiteSpawner) {
		if objParasiteSpawner.alarm[0] < room_speed pos_x = 400
	}

	        globalvar flyworm, flyworminnac;
		
			flyworminnac = point_direction(x, y, objPlayer_x, objPlayer_y) + 180
    
	        repeat(25)
	        {
	            var sr_dth_var = instance_create(x, y, objEnemyBullet)
            
	            with(sr_dth_var)
	            {
	            spd = random_range(-2.8, -1.8) * global.enemy_spd
	            angle = random_range(-15, 15) + flyworminnac
	            damage = 1
            
				sprite_index = sprAcidBullet
			
	            image_angle = angle
	            }
			
				champion_bullet(sr_dth_var)
	        }
}