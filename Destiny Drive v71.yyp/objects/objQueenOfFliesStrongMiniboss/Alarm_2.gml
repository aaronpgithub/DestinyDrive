/// @description shoot big burst
if burst_amt > 0
{
    if burst > 0
    {
    alarm[2] = 15
    
        var inst = instance_create(x, y, objQueenOfFliesBullet)
        
        with(inst)
        {
        angle = point_direction(x, y, objPlayer_x, objPlayer_y) + random_range(-5, 5)
        spd = 3 * global.enemy_spd
        damage = 3
        image_angle = angle
        }
        
    burst -= 1
    }
    else
    {
    alarm[2] = 30
    burst = 3
    burst_amt -= 1
    }
}
else
{
alarm[2] = 15

    globalvar strng_i, ang_rand;
    
    ang_rand = random_range(-40, 40)
    
    for(strng_i = 33; strng_i > 0; strng_i--)
    {
        var inst = instance_create(x, y, objEnemyBullet)
        
        with(inst)
        {
        angle = (10.9 * strng_i) + ang_rand
        spd = 3 * global.enemy_spd
        image_angle = angle
        }
    }
}

