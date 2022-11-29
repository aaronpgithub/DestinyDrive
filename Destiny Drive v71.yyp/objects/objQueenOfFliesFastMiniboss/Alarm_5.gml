/// @description shooting during the small fly attack
shoot = true
if shoot = true and special = false
{
alarm[5] = 15

    var inst2 = instance_create(x, y, objBanditBullet)
    
    with(inst2)
    {
    angle = objQueenOfFliesFastMiniboss.image_angle
    image_angle = angle
    spd = -3 * global.enemy_spd
    damage = 1
    }
}

