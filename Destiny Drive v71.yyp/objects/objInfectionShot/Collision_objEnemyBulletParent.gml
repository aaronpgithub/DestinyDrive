if infect = true
{
    with(other)
    {
        if dont_dest = false
        {
        var inst = instance_create(x, y, objBullet)
    
            with(inst)
            {
            spd = 3 * global.shot_speed
            damage = 10 * global.dmg
            angle = random_range(-8, 8)
            }
        
        instance_destroy()
        }
    }
    
    size -= 1
}

