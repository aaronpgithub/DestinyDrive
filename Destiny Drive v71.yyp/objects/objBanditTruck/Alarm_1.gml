/// @description shooting

var buzzy_inst;

burst -= 1

    if burst > 0
    {
    alarm[1] = 18
    
    buzzy_inst = instance_create(x - 31, y - 8, objBanditBullet)
    
        with(buzzy_inst)
        {
        angle = point_direction(x, y, objPlayer_x, objPlayer_y) + random_range(-10, 10)
        spd = 2 * global.enemy_spd
        damage = 1            
                
        image_angle = angle
        }
        
        champion_bullet(buzzy_inst)
    }

