if instance_exists(objDeathGang)
{
    if objDeathGang.alarm[11] > 0 or burst < 0
    {
    burst = irandom_range(4, 8)
    alarm[5] = room_speed * 5
    }
    else
    {
    alarm[5] = 24
    
            repeat(10)
            {
                var neishtbul = instance_create(x, y, objEnemyBullet)
                var neishtbul2 = instance_create(x, y, objEnemyBullet)
                
                globalvar angg;
                angg = random_range(-45, 45)
                
                with(neishtbul)
                {
                spd = -random_range(1.5, 2) * global.enemy_spd
                damage = 1
                angle = angg + random_range(-1, 1)
                }
                with(neishtbul2)
                {
                spd = -random_range(1.5, 2) * global.enemy_spd
                damage = 1
                angle = angg + random_range(-1, 1)
                }
            }
        
        burst -= 1
    }
}

