function health_item() {
		if ds_map_exists(global.item_map, "emergency_bot") {
			var hp_less_than = ceil(max_hp / 4)
		
			if max_hp > 0 hp_less_than = 4
		
			if global.hp <= hp_less_than create_if_exist(-20, -20, objEmergencyBot)
		}

	if global.hp <= 0
	{		
		if ds_map_exists(global.item_map, "second_heart") //second heart is the first death defier that activates
	    {
	        if ds_map_find_value(global.item_map, "second_heart") > 0
	        {
	        if max_hp > 0 {
				global.hp = max_hp
			} else global.hp += 10
		
	        ds_map_replace(global.item_map, "second_heart", 0)
	        exit;
	        }
	    }
	
		if ds_map_exists(global.item_map, "angelic_savior") {
			global.hp = 1
		
			powershield_activate()
		
			ds_map_delete(global.item_map, "angelic_savior")
		
			exit;
		}
    
	    if ds_map_exists(global.item_map, "ess_brav")
	    {
	        if ds_map_find_value(global.item_map, "ess_brav") > 0
	        {
	        global.hp = 1
	        ds_map_replace(global.item_map, "ess_brav", 0)
        
	            with(objEnemyBulletParent)
	            {
						if invincible = false {
							instance_destroy()
						}
	            }
	        exit;
	        }
	    }
	
		if ds_map_exists(global.item_map, "your_destiny")
	    {
	        if ds_map_find_value(global.item_map, "your_destiny") > 0
	        {
				if global.wave < global.wave_max {
			        global.hp = 1
			        ds_map_replace(global.item_map, "your_destiny", 0)
		
					with(objEnemyParent) {
						damage_item_test = false
						instance_destroy()
					}
					with(objEnemyBulletParent) {
						instance_destroy()
					}
		
					global.wave = global.wave_max
			
			
			        exit;
				}
	        }
	    }
    
	    if sprite_index = sprPlayerDynaMike
	    {
	        if ability_able = true
	        {
	        global.hp = 1
        
	        death_avoid = true
        
	        weapon2 = weapon
        
	            with(objBulletParent)
	            {
	            instance_destroy()
	            }            
        
	        weapon = 12
        
	        alarm[5] = room_speed * 1
        
	        alarm[6] = room_speed * 4
	        }
	    }
	}



}
