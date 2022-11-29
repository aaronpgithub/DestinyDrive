if shot_yet = false
{
    if parent_object !=  instance_find(objPlayer2, 0)
    {
        if mouse_check_button(mb_left) 
        {
        x = parent_object.x - len
        y = parent_object.y
        spd = 0
        damage = 0
        alarm[0] = 10
        if ds_map_exists(global.item_map, "insta_bullets") insta = false
        charge_insta_x = x // for insta bullets
        charge_insta_y = y
            with(parent_object)
            {
            alarm[0] = 15
            }
            
            if len < 2.5 len += 0.03 * (1 + abs(global.fire_rate - 1))
        }
        
        if !mouse_check_button(mb_left)
        {
        spd = 7 * global.shot_speed
        damage = ((15 * global.dmg) * len)
        shot_yet = true 
            if len >= 2 spd = 10 * global.shot_speed
        

                if instance_exists(objBulletPortal)
                {
                x = objBulletPortal.x
                y = objBulletPortal.y
                }
                
        motion_set(angle, spd)
        
        if ds_map_exists(global.item_map, "insta_bullets") insta = true
        }
    }
    else
    {
        if gamepad_button_check(0, gp_shoulderrb) or keyboard_check(vk_space)
        {
        x = parent_object.x - len
        y = parent_object.y
        spd = 0
        damage = 0
        alarm[0] = 10
            with(parent_object)
            {
            alarm[0] = 15
            }
            if len < 2.5
            {
            len += 0.03 * (1 + abs(global.fire_rate - 1))
            }
        }
        
        if !gamepad_button_check(0, gp_shoulderrb) and !keyboard_check(vk_space)
        {
        spd = 7 * global.shot_speed
        damage = ((9 * global.dmg) * len)
        shot_yet = true
            if len >= 2
            {
            spd = 10 * global.shot_speed
            }
                if instance_exists(objBulletPortal)
                {
                x = objBulletPortal.x
                y = objBulletPortal.y
                }
                
        motion_set(angle, spd)
        }
    }
}

