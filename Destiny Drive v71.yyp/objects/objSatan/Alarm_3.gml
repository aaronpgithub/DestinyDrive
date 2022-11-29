if global.hp > 0 and !instance_exists(objParentWeak)
{
alarm[3] = 30

var sat_rock = instance_create(room_width / 2, -30, objSatanRock);

    with(sat_rock)
    {
    xpos = random_range(20, 300)
    ypos = random_range(75, 240)
    }
}

