event_inherited()

if instance_exists(objAnarchistOfTime)
{
motion_set(angle, spd + objAnarchistOfTime.sped)

    if objAnarchistOfTime.pause = true and objAnarchistOfTime.attack_choice = 3
    {
    motion_set(angle, -spd)
    
        if x > xstart
        {
        instance_destroy()
        }
    }
}



