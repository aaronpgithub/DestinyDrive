function instant_bullets() {
	if object_index = objBoomerang or object_index = objLaser or object_index = objRocket or object_index = objFlappyBullet or object_index = objCannonball exit;

	if insta = true and path_exists(bullet_path)
	{
	    path_add_point(bullet_path, x, y, 0)
    
	    for(var i = 0; i < 3000; i++) /////////////Start for loop
	    {            
	        x += lengthdir_x(sprite_width * sign(spd), angle)
	        y += lengthdir_y(sprite_height, angle)
        
	        var col_en = collision_circle(x, y, sprite_width / 2, objEnemyParent, true, true);
	        var col_bul = collision_circle(x, y, sprite_width / 2, objEnemyBulletParent, true, true);
            
	            //enemy hit//////////////////////////////////////////////////
	            if col_en != noone
	            {
	                if col_en.invincible != true and col_en.alarm[11] < 0
	                {
						path_add_point(bullet_path, x, y, 0)
                
	                x = col_en.x - (col_en.sprite_width / 2)
	                y = col_en.y - (col_en.sprite_height / 2)
	                }
                
	            exit;
	            }
	            //////////////////////////////////////////////////////////////
            
	        if (x < 0 or x > 320) or (y < 0 or y > 256) //outside room
	        {
				path_add_point(bullet_path, x, y, 0)
			
	                ////////////////////////////////////////////////////////////////////////////////////////////////////Wrapping around the room
	                if ds_map_exists(global.item_map, "wrap") or ds_map_exists(global.item_map, "rev_warp") 
	                {
	                    if wrap > 0 and i_wrap_done = false
	                    {
                        
	                        move_wrap(true, true, 0)
                        
							path_add_point(bullet_path, x, y, -1)
						
	                        wrap -= 1
                        
	                        i_wrap_done = true
	                    }
	                    else if i_wrap_done = false
	                    {
	                    instance_destroy()
	                    break;
	                    }
	                }
	                else //if wrapping doesnt exist
	                {
	                instance_destroy()
	                break;
	                }
	                /////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
	        }
	        else
	        {
	        i_wrap_done = false
	        }
        
	            ///////////////////////////////////////////////////////////////////////////bounce
	            if bounce = true and bounce_amount > 0
	            {
	                if y < road_y_min or y > road_y_max
	                {
						path_add_point(bullet_path, x, y, 0)
                    
	                    if y > road_y_max y -= 3
	                    if y < road_y_min y += 3
                    
	                    angle = -(angle)
	                    bounce_amount -= 1
	                }
	            }
	            ////////////////////////////////////////////////////////////////////////////////////////////////////


	    } /////////////End for loop
	}


	/*
	if object_index = objBoomerang or object_index = objLaser or object_index = objFlappyBullet or object_index = objCannonball exit;

	if insta = true and path_exists(bullet_path)
	{
		path_add_point(bullet_path, x, y, 0)
    
	    for(var i = 0; i < 3000; i++) /////////////Start for loop
	    {
		var col_en = collision_line(x, y, x + lengthdir_x(i * 32, angle), y + lengthdir_y(i * 32, angle), objEnemyParent, true, true)
            
	            //enemy hit//////////////////////////////////////////////////
	            if col_en != noone
	            {
	                if col_en.invincible != true and col_en.alarm[11] < 0
	                {
	                    path_add_point(bullet_path, x, y, 0)
                
	                x = col_en.x - (col_en.sprite_width / 2)
	                y = col_en.y - (col_en.sprite_height / 2)
	                }
                
	            exit;
	            }
	            //////////////////////////////////////////////////////////////
            
	        if (x < 0 or x > 320) or (y < 0 or y > 256) //outside room
	        {
	                path_add_point(bullet_path, x, y, 0)
				
	                ////////////////////////////////////////////////////////////////////////////////////////////////////Wrapping around the room
	                if ds_map_exists(global.item_map, "wrap") or ds_map_exists(global.item_map, "rev_warp") 
	                {
	                    if wrap > 0 and i_wrap_done = false
	                    {
	                        if arrpos < 50
	                        {
	                            if x > room_width / 2
	                            {
	                            arr[arrpos, 0] = 1
	                            arr[arrpos, 1] = y
	                            }
	                            else
	                            {
	                            arr[arrpos, 0] = room_width
	                            arr[arrpos, 1] = y
	                            }
	                        }
                        
	                        move_wrap(true, true, 0)
                        
	                        wrap -= 1
                        
	                        i_wrap_done = true
	                    }
	                    else if i_wrap_done = false
	                    {
	                    instance_destroy()
	                    break;
	                    }
	                }
	                else //if wrapping doesnt exist
	                {
	                instance_destroy()
	                break;
	                }
	                /////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
	        }
	        else
	        {
	        i_wrap_done = false
	        }
        
	            ///////////////////////////////////////////////////////////////////////////bounce
	            if bounce = true and bounce_amount > 0
	            {
	                if y < road_y_min or y > road_y_max
	                {
	                    if arrpos < 50
	                    {
	                                    if first_i_bounce = true
	                                    {
	                                    arr[0, 2] = x
	                                    arr[0, 3] = y
	                                    first_i_bounce = false
	                                    }
                    
	                        //set end of previous line to position
	                        arr[arrpos, 2] = x
	                        arr[arrpos, 3] = y
	                        arrpos += 1
                        
	                        //set start of line to position
	                        arr[arrpos, 0] = x
	                        arr[arrpos, 1] = y
	                    }
                    
	                    if y > road_y_max y -= 3
	                    if y < road_y_min y += 3
                    
	                    angle = -(angle)
	                    bounce_amount -= 1
	                }
	            }
	            ////////////////////////////////////////////////////////////////////////////////////////////////////


	    } /////////////End for loop
	}


/* end instant_bullets */
}
