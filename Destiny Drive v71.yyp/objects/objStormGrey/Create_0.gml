image_alpha = 0

with(instance_find(objStormGrey, 0))
{
depth = 47
}

with(instance_find(objStormGrey, 1))
{
depth = 41
}

with(instance_find(objStormGrey, 2))
{
depth = 35
alarm[0] = random_range(room_speed * 15, room_speed * 30)
}

with(instance_find(objStormGrey, 3))
{
depth = -6000
}

