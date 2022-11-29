alarm[5] = 50

var flkinst = instance_create(x, y, objEnemyBullet)

    with(flkinst)
    {
        angle = point_direction(x, y, objPlayer_x, objPlayer_y)
        image_angle = angle
        spd = 3.5 * global.enemy_spd
    }

