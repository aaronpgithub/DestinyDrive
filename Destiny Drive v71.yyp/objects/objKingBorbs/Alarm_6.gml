alarm[6] = random_range(50, 230)

var instth = instance_create(320, random_range(80, 180), objKingBorbsSnakeBullet)
                
    with(instth)
    {
    angle = random_range(-10, 10)
    damage = 1
    spd = -6 * global.enemy_spd
    }

