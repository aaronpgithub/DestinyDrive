alarm[5] = 50



var zipwall = instance_create(x, y - random_range(40, 70), objGorganZipper)

with(zipwall)
{
angle = 90
spd = -2
}



var zipwall2 = instance_create(x, y + random_range(40, 70), objGorganZipper)

with(zipwall2)
{
angle = 90
spd = 2
}

