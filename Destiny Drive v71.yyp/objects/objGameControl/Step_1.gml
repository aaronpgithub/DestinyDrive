part_system_automatic_update(global.part_sys, true)

	if global.hp <= 0
    {
        if window_get_cursor() = cr_none
        {
        cursor_sprite = sprCursor
        }
        
        with(objGibParent)
        {
            if spd <= -6
            {
            spd += 9
            }
        }
        
        global.decal_spd = 0
    }
    
//STORM STORM STORM STORM
    if storm != -5 and global.wave < global.wave_max + 1 and global.level = "swamp"
    {
		var rain = true;
		
		if instance_exists(objThePlague) {
			if objThePlague.transition_amount >= 2 {
				rain = false
			}
		}
		
		if rain = true {
	        if global.wave > storm - 4
	        {
	        instance_create(random(1300), random_range(-600, -50), objRainDrop)
	            if instance_number(objStormGrey) = 0
	            {
	            instance_create(0, 0, objStormGrey)
	            }
	        }
        
	        if global.wave > storm - 3
	        {
	            if instance_number(objStormGrey) = 1
	            {
	            instance_create(0, 0, objStormGrey)
	            }
	        }
        
	        if global.wave > storm - 2
	        {
	            if instance_number(objStormGrey) = 2
	            {
	            instance_create(0, 0, objStormGrey)
	            }
	        }
        
	        if global.wave >= storm
	        {
	        instance_create(random(1300), random_range(-600, -50), objRainDrop)
	        }
        
	        if global.wave >= storm + 4
	        {
				repeat(6) instance_create(random(1300), random_range(-600, -50), objRainDrop)
	            
				if instance_number(objStormGrey) = 3 {
	            instance_create(0, 0, objStormGrey)
	            }
	        }
		}
    }
//////////////////////////////

//FOREST FIRE FOREST FIRE FOREST FIRE
    if storm != -5 and global.wave < global.wave_max + 1
    {
        if global.wave >= storm and global.level = "forest"
        {
            repeat(3)
            {
            instance_create(random_range(-2, 480), random_range(-10, -6), objFireDebris)
            }
            
            //NEED TO SET FOREST FIRE MUSIC GAIN TO 1
        }
    }
//////////////////////////////

if level_complete_type = "transition" {
	if !instance_exists(objTeleport) level_complete_type = ""
}

