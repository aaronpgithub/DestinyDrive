function level_complete() {
	#region items
			if ds_map_exists(global.item_map, "kind_parasite") {
				if instance_exists(objPlayer) {
					if objPlayer.max_hp > 0 {
						global.hp = objPlayer.max_hp
					} else {
						global.hp += 10
					}
				}
			}
	
			if ds_map_exists(global.item_map, "skin_shield") global.shields[0] += ds_map_find_value(global.item_map, "skin_shield")
        
			//$%
	        if ds_map_exists(global.item_map, "gunpowder") {
	            if global.wave > global.wave_max {
	            ds_map_replace(global.item_map, "gunpowder", 1)
	            }
	        }
		
			if instance_exists(objAmethystGhost) objAmethystGhost.damage_amethyst = 5
		
			if ds_map_exists(global.item_map, "your_destiny") {
	            ds_map_replace(global.item_map, "your_destiny", 1)
	        }
        
			//$%
	        if sprite_index = sprPlayerSpice {
	        ability_able = true
	        }
        
			//$%
	        if ds_map_exists(global.item_map, "spirit_heart") {
	        global.shields[1] += 1
	        }
        
	        //tonic
	        if ds_map_exists(global.item_map, "tonic")
	        {
	            switch(ds_map_find_value(global.item_map, "tonic"))
	            {
	            case "damage":
	            global.dmg += 0.05
	            break;
	            case "fire rate":
	            global.fire_rate -= 0.05
	            break;
	            case "shot speed":
	            global.shot_speed += 0.15
	            break;
	            case "accuracy":
	            global.accuracy -= 0.1
	            break;
	            case "luck":
	            global.luck += 0.1
	            break;
	            }
	        }
	        //////
		
	#endregion
	
	    objGameControl.second_shop = false
        
	    global.wave = -1
    
	    objGameControl.trns = true
    
	    objGameControl.health_leak = 20
    
	    objGameControl.tele_id = 0
    
		//$%
	    objGameControl.vip_shop = -5
    
	    ds_list_shuffle(global.item_pool) //SHUFFLING THE ITEM POOL
    
	    if ds_map_exists(global.item_map, "treasure_chest") {
	    objGameControl.pickup_parameter = 0.30
	    }
	    else {
	    objGameControl.pickup_parameter = 0.70
	    }
    
		//$%
	    junk_waves = round(random_range(-2, 5)) //junk waves are used for more than just junk waves in the wasteland
    
	    //mini shop wave //$%
	    if !ds_map_exists(global.item_map, "coupon") {
	    beast_wave = irandom_range(-7, 4)
	    }
	    else {
	    beast_wave = irandom_range(-2, 4)
	    }
	    //
    
	        //audio_stop_all()
        
	        switch(global.level)
	        {
	        case "swamp":
	        global.wave_max = round(10 * global.wave_multiplier)
	        level_wave_creation()
        
	        //audio_sound_gain(sndSwampShopMusic, 0, 0)
	        ////audio_play_sound(sndSwampMusic, 0, true)
	        ////audio_play_sound(sndSwampShopMusic, 0, true)
	        break;
        
	        case "forest":
	        global.wave_max = round(9 * global.wave_multiplier)
	        level_wave_creation()
	        objGameControl.storm = irandom_range(2, 4) //STORM VARIABLE IS USED FOR FOREST FIRE IN FOREST LEVEL
        
	        //audio_sound_gain(sndForestMusicShop, 0, 0)
	        //audio_sound_gain(sndForestMusicFire, 0, 0)
	        ////audio_play_sound(sndForestMusic, 0, true)
	        ////audio_play_sound(sndForestMusicShop, 0, true)
	        ////audio_play_sound(sndForestMusicFire, 0, true)
	        break;
        
	        case "volcano":
	        global.wave_max = round(12 * global.wave_multiplier)
	        level_wave_creation()
        
	        if !ds_map_exists(global.item_map, "magma_rock") {
	        objGameControl.lava_wave = irandom_range(-7, 7) //if lava is possible
	        }
	        else {
	        objGameControl.lava_wave = irandom_range(3, 7) //if lava is possible
	        }
        
	        ////audio_play_sound(sndVolcanoMusic, 0, true)
	        break;
        
	        case "snow":
	        global.wave_max = round(15 * global.wave_multiplier)
	        level_wave_creation()
        
	        ////audio_play_sound(sndSnowMusic, 0, true)
	        break;
        
	        case "city":
	        global.wave_max = round(17 * global.wave_multiplier)
	        level_wave_creation()
        
	        ////audio_play_sound(sndSnowMusic, 0, true)
	        break;
        
	        case "ocean":
	        global.wave_max = round(18 * global.wave_multiplier)
	        level_wave_creation()
        
	        ////audio_play_sound(sndSnowMusic, 0, true)
	        break;
        
	        case "temple":
	        global.wave_max = round(33 * global.wave_multiplier)
	        level_wave_creation()
        
	        ////audio_play_sound(sndSnowMusic, 0, true)
	        break;
        
	        case "edge":
	        global.wave_max = round(15 * global.wave_multiplier)
	        level_wave_creation()
        
	        ////audio_play_sound(sndSnowMusic, 0, true)
	        break;
        
	        case "final":
	        instance_create(x, y, objCutscene)
	        break;
        
	        case "killroom":
	        global.wave_max = round(15 * global.wave_multiplier)
	        level_wave_creation()
        
	        //audio_sound_gain(sndForestMusicShop, 0, 0)
	        //audio_sound_gain(sndForestMusicFire, 0, 0)
	        ////audio_play_sound(sndForestMusic, 0, true)
	        ////audio_play_sound(sndForestMusicShop, 0, true)
	        break;
        
	        case "hell":
	        global.wave_max = round(15 * global.wave_multiplier)
	        level_wave_creation()
	        //audio_sound_gain(sndForestMusicShop, 0, 0)
	        //audio_sound_gain(sndForestMusicFire, 0, 0)
	        ////audio_play_sound(sndForestMusic, 0, true)
	        ////audio_play_sound(sndForestMusicShop, 0, true)
	        break;
	        }
        
	        with(objGameControl)
	        {
	            if beast_wave = mini_wave or beast_wave = lava_wave {
	            beast_wave = -10
	            }
	        }
		
			//Nuke
			if global.use_itm[0] = 30 {
				global.use_itm[2] = global.wave_max - 1
				global.use_itm[1] = 0
			}
		
			if global.use_itm[3] = 30 {
				global.use_itm[5] = global.wave_max - 1
				global.use_itm[4] = 0
			}


}
