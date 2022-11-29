repeat(irandom_range(6, 9))
{
    var gog = instance_create(x, y, objEnemyBouncyBullet)
    
    with(gog)
    {
    angle = point_direction(x, y, objPlayer_x, objPlayer_y) + random_range(-20, 20)
    spd = random_range(2, 3)
    damage = 1
    }
}

