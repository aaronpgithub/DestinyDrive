alarm[3] = 15

globalvar hellsmoke;

    var hellishbullet = instance_create(x, y, objEnemyBullet)
    
    with(hellishbullet)
    {
    damage = 1
    angle = random_range(-10, 10)
    spd = 3 * global.enemy_spd
    image_angle = angle
    }

