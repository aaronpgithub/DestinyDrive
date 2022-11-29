image_yscale = image_xscale

if slow = true
{
    image_alpha -= 0.1
    
    if image_alpha < 0
    {
    instance_destroy()
    }
}

if shot_yet = false
{
        if parent_object !=  instance_find(objPlayer2, 0)
        {
            if mouse_check_button(mb_left) 
            {
            x = parent_object.x
            y = parent_object.y
            
            charge_insta_x = x // for insta bullets
            charge_insta_y = y
            
            spd = 0
            damage = 0
            alarm[0] = 10
            if ds_map_exists(global.item_map, "insta_bullets") insta = false
            
                with(parent_object)
                {
                alarm[0] = 15
                }
                if image_xscale < 3
                {
                image_xscale += 0.05 * (1 + abs(global.fire_rate - 1))
                image_yscale += 0.05 * (1 + abs(global.fire_rate - 1))
                }
            }
            
            if !mouse_check_button(mb_left)
            {
            spd = 7 * global.shot_speed
            damage = ((10 * global.dmg) * image_xscale)
            
            alarm[0] = random_range(20, 27) * image_xscale
            motion_set(angle, spd)
            
            
            
            if instance_exists(objBulletPortal)
                    {
                    x = objBulletPortal.x
                    y = objBulletPortal.y
                    }
                    
                    if ds_map_exists(global.item_map, "insta_bullets") insta = true
                    
                    shot_yet = true
            }
        
    }
    else
    {
        if gamepad_button_check(0, gp_shoulderrb) or keyboard_check(vk_space)
        {
        x = parent_object.x
        y = parent_object.y
        spd = 0
        damage = 0
        alarm[0] = 10
            with(parent_object)
            {
            alarm[0] = 15
            }
            if image_xscale < 3
            {
            image_xscale += 0.05 * (1 + abs(global.fire_rate - 1))
            image_yscale += 0.05 * (1 + abs(global.fire_rate - 1))
            }
        }
        
        if !gamepad_button_check(0, gp_shoulderrb) and !keyboard_check(vk_space)
        {
        spd = 7 * global.shot_speed
        damage = ((10 * global.dmg) * image_xscale)
        shot_yet = true
        alarm[0] = random_range(20, 27) * image_xscale
        motion_set(angle, spd)
        
                if instance_exists(objBulletPortal)
                {
                x = objBulletPortal.x
                y = objBulletPortal.y
                }
        }
    }
}

