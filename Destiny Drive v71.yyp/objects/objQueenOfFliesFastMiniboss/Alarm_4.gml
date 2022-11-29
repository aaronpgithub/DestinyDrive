with (other) {
///Rotating or shooting
if special = false
{
alarm[4] = room_speed * 2
alarm[5] = 20

shoot = false
pos_y = random_range(110, 240)
ang = 180 + point_direction(x, pos_y, objPlayer_x, objPlayer_y)
}
else
{
alarm[4] = 16
ang = 0

var sp_int, sp_int2;

sp_int = instance_create(x, y, objBanditBullet)
sp_int2 = instance_create(x, y, objBanditBullet)

    with(sp_int)
    {
    angle = objQueenOfFliesFastMiniboss.image_angle + random_range(-12, 12)
    image_angle = angle
    spd = -3 * global.enemy_spd
    damage = 1
    }
    
    with(sp_int2)
    {
    angle = objQueenOfFliesFastMiniboss.image_angle + random_range(-8, 8)
    image_angle = angle
    spd = -3 * global.enemy_spd
    damage = 1
    }
}

}
