with(other)
{
globalvar anglel, spepe, damson;
anglel = angle
spepe = spd
damson = damage

if spepe = 0 spepe = 3

    var inst = instance_create(x, y, objBullet)
    
    with(inst)
    {
    spd = -(spepe)
    angle = anglel
    damage = damson
    no_flash = true
    }
    
    instance_destroy()
}

