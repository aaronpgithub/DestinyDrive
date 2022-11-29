var intot = instance_create(x, y, objEnemyBullet)

    with(intot)
    {
    spd = 1 * global.enemy_spd
    angle = point_direction(x, y, objPlayer.x, objPlayer.y)
    damage = 1
    }
    
champion_bullet(intot)

alarm[0] = 10

