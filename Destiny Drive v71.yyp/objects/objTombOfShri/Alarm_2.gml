/// @description Slow and Fast Spiral

if alarm[0] < room_speed * 4 exit;
alarm[2] = 10
globalvar anglele;
anglele = -80
randong += random_range(-2.5, 2.5)

repeat(18)//for(var ok = 0; ok < 24; ok++)
{
    var slowint = instance_create(300, road_y_mid, objEnemyBullet)
    
    with(slowint)
    {
    spd = -(choose(1.5, 0.5)) * global.enemy_spd
    damage = 1
    angle = anglele + objTombOfShri.randong
    path_length = -1
    }
    
    anglele += 8.8
}

