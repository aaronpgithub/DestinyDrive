

if !instance_exists(objKingBorbsBullet)
{
    for(var o = -10; o < 20; o++)
    {
        for(var o2 = -10; o2 < 20; o2++)
        {
        var randomness = random_range(-12, 12)
        var inst = instance_create(0 + (o * 38) + randomness, 0 + (o2 * 38) + randomness, objKingBorbsBullet)
        
            with(inst)
            {
            spd = 0 * global.enemy_spd
            damage = 0
            angle = 0
            }
        }
    }
    
    alarm[2] = 45
}
else
{
    globalvar ipu, randng;
    randng = random(360)
    
    for(ipu = 0; ipu < 18; ipu++)
    {
        var inst = instance_create(x, y, objEnemyBullet)
        
        with(inst)
        {
        angle = (20 * ipu) + randng
        damage = 1
        spd = 2 * global.enemy_spd
        }
    }
    
    if alarm[0] < room_speed * 3
    {
    alarm[2] = 35
    }
    else
    {
    alarm[2] = 60
    }
}

