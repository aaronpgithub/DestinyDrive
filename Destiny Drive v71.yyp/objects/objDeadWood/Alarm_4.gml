alarm[4] = room_speed * 2

repeat(7)
{
var inst2 = instance_create(x - 20, y - 20, objDeadWoodLaser)

    with(inst2)
    {
    laser_type = "straight"
    spd = 5 * global.enemy_spd
    angle = 180 + random_range(-30, 30)
    image_angle = angle
    }
}

var inst = instance_create(x, y, objChainsaw)

with(inst)
{
follow = true
}

