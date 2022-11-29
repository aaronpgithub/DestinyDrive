/// @description spiral burst
if burst = 3
{
burst = 2
}

if burst_amt > 0
{
    if burst > 0
    {
        globalvar bur_i, rand_ang;
        
            rand_ang = random(360)    
        
        for(bur_i = 48; bur_i > 0; bur_i--)
        {
        var inst = instance_create(x, y, objEnemyBullet)
        
            with(inst)
            {
            angle = (7.5 * bur_i) + rand_ang
            damage = 1
            
                switch(objQueenOfFliesStrongMiniboss.burst)
                {
                case 2:
                spd = 3
                break;
                case 1:
                spd = 4
                break;
                }
            
            image_angle = angle
            }
        }
    burst -= 1
    alarm[5] = 8
    }
    else
    {
    burst = 2
    burst_amt -= 1
    alarm[5] = 60
    }
}
else
{

angle += 6

    for(bur_i = 8; bur_i > 0; bur_i--)
        {
        var inst = instance_create(x, y, objEnemyBullet);
        var inst2 = instance_create(x, y, objEnemyBullet);
        
            with(inst)
            {
            angle = (45 * bur_i) + objQueenOfFliesStrongMiniboss.angle
            damage = 1
            spd = 3
            image_angle = angle
            }
            
            with(inst2)
            {
            angle = (45 * bur_i) + -(objQueenOfFliesStrongMiniboss.angle)
            damage = 1
            spd = 3
            image_angle = angle
            }
        }
        
        alarm[5] = 9
}

