if size < 0
{
instance_destroy()
}

image_index = floor(size)

if shot_yet = false and infect = false
{
    if parent_object !=  instance_find(objPlayer2, 0)
    {
        if mouse_check_button(mb_left) 
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
            
            if size < image_number -1
            {
            size += 0.07 * (1 + abs(global.fire_rate - 1))
            }
        }
        
        if !mouse_check_button(mb_left)
        {
        spd = 3 * global.shot_speed
        damage = ((10 * global.dmg) * size)
        shot_yet = true
            if size >= image_number -1
            {
            infect = true
            }
        motion_set(angle, spd)
                

                if instance_exists(objBulletPortal)
                {
                x = objBulletPortal.x
                y = objBulletPortal.y
                }
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
            
            image_index = floor(size)
            
            if size < image_number -1
            {
            size += 0.07 * (1 + abs(global.fire_rate - 1))
            }
        }
        
        if !gamepad_button_check(0, gp_shoulderrb) and !keyboard_check(vk_space)
        {
        spd = 3 * global.shot_speed
        damage = ((10 * global.dmg) * size)
        shot_yet = true
            if size >= image_number -1
            {
            infect = true
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

if infect = true
{
damage = 1
}

