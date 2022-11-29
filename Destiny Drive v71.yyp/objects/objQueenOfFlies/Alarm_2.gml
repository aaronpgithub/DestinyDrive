if !instance_exists(objQueenOfFliesFastMiniboss) and !instance_exists(objQueenOfFliesStrongMiniboss)
{
    alarm[2] = 9
    
    var inst = instance_create(x, y, objQueenOfFliesBullet)
    
    with(inst)
    {
    angle = 50 + random_range(-35, 35)
    image_angle = angle
    spd = -3 * global.enemy_spd
    damage = 3
    motion_set(angle, spd)
    }
}

