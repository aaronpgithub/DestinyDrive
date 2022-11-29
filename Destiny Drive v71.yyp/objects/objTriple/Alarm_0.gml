var inst, inst2, inst3;

if hp > 0
{
alarm[0] = random_range(50, 160)
sprite_index = sprTripleShoot
image_index = 0

    inst = instance_create(x - (sprite_width / 2), y - (sprite_height / 2), objEnemyBullet)
    with(inst)
    {
        angle = point_direction(x, y, objPlayer_x, objPlayer_y) + 12
        spd = 3 * global.enemy_spd
        damage = 1                 
                
        image_angle = angle
    }
    
    inst2 = instance_create(x - (sprite_width / 2), y - (sprite_height / 2), objEnemyBullet)
    with(inst2)
    {
        angle = point_direction(x, y, objPlayer_x, objPlayer_y)
        spd = 3 * global.enemy_spd
        damage = 1                      
                
        image_angle = angle
    }
    
    inst3 = instance_create(x - (sprite_width / 2), y - (sprite_height / 2), objEnemyBullet)
    with(inst3)
    {
        angle = point_direction(x, y, objPlayer_x, objPlayer_y) - 12
        spd = 3 * global.enemy_spd
        damage = 1                        
                
        image_angle = angle
    }
    
    champion_bullet(inst)
    champion_bullet(inst2)
    champion_bullet(inst3)
}

