var lockerfire_inst;
globalvar ang;

if hp > 0
{
    if burst > 0
    {
    burst -= 1
    alarm[0] = 3
    ang = angle
    
        lockerfire_inst = instance_create(x - (sprite_width / 2), y - (sprite_height / 2), objEnemyBullet)
        with(lockerfire_inst)
        {
            angle = ang
            spd = 6 * global.enemy_spd
            damage = 2            
                    
            image_angle = angle
        }
        
        champion_bullet(lockerfire_inst)
    }
    else
    {
    alarm[1] = room_speed * 0.7
    }
}

