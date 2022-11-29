var locker_inst;
globalvar ang;

if hp > 0
{
alarm[0] = 20
ang = angle

    locker_inst = instance_create(x - (sprite_width / 2), y - (sprite_height / 2), objEnemyBullet)
    with(locker_inst)
    {
        angle = ang
        spd = 6 * global.enemy_spd
        damage = 1          
                
        image_angle = angle
    }
    
    champion_bullet(locker_inst)
}

