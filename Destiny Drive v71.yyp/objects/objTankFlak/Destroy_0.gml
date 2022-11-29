repeat(irandom_range(7, 9))
{
var inst;

inst = instance_create(x, y, objEnemyBullet)

    with(inst)
    {
    angle = random(360)
    image_angle = angle
    damage = 1
    spd = 2.2 * global.enemy_spd
    }
}

