/// @description shoot

var buzzyfire_inst;

burst -= 1

    if burst > 0
    {
    alarm[1] = 17
    
    buzzyfire_inst = instance_create(x - 31, y - 8, objBanditBullet)
    
        with(buzzyfire_inst)
        {
        angle = 180 + random_range(-50, 50)
        spd = 2 * global.enemy_spd
        damage = 1            
                
        image_angle = angle
        }
        
        champion_bullet(buzzyfire_inst)
    }

