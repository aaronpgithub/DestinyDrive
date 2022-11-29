function mouse_controls() {
	if instance_exists(objCutscene) and collision_point(x, y, objRoad, true, true) {
	x = lerp(x, 50, 0.1)
	y = lerp(y, road_y_min + 85, 0.1) 
	exit;
	}

	if instance_exists(objCutscene) exit;

	var steroids_x = 0;
	var steroids_y = 0;

	if ds_map_exists(global.item_map, "steroids")
	{
	steroids_x = random_range(-3, 3)
	steroids_y = random_range(-3, 3)
	}

	var ymin, ymax, xmin, xmax, xpos, ypos;

	ymin = 64
	ymax = 233
	xmin = 5
	xmax = 315

	if instance_exists(objThePlague) {
		if objThePlague.transition_amount >= objThePlague.portal_transition {
			ymin = 0
		}
	}

	if instance_exists(objCarriageOfIllusion) and objCarriageOfIllusion.transition_amount >= 1 {
		ymin = 0
	}

	xpos = mouse_x
	ypos = mouse_y

#region position changing stuff
	if global.level = "true_final"
	{
	ymin = 5
	}

	if ds_map_exists(global.item_map, "bad_connection") {
		xpos = click_x
		ypos = click_y
	}

	if global.use_itm[0] = 27 and mouse_check_button(mb_right) {
	xpos = rest_x
	ypos = rest_y
	}

	if scope_timer >= 30 {
	xpos = scope_x
	ypos = scope_y
	}
#endregion

	//CONTROLS
	        //NON INVERTED
	        if global.artifact[6, 0] = 0
	        {
	            if !instance_exists(objShop)
	            {
	                if ypos + steroids_y > ymin and ypos + steroids_y < ymax {
	                y = ypos + steroids_y
	                }
	                else
	                {
	                    if ypos + steroids_y <= ymin y = ymin
                    
	                    if ypos + steroids_y >= ymax y = ymax
	                }
                
	                if xpos + steroids_x > xmin and xpos + steroids_x < xmax
	                {
	                x = xpos + steroids_x
	                }
	                else
	                {
	                    if xpos + steroids_x <= xmin x = xmin
                    
	                    if xpos + steroids_x >= xmax x = xmax
	                }
	            }
        
	            //SHOP CONTROLS
	            if instance_exists(objShop)
	            {
	                if ypos + steroids_y > 120 and ypos + steroids_y < 160
	                {
	                y = ypos + steroids_y
	                }
	                else
	                {
	                    if ypos + steroids_y <= 120
	                    {
	                    y = 120
	                    }
                    
	                    if ypos + steroids_y >= 160
	                    {
	                    y = 160
	                    }
	                }
                
	                if xpos + steroids_x > 40 and xpos + steroids_x < 280
	                {
	                x = xpos + steroids_x
	                }
	                else
	                {
	                    if xpos + steroids_x <= 40
	                    {
	                    x = 40
	                    }
                    
	                    if xpos + steroids_x >= 120
	                    {
	                    x = 280
	                    }
	                }
	            }
	        }
	        /*else //INVERTED
	        {
	            if !instance_exists(objShop)
	            {
	                if ypos > 75 and ypos < 233
	                {
	                y = lerp(y, (objRoad.y + objRoad.sprite_height / 2) - (ypos - (objRoad.y + objRoad.sprite_height / 2)), mouse_spd)
	                }
	                else
	                {
	                    if ypos <= 75
	                    {
	                    y = lerp(y, 233, mouse_spd)
	                    }
                    
	                    if ypos >= 233
	                    {
	                    y = lerp(y, 75, mouse_spd)
	                    }
	                }
                
	                if xpos > 5 and xpos < 120
	                {
	                x = lerp(x, 57.5 - (xpos - 57.5), mouse_spd)
	                }
	                else
	                {
	                    if xpos <= 5
	                    {
	                    x = lerp(x, 120, mouse_spd)
	                    }
                    
	                    if xpos >= 120
	                    {
	                    x = lerp(x, 5, mouse_spd)
	                    }
	                }
	            }
        
	            //SHOP CONTROLS
	            if instance_exists(objShop)
	            {
	                if ypos > 120 and ypos < 160
	                {
	                y = lerp(y, ypos, mouse_spd)
	                }
	                else
	                {
	                    if ypos <= 120
	                    {
	                    y = lerp(y, 120, mouse_spd)
	                    }
                    
	                    if ypos >= 160
	                    {
	                    y = lerp(y, 160, mouse_spd)
	                    }
	                }
                
	                if xpos > 40 and xpos < 280
	                {
	                x = lerp(x, xpos, mouse_spd)
	                }
	                else
	                {
	                    if xpos <= 40
	                    {
	                    x = lerp(x, 40, mouse_spd)
	                    }
                    
	                    if xpos >= 120
	                    {
	                    x = lerp(x, 280, mouse_spd)
	                    }
	                }
	            }
	        }
	    ////////////////////////////////////////////////////////


/* end mouse_controls */
}
