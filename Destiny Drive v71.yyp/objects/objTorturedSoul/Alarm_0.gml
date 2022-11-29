if burst > 0
{
alarm[0] = 25

    var tourt_inst = instance_create(x, y, objTorturedSoulBullet)
    
    with(tourt_inst)
    {
    damage = 1
    angle = random_range(-45, 45)
    spd = -4 * global.enemy_spd
    }

    burst -= 1

champion_bullet(tourt_inst)
}
else
{
alarm[1] = room_speed * 1.7
}



