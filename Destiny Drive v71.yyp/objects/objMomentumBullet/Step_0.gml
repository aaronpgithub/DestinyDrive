if shotgun = true {
    if !ds_map_exists(global.item_map, "rev_warp")
    {
        if slow = true
        {
            if spd > 0.5
            {
            spd -= 0.5
            }
            
            if spd <= 0.5
            {
            image_alpha -= 0.1
            }
            
            if image_alpha < 0
            {
            instance_destroy()
            }
        }
        
        if spd < 5 and slow = false
        {
        spd = 5
        }
    }
    else
    {
        if slow = true
        {
            if spd < -0.5
            {
            spd += 0.5
            }
            
            if spd >= -0.5
            {
            image_alpha -= 0.1
            }
            
            if image_alpha < 0
            {
            instance_destroy()
            }
        }
        
        if spd > -5 and slow = false
        {
        spd = -5
        }
    }
}

