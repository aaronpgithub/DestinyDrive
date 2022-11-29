alarm[0] = 60

globalvar goesup, iddod, oglel;
goesup = goes_up
oglel = angle
iddod = id

    var glop = instance_create(x, y, objIceLockerEnemyLenBullet)
    
    with(glop)
    {
    if goesup = false angle = oglel - 90
    if goesup = true angle = oglel + 90
    damage = 1
    spd = -0.7 * global.enemy_spd
    follow_id = iddod
    image_angle = angle
    }

