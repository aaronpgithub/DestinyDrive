if instance_exists(objParasiteWorm)
{
    t += 3
    
	if instance_exists(objParasiteWorm) amp = objParasiteWorm.amp_lerp
	
    y = ystart + (amp * sin(degtorad(t)))

    for(var paramt = instance_number(objParasiteWormBody) - 1; paramt >= 0; paramt--)
    {
        with(instance_find(objParasiteWormBody, paramt))
        {
        x = objParasiteWorm.x + ((paramt + 1) * 30)
        }
    }
}
else
{
instance_destroy()
}

