function wave_add() {
	    //If the shop isn't adding a wave, the game control will
	    if global.shop_wave_add = false
	    {
			if global.level != "final" global.wave += 1
	
	        if global.challenge = 4
	        {
	            if health_leak != 1
	            {
	            health_leak -= 1
	            }
            
	        global.hp = health_leak
        
	            if global.wave = 0
	            {
	            global.hp += 1
	            health_leak += 1
	            global.hp = health_leak
	            }
	        }
	    }
	    else //if the shop IS adding a wave, this code is done
	    {
	    global.shop_wave_add = false
	        if global.challenge = 4
	        {
	        health_leak -= 1
	        global.hp = health_leak
	        }
	    }
	    ///
	
		if global.level = "wasteland" {
		if global.wave = mini_wave - 3 quick_trans = true
		if global.wave = mini_wave + 2 quick_trans = true
		}
	
		if global.level = "forest" {
		forest_enemy = choose(objBlindEye, objPsychicSpitter, objFollower)
		}



}
