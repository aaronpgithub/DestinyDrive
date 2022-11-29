if wave_expl_yes = true
{
var inst;
    switch(wave_expl)
    {
        case 0:
        
        inst = instance_create(xstart + 35, ystart, objViolentExplosion)
        instance_create(xstart + 29, ystart - 15, objViolentExplosion)
        instance_create(xstart + 29, ystart + 15, objViolentExplosion)
        
        with(inst)
        {
        wave_expl = 1
        wave_expl_yes = true
        }
        
        break;
        
        case 1:
        
        instance_create(xstart + 35, ystart, objViolentExplosion)
        instance_create(xstart + 29, ystart - 15, objViolentExplosion)
        instance_create(xstart + 29, ystart + 15, objViolentExplosion)
        instance_create(xstart + 22, ystart - 30, objViolentExplosion)
        instance_create(xstart + 22, ystart + 30, objViolentExplosion)
        
        break;
        
    }
}

instance_destroy()

