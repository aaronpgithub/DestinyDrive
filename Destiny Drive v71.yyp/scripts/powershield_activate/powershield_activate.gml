function powershield_activate() {
	//Create fracture gemstone bullets even if you have a power shield battery
	if ds_map_exists(global.item_map, "fractured_gemstone") {
		repeat(10) {
			var frac_gem = instance_create(x, y, objBullet) 
			
			with(frac_gem) {
				damage = 10 * player_damage
				spd = random_range(2, 3) * player_shot_speed
				angle = random_range(-15, 15) * player_accuracy
			}
		}
	}

	//If you have a power shield battery, recharge items and exit script
	if ds_map_exists(global.item_map, "ps_battery") {
		if use_itm[0] != -1 use_itm[1] = use_itm[2]
		if use_itm[3] != -1 use_itm[4] = use_itm[5]
		exit;
	}

		powershield_timer = powershield_max_time
	
		powershield_time_add = powershield_time_add_max
	
		if ds_map_exists(global.item_map, "participation_award") {
			ds_map_replace(global.item_map, "participation_award", 1)
		}


}
