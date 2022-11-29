alarm[3] = 30

var inst;

repeat(6)
{
inst = instance_create(x, y, objEnemyBullet)

    with(inst)
    {
    damage = 1
    spd = 4 * global.enemy_spd
    angle = point_direction(x, y, objPlayer_x, objPlayer_y) + random_range(-24, 24)
    image_angle = angle
    motion_set(angle, spd)
    }
}

