if generation = 0
{
    globalvar deb_i;
    var deb_inst;
    
    for(deb_i = 12; deb_i > 0; deb_i--)
    {
    deb_inst = instance_create(x, y, objNaturesBaneDebrisShot)
    
        with(deb_inst)
        {
        generation = 1
        angle = instance_nearest(x, y, objNaturesBaneDebrisShot).angle + (30 * deb_i)
        }
    }
}

