/// @description Fire Burst
if burst > 0
    {
    alarm[2] = 2
    
    if angle_add = false
    {
    angle += 1.4
    }
    else
    {
    angle -= 1.4
    }
    
        var inst = instance_create(x, y, objFireBurst)
        var inst2 = instance_create(x, y, objFireBurst)
        
        repeat(choose(0, 1))
        {
        var inst3 = instance_create(x, y, objFireBurst)
        
            with(inst3)
            {
            angle = objFireMage.angle * 1.2
            spd = -6 * global.enemy_spd
            damage = 1
            image_angle = angle
            }
        }
        
        with(inst)
        {
        angle = objFireMage.angle * 1.5
        spd = -6 * global.enemy_spd
        damage = 1
        image_angle = angle
        }
        
        with(inst2)
        {
        angle = -(objFireMage.angle) * 1.5
        spd = -4 * global.enemy_spd
        damage = 1
        image_angle = angle
        }
        
    burst -= 1
    }
    else
    {
    alarm[2] = 5
    burst = 25
    angle = 0
    
        if angle_add = false
        {
        angle_add = true
        exit;
        }
        else
        {
        angle_add = false
        exit;
        }
    }

