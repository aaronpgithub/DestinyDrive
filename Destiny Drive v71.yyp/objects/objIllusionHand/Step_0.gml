if instance_exists(objCarriageOfIllusion)
{
    if objCarriageOfIllusion.attack_choice = 0 or objCarriageOfIllusion.attack_choice = -1 or objCarriageOfIllusion.attack_choice = 1
    {
    t += 2
    t = t mod 360
    sprite_index = sprIllusionHand
        if ID = 0
        {
        x = lerp(x, objCarriageOfIllusion.x + 5, 0.1)
        y = lerp(y, 3 * sin(degtorad(t)) + objCarriageOfIllusion.y - 30, 0.1)
        }
        
        if ID = 1
        {
        x = lerp(x, objCarriageOfIllusion.x - 30, 0.1)
        y = lerp(y, 3 * sin(degtorad(t)) + objCarriageOfIllusion.y - 30, 0.1)
        }
        image_speed = 0.2
        image_yscale = 1
        image_xscale = 1
        image_angle = 0
    }
    
    //Double shot attack
    if objCarriageOfIllusion.attack_choice = 2
    {
    t += 2
    t = t mod 360
    sprite_index = sprIllusionHandPoint
        if objCarriageOfIllusion.burst_choice = 0
        {
        y = lerp(y, objCarriageOfIllusion.y - (objCarriageOfIllusion.sprite_height / 2), 0.9)
        }
        else
        {
            if ID = 0
            {
            x = lerp(x, objCarriageOfIllusion.x + 5, 0.1)
            y = lerp(y, objCarriageOfIllusion.y - ((objCarriageOfIllusion.sprite_height / 2) + 15), 0.9)
            }
            if ID = 1
            {
            x = lerp(x, objCarriageOfIllusion.x - 30, 0.1)
            y = lerp(y, objCarriageOfIllusion.y - ((objCarriageOfIllusion.sprite_height / 2) - 15), 0.9)
            }
        }

    }
    
    if objCarriageOfIllusion.attack_choice = 3
    {
    sprite_index = sprIllusionHandPoint
        if ID = 0
        {
        image_xscale = -1
        image_angle += 4
        x = objCarriageOfIllusion.x + -(objCarriageOfIllusion.sprite_width / 2) + lengthdir_x(16, image_angle)
        y = objCarriageOfIllusion.y + -(objCarriageOfIllusion.sprite_height / 2) + lengthdir_y(16, image_angle)
        }
        
        if ID = 1
        {
        image_angle += 4
        x = objCarriageOfIllusion.x + -(objCarriageOfIllusion.sprite_width / 2) + lengthdir_x(16, image_angle + 180)
        y = objCarriageOfIllusion.y + -(objCarriageOfIllusion.sprite_height / 2) + lengthdir_y(16, image_angle + 180)
        }
    }
    
    if objCarriageOfIllusion.attack_choice = 4
    {
    t += 2
    t = t mod 360
        if ID = 1
        {
        sprite_index = sprIllusionHand
        y = lerp(y, 3 * sin(degtorad(t)) + objCarriageOfIllusion.y - 30, 0.1)
        }
    }
}
else
{
image_alpha -= 0.1

    if image_alpha <= 0
    {
    instance_destroy()
    }
}

