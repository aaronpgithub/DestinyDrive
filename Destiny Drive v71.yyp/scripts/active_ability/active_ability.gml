function active_ability() {

	    if global.character = 0
	    {
	        if global.hp > 2
	        {
				reroll_items()
            
	            if instance_exists(objUseItem) or instance_exists(objItem) player_take_damage(2)
	        }
	    }
	    //
    
    
	    //Turf
	    if global.character = 1
	    {   
	        if global.chisel_hp > 0 and (global.dmg - global.alt_dmg) > 0.05 {
				global.alt_dmg -= 0.05
				global.chisel_hp -= 1
			}
	    }
	    //
    
	    //Spice
	    if global.character = 2
		{
	        objGameControl.vip_shop = global.wave + 1
	        ability_able = false
	    }
	    //
    
	    //Alien
	    if global.character = 3 and global.use_itm[3] != -1
	    {   
	        var itm2;
        
	        itm2 = global.use_itm[3]
        
	        global.use_itm[3] = global.use_itm[0]
        
	        global.use_itm[0] = itm2
        
        
	        var chg2;
        
	        chg2 = global.use_itm[4]
        
	        global.use_itm[4] = global.use_itm[1]
        
	        global.use_itm[1] = chg2
        
        
        
	        var mxchg2;
        
	        mxchg2 = global.use_itm[5]
        
	        global.use_itm[5] = global.use_itm[2]
        
	        global.use_itm[2] = mxchg2
        
	    }
	    //
    
	    //Noodle has two passives
    
	    //Criminal
	    if global.character = 5 and ability_able = true
	    {   
	        repeat(10)
	        {
	        instance_create(x, y, objSmoke)
	        }
        
	        smoked_out = true
        
	        alarm[10] = room_speed * 3
        
	        ability_able = false
	    }
	    //
    
	    //Bone Boy
	    if global.character = 6 and ability_able = true and !instance_exists(objFriendlyJunker)
	    {   
			/*
	        var id1 = instance_create(-40, y - 10, objFriendlyJunker);
	        var id2 = instance_create(-40, y + 10, objFriendlyJunker);
        
	        with(id1)
	        {
	        ID = 0
	        }
        
	        with(id2)
	        {
	        ID = 1
	        }
        
	        bone_wave = 7
        
	        ability_able = false*/
	    }
	    //
    
	    //Dastardly Devil
	    if global.character = 7 and ability_able = true
	    {   
	        instance_create(x, y, objShadowManip)
	        teleport = true
	    }
	    //
    
	    //dyna mike is passives
    
	    //disease has two passives
    
	    //so does spirit of despair




}
