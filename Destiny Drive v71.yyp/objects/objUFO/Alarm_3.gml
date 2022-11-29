/// @description missile

if alarm[0] > room_speed * 5
{
alarm[3] = 25

var misinst = instance_create(x, y, objUFOMissle)

    with(misinst)
    {
    spd = -3
    angle = 90
    pos_y = random_range(70, 245)
    }
}

