/// @description Slow Spiral /w Fat bullets TINY BULLETS

if alarm[0] < room_speed * 7 exit;
alarm[3] = 30

globalvar oglele;
oglele = 0

spirang += random_range(30, 35)

repeat(36)//for(var ok = 0; ok < 24; ok++)
{
    var slowint = instance_create(300, road_y_mid, objEnemyBullet)
    
    with(slowint)
    {
    spd = -0.5 * global.enemy_spd
    damage = 1
    angle = oglele + objTombOfShri.spirang
    path_length = -1
    }
    
    oglele += 10
}

