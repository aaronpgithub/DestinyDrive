function player_death() {
	if death_avoid = false
	{
	    global.hp = 0
	    alarm[2] = 0
	    part_emitter_destroy_all(global.part_sys)
	    part_system_clear(global.part_1)
	    sprite_index = sprPlayerDead
	    image_speed = 0
	    image_index = global.character
    
	        if !instance_exists(objRestart)
	        {
	            //audio_stop_all()
        
	            global.total_enemy_kill += global.item_maps
	            global.total_deaths += 1
	            global.total_bul_shot += global.bullets_shot
	            global.total_bul_hit += global.bullets_hit
	            global.total_flawless += global.flawless_waves
            
	            if global.item_maps > global.local_enemy_kill
	            {
	            global.local_enemy_kill = global.item_maps
	            }
            
	            if global.bullets_shot > global.local_bul_shot
	            {
	            global.local_bul_shot = global.bullets_shot
	            }
            
	            if global.bullets_hit > global.local_bul_hit
	            {
	            global.local_bul_hit = global.bullets_hit
	            }
            
	            if global.flawless_waves > global.local_flawless
	            {
	            global.local_flawless = global.flawless_waves
	            }
            
	            switch(image_index)
	            {
	            case 0:
	            ////audio_play_sound(sndPipDeath, 0, false)
	            break;
            
	            case 1:
	            ////audio_play_sound(sndTurfDeath, 0, false)
	            break;
            
	            case 2:
	            ////audio_play_sound(sndSpiceDeath, 0, false)
	            break;
            
	            case 3:
	            ////audio_play_sound(sndAlienDeath, 0, false)
	            break;
            
	            case 4:
	            ////audio_play_sound(sndNoodleDeath, 0, false)
	            break;
            
	            case 5:
	            ////audio_play_sound(sndCriminalDeath, 0, false)
	            break;
            
	            case 6:
	            ////audio_play_sound(sndTurfDeath, 0, false)
	            break;
            
	            case 7:
	            ////audio_play_sound(sndTurfDeath, 0, false)
	            break;
            
	            case 8:
	            ////audio_play_sound(sndDynaMikeDeath, 0, false)
	            break;
            
	            case 9:
	            ////audio_play_sound(sndDiseaseDeath, 0, false)
	            break;
            
	            case 10:
	            ////audio_play_sound(sndSpOfDespairDeath, 0, false)
	            break;
            
	            case 11:
	            ////audio_play_sound(sndTurfDeath, 0, false)
	            break;
	            }
            
	                globalvar death_i, death_y;
                
	                for(death_y = 0; death_y < 3; death_y += 1)
	                {
	                    for(death_i = 0; death_i < 10; death_i += 1)
	                    {
	                    var inst;
                    
	                    inst = instance_create(x, y, objPauseItem)
                    
	                        with(inst)
	                        {
	                        ID = instance_number(objPauseItem) - 1
	                        x = 45 + (15 * death_i)
	                        y = 190 + (15 * death_y)
	                        pos = 190 + (15 * death_y)
	                        }
	                    }
	                }
            
	        instance_create(0, 240, objBackToMenu)
	        instance_create(room_width, 240, objRestart)
	        }
        
	        with(objBossParent)
	        {
	        alarm[11] = 10000
	        }
	}



}
