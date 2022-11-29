event_inherited()

if instance_exists(objAnarchistOfTime)
{
    if x > objAnarchistOfTime.x - 50
    {
        if !instance_exists(objRetractingBigBullet)
        {
        instance_create(objAnarchistOfTime.x - 50, objAnarchistOfTime.y - 20, objRetractingBigBullet)
        }
        else
        {
            with(objRetractingBigBullet)
            {
                if image_xscale < 1
                {
                image_xscale += 0.05
                image_yscale = image_xscale
                }
            }
            
            instance_destroy()
        }
    }
}

