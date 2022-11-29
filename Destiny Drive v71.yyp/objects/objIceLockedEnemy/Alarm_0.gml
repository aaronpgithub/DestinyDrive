var locker_inst;
globalvar ang, goes;
goes = goes_up

if hp > 0
{
alarm[0] = 100
ang = angle

    locker_inst = instance_create(x - (sprite_width / 2), y - (sprite_height / 2), objIceLockerEnemyBullet)
    with(locker_inst)
    {
        angle = ang
        spd = 0.8 * global.enemy_spd
        damage = 1          
        goes_up = goes
                
        image_angle = angle
    }
    
    champion_bullet(locker_inst)
}

goes_up = !goes_up

