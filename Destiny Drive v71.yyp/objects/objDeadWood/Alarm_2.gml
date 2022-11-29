alarm[2] = room_speed * 2

instance_create(x, y, objChainsaw)
var inst = instance_create(x, y, objChainsaw)

with(inst)
{
follow = true
}

