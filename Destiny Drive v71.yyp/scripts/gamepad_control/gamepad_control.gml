function gamepad_control() {
	    if global.hp > 0
	    {
	        var haxis = gamepad_axis_value(0, gp_axislh);
	        var vaxis = gamepad_axis_value(0, gp_axislv);
        
	        //CONTROLS
	        //NON INVERTED
	        if global.artifact[6, 0] = 0
	        {
	            if !instance_exists(objShop)
	            {
	                if y <= 75 and gamepad_axis_value(0, gp_axislv) < 0
	                {
	                vaxis = 0
	                }
                
	                if y >= 233 and gamepad_axis_value(0, gp_axislv) > 0
	                {
	                vaxis = 0
	                }
                
	                if x <= 5 and gamepad_axis_value(0, gp_axislh) < 0
	                {
	                haxis = 0
	                }
                
	                if x >= 120 and gamepad_axis_value(0, gp_axislh) > 0
	                {
	                haxis = 0
	                }
	            }
        
	            //SHOP CONTROLS
	            if instance_exists(objShop)
	            {
	                if y <= 120 and gamepad_axis_value(0, gp_axislv) < 0
	                {
	                vaxis = 0
	                }
                
	                if y >= 160 and gamepad_axis_value(0, gp_axislv) > 0
	                {
	                vaxis = 0
	                }
                
	                if x <= 40 and gamepad_axis_value(0, gp_axislh) < 0
	                {
	                haxis = 0
	                }
                
	                if x >= 280 and gamepad_axis_value(0, gp_axislh) > 0
	                {
	                haxis = 0
	                }
	            }
	        }
    
	                gamepad_set_axis_deadzone(0, 0.2)
	                direction = point_direction(0, 0, haxis, vaxis);
	                speed = point_distance(0, 0, haxis, vaxis) * 4;
	    }
	    else
	    {
	    speed = 0
	    direction = 0
	    }
	    ////////////////////////////////////////////////////////
    
    
	    if gamepad_button_check(0, gp_shoulderrb)
	    {
	        shooting_script(global.dmg + global.alt_dmg, global.shot_speed + global.alt_sho, global.accuracy + global.alt_acc, global.fire_rate + global.alt_fir, true, false)
	    }
    
	    if gamepad_button_check_pressed(0, gp_shoulderrb) and weapon = 38
	    {
	        reload += 1
	    }
    
	    if gamepad_button_check(0, gp_shoulderl)
	    {
	        active_ability()
	    }



}
