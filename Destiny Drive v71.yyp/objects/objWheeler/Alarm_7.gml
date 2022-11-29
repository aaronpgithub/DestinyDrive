var wheeler_inst;

burst -= 1
    
    if burst > 0
    {
    alarm[7] = 12
        wheeler_inst = instance_create(x, y, objEnemyBullet)
        
        with(wheeler_inst)
        {
        angle = random_range(-14, 14)
        spd = -4 * global.enemy_spd
        damage = 1
        bounce = true
        
        sprite_index = sprWheelerBullet
        image_angle = angle
        }
        
        champion_bullet(wheeler_inst)
    }


