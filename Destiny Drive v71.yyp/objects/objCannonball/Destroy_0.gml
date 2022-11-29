event_inherited()
if x < 320 and y > 0
{
    var inst;
    
    inst = instance_create(x, y, objViolentExplosion)
    
    with(inst)
    {
    damage = 70
    }
}

