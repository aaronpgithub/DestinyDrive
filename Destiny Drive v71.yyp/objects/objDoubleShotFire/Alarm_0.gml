/// @description shooting

if hp > 0
{
    if burst > 0
    {
    
        alarm[0] = 40
    
        inst = instance_create(x - (sprite_width / 2), y - (sprite_height / 2), objEnemyBullet)
        with(inst)
        {
            angle = point_direction(x, y, objPlayer_x, objPlayer_y) + 5
            spd = 4 * global.enemy_spd
            damage = 1                 
                    
            image_angle = angle
        }
        
        inst2 = instance_create(x - (sprite_width / 2), y - (sprite_height / 2), objEnemyBullet)
        with(inst2)
        {
            angle = point_direction(x, y, objPlayer_x, objPlayer_y) - 5
            spd = 4 * global.enemy_spd
            damage = 1                     
                    
            image_angle = angle
        }
        
        champion_bullet(inst)
        champion_bullet(inst2)
    }
    else
    {
        alarm[1] = 45
    }
}

