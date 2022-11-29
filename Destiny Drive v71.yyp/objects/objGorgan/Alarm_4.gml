alarm[4] = 50

var inst = instance_create(x, y, objGorganZipper)

with(inst)
{
angle = point_direction(x, y, objPlayer_x, objPlayer_y)
}

