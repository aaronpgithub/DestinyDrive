function pickup_script() {
	var pamper = false

	if argument_count > 0 pamper = argument[0]

	if (global.wave < global.wave_max - 1 and global.wave > 0) or pamper = true {
	var pickup_x = 330

	var pickup_chance = random(1)

	if variable_global_exists("redo_map") {
		if ds_map_find_value(global.redo_map, "got_pickup") = true {
			pickup_chance = 0
		} else pickup_chance = 1
	}
    
	    if !ds_map_exists(global.item_map, "treasure_map")
	    {
	        //if pickup_chance <= objGameControl.pickup_parameter + (0.05 * global.luck) {
	        instance_create(pickup_x, random_range(130, 190), objPickup)
	        //}
	    }
	    else
	    {
	    instance_create(pickup_x, random_range(130, 190), objPickup)
	    }
	
		if pamper = false {
			repeat(1 + (ds_map_exists(global.item_map, "amoeba_tokens")) )
				instance_create(pickup_x, random_range(130, 190), objToken)
		}

	}


}
