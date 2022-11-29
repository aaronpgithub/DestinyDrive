function special_wave_event() {

		if global.wave < global.wave_max and global.wave != global.wave_max - 1 and global.wave != mini_wave and global.wave != vip_shop and global.wave != beast_wave
	    {
	        //Junk piles
	        if global.level = "wasteland"
	        {
	                if do_junk = false
	                {
	                wave_create()
	                }
	                else
	                {
	                alarm[10] = 45
	                alarm[11] = room_speed * 13
	                }
	        }
	        ////////////////////////////
        
	        //swamp boats and such///////////////////////////////////////
	        if global.level = "swamp"
	        {
	            if junk_waves > 0
	            {
	                    var chance = random(1);
                
	                if chance <= 0.5
	                {
	                    repeat(12)
	                    {
	                    var fly_inst = instance_create(room_width + 35, road_y_mid, objFly)
                    
	                        with(fly_inst)
	                        {
	                        pos_x = random_range(184, 288)
	                        pos_y = random_range(112, 224)
	                        }
	                    }
                    
	                    junk_waves -= 1
	                }
	            }
            
	            wave_create()
            
	            if !instance_exists(objBoat) and global.wave = boat_wave
	            {
	            instance_create(-50, 50, objBoat)
	            }
	        }
	        ////////////////////////////////////////////////////////////////////////
        
	        //this code will be for sepcial things in the forest
	        if global.level = "forest"
	        {
				wave_create()
			}
	        /////////////////////////////////////////////////////////
        
	        //this code will be for sepcial things in the volcano
	        if global.level = "volcano"
	        {
	                //the lava bridge
	                if global.wave != lava_wave
	                {
	                wave_create()
	                }
	                else
	                {
	                alarm[10] = 3
	                alarm[11] = room_speed * 13
	                }
	        }
	        //
        
	        //this code will be for sepcial things in the ice world
	        if global.level = "snow"
	        {
	            wave_create()
	        }
	        //
        
	        //this code will be for sepcial things in the city world
	        if global.level = "city"
	        {
						repeat(choose(2, 3, 4)) {
							globalvar baba;
							baba = choose(125, 200)
	                    var bla_inst = instance_create(370, baba, objCoolBlaster)
                    
	                        with(bla_inst)
	                        {
	                        pos_x = random_range(184, 288)
	                        pos_y = baba
	                        }
						}
					
						repeat(choose(1, 2)) {
							globalvar baba;
							baba = choose(125, 200)
	                    var bla_inst = instance_create(370, baba, objPOLocke)
                    
	                        with(bla_inst)
	                        {
	                        pos_x = random_range(184, 288)
	                        pos_y = baba
	                        }
						}
                    
            
	            wave_create()
	        }
	        //
        
	        //this code will be for sepcial things in the ocean world
	        if global.level = "ocean"
	        {
	            wave_create()
	        }
	        //
        
	        //this code will be for sepcial things in the temple world
	        if global.level = "temple"
	        {
				if global.wave != 11 and global.wave != 21 and global.wave != global.wave_max {
					if global.temple_level = "psychic" create_if_exist(400, 0, objPsychicGod)
					if global.temple_level = "sacrifice" create_if_exist(400, 0, objSacrificeGod)
					if global.temple_level = "ruin" create_if_exist(400, 0, objRuinGod)
				
					wave_create()
				} else if objGameControl.mini_wave = 11 and global.wave >= 11 {
					objGameControl.mini_wave = 21
				}
			
            
	        }
	        //
        
	        //this code will be for sepcial things in the temple world
	        if global.level = "edge"
	        {
	            wave_create()
	        }
	        //
        
	        //this code will be for sepcial things in the temple world
	        if global.level = "true_final"
	        {
	            instance_create(0, 0, objTheGod)
	        }
	        //
        
	        //this code will be for sepcial things in the ice world
	        if global.level = "hell"
	        {
	            wave_create()
	        }
	        //
        
	        //this code will be for sepcial things in the killroom
	        if global.level = "killroom"
	        {
	            wave_create()
	        }
	        //
	    }



}
