function keyboard_control() {

	    if keyboard_check(vk_shift)
	    {
	    gamepad_move_speed = 2
	    }
	    else
	    {
	    gamepad_move_speed = 4
	    }
    
	    if global.hp > 0
	    {   
	        //CONTROLS
	        //NON INVERTED
	        if global.artifact[6, 0] = 0
	        {
	            if !instance_exists(objShop)
	            {
	                if keyboard_check(ord("W"))
	                {
	                    if y >= 75
	                    {
	                    y -= gamepad_move_speed
	                    }
	                }
                
	                if keyboard_check(ord("S"))
	                {
	                    if y <= 233
	                    {
	                    y += gamepad_move_speed
	                    }
	                }
                
	                if keyboard_check(ord("A"))
	                {
	                    if x >= 5
	                    {
	                    x -= gamepad_move_speed
	                    }
	                }
                
	                if keyboard_check(ord("D"))
	                {
	                    if x <= 120
	                    {
	                    x += gamepad_move_speed
	                    }
	                }
	            }
        
	            //SHOP CONTROLS
	            if instance_exists(objShop)
	            {      
	                if keyboard_check(ord("W"))
	                {
	                    if y >= 120
	                    {
	                    y -= gamepad_move_speed
	                    }
	                }
                
	                if keyboard_check(ord("S"))
	                {
	                    if y <= 160
	                    {
	                    y += gamepad_move_speed
	                    }
	                }
                
	                if keyboard_check(ord("A"))
	                {
	                    if x >= 40
	                    {
	                    x -= gamepad_move_speed
	                    }
	                }
                
	                if keyboard_check(ord("D"))
	                {
	                    if x <= 280
	                    {
	                    x += gamepad_move_speed
	                    }
	                }
	            }
	        }
	    }
	    ////////////////////////////////////////////////////////
    
    
	    if keyboard_check(vk_space)
	    {
	    shooting_script(global.dmg + global.alt_dmg, global.shot_speed + global.alt_sho, global.accuracy + global.alt_acc, global.fire_rate + global.alt_fir, true, false)
	    }
    
	    if keyboard_check_pressed(vk_space) and weapon = 38
	    {
	        reload += 1
	    }



}
