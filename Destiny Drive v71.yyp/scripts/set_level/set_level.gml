function set_level() {
	if global.wave > global.wave_max and global.items_got < 1 and !instance_exists(objItem)
	{
	    if !ds_map_exists(global.scroll, "killroom")
	    {
	    boss_fought = false
    
	        if trns = true
	        {
	        global.levels_beat[global.character, global.level_number] = 1
	        }
    
	        if global.level = "wasteland" and trns = true
	        {
	        trns = false
	        global.level = "swamp"
	        }
        
	        if global.level = "killroom" and trns = true
	        {
	        trns = false
	        global.level = next_level
	        }
        
	        if global.level = "swamp" and trns = true
	        {
	        trns = false
	        global.level = "forest"
	        }
        
	        if global.level = "forest" and trns = true
	        {
	        trns = false
	        global.level = "volcano"
	        }
        
	        if global.level = "volcano" and trns = true
	        {
	        trns = false
	        global.level = "snow"
	        }
        
	        if global.level = "snow" and trns = true
	        {
	        trns = false
	        global.level = "city"
	        }
        
	        if global.level = "city" and trns = true
	        {
	        trns = false
	        global.level = "ocean"
	        }
        
	        if global.level = "ocean" and trns = true
	        {
	        trns = false
	        global.level = "temple"
	        }
        
	        if global.level = "temple" and trns = true
	        {
	        trns = false
	        global.level = "edge"
	        }
        
	        if global.level = "edge" and trns = true
	        {
	        trns = false
	        global.level = "final"
	        }
        
	        if global.level = "hell" and trns = true //need to fix this stuff!! dude it just goes to snow level, not hell level!!!
	        {
	        trns = false
	            if hellgoto = false
	            {
	            global.level = "snow" //maybe city
	            }
	            else
	            {
	            hellgoto = false
	            }
	        }
		
	        if !instance_exists(objTeleport)
	        {
				var do_tele = true;
			
				if ds_map_exists(global.item_map, "blind_eye") {
					do_tele = false
					if !instance_exists(objPickup) do_tele = true
				} 
			
				if do_tele = true {
			        alarm[4] = room_speed * 5
					level_complete_type = "stats"
			        instance_create(room_width / 2, room_height / 2, objTeleport)
				}
	        }
        
        
        
	            if instance_exists(objStormGrey)
	            {
	                with(objStormGrey) instance_destroy()
	            }
        
	        switch(global.level)
	        {
	        case "wasteland":
	        global.level_number = 0
	        break;
	        case "swamp":
	        global.level_number = 1
	        break;
	        case "forest":
	        global.level_number = 2
	        break;
	        case "volcano":
	        global.level_number = 3
	        break;
	        case "snow":
	        global.level_number = 4
	        break;
	        case "city":
	        global.level_number = 5
	        break;
	        case "ocean":
	        global.level_number = 6
	        break;
	        case "temple":
	        global.level_number = 7
	        break;
	        case "edge":
	        global.level_number = 8
	        break;
	        case "final":
	        global.level_number = 9
	        break;
	        case "true_final":
	        global.level_number = 10
	        break;
	        case "killroom":
	        global.level_number = 11
	        break;
	        case "hell":
	        global.level_number = 12
	        break;
	        case "tv":
	        global.level_number = 13
	        break;
	        }
	    }
	    else
	    {
	        if trns = true
	        {
	        global.levels_beat[global.character, global.level_number] = 1
        
	        switch(global.level)
	        {
	        case "wasteland":
	        next_level = "swamp"
	        break;
	        case "swamp":
	        next_level = "forest"
	        break;
	        case "forest":
	        next_level = "volcano"
	        break;
	        case "volcano":
	        next_level = "snow"
	        break;
	        }
        
	        trns = false
        
	        global.level = "killroom"
        
	        //audio_stop_all()
	        alarm[4] = room_speed * 5
	        instance_create(room_width / 2, room_height / 2, objTeleport)
	        instance_create(objPlayer_x, objPlayer_y, objTicketOfAdmission)
	            trns = false
        
	        ds_map_delete(global.scroll, "killroom")
	        }
	    }
	}



}
