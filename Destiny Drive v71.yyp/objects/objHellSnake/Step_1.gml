event_inherited()

if instance_exists(objSatan)
{
    if objSatan.attack_choice = 5
    {
        if snake_bounce = true
        {
            if x < 0
            {
            x += 1
            angle = -(angle)
            spd = -(spd)
            }
            
            if x > 320
            {
            x -= 1
            angle = -(angle)
            spd = -(spd)
            }
        }
        
            if x < 300
            {
            snake_bounce = true
            }
        
        if y < 64
        {
        y += 1
        angle = -(angle)
        }
        
        if y > 240
        {
        y -= 1
        angle = -(angle)
        }
    
    image_angle = angle
    }
}

