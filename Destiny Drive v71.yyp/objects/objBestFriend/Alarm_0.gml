if global.hp > 0
{
    if burst > 0
    {
    alarm[0] = 8
    
    image_index = 1
    
        var brsest_inst = instance_create(x, y, objBulletParent)
        
        with(brsest_inst)
        {
        damage = 6 * global.dmg
        angle = random_range(-4, 4) * global.accuracy
        spd = 4 * global.shot_speed
        }
    
    burst -= 1
    }
    else
    {
    image_index = 0
    }
}

