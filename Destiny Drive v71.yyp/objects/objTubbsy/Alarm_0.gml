alarm[0] = room_speed * 1.5

if bullet_emit > 0
{
    if bullet_emit >= 6
    {
        repeat(6)
        {
            var tub_inst = instance_create(x - 20, y - 40, objEnemyBullet);
            
            with(tub_inst)
            {
            angle = point_direction(x, y, objPlayer_x, objPlayer_y) + random_range(-10, 10)
            spd = random_range(5, 3) * global.enemy_spd
            damage = 1        
                    
            image_angle = angle
            motion_set(angle, spd)
            }
            
            bullet_emit -= 6
            champion_bullet(tub_inst)
        }
    }
    else
    {
        repeat(bullet_emit)
        {
        var tub_inst = instance_create(x - 20, y - 40, objEnemyBullet);
            
            with(tub_inst)
            {
            angle = point_direction(x, y, objPlayer_x, objPlayer_y) + random_range(-10, 10)
            spd = random_range(5, 3) * global.enemy_spd
            damage = 1            
                    
            image_angle = angle
            motion_set(angle, spd)
            }
            
            bullet_emit -= 1
            champion_bullet(tub_inst)
        }
    }
    
    hp += 10
}

