repeat(30)
{
var tub_die_inst;

tub_die_inst = instance_create(x - 14, y - 20, objEnemyBullet)

    with(tub_die_inst)
    {
    spd = random_range(2, 4) * global.enemy_spd
    angle = 180 + random_range(-35, 35)
    image_angle = angle
    }
    
    champion_bullet(tub_die_inst)
}

