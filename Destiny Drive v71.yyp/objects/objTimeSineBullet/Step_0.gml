event_inherited()

image_angle = -25 * sin(degtorad(t)) + angle

if instance_exists(objAnarchistOfTime)
{
    if reverse = false
    {
        if objAnarchistOfTime.pause = false
        {
        t += 15
        motion_set(image_angle, spd)
        }
        else
        {
        t -= 15
        motion_set(image_angle, -spd)        
        }
        
        if x <= -70
        {
        instance_destroy()
        }
    }
    else
    {
        if objAnarchistOfTime.pause = false
        {
        t -= 15
        motion_set(image_angle, -spd)
        }
        else
        {
        t += 15
        motion_set(image_angle, spd)
        }
    }
    
        if x > objAnarchistOfTime.x + 5
        {
        instance_destroy()
        }
}
else
{
instance_destroy()
}

