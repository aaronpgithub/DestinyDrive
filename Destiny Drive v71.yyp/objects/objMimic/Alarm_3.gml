/// @description single bullet
alarm[3] = 15

var pew = instance_create(x, y, objEnemyBullet)

    with(pew)
    {
    angle = random_range(-8, 8)
    spd = -2 * global.enemy_spd
    image_angle = angle
    }

