if instance_exists(objDeathGang)
{
    if objDeathGang.alarm[11] > 0 or burst < 0
    {
    burst = irandom_range(20, 26)
    alarm[5] = room_speed * random_range(2, 4)
    }
    else
    {
    alarm[5] = 5
    var neipisbul = instance_create(x, y, objDeathKid1Bullet)
    
        with(neipisbul)
        {
        spd = -(2 * global.enemy_spd)
        damage = 1
        angle = choose(random_range(-35, -30), random_range(30, 35))
        }
        
        burst -= 1
    }
}

