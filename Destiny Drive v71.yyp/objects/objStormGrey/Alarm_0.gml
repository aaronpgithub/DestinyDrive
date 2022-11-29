if instance_number(objStormGrey) > 3
{
alarm[0] = random_range(room_speed * 6, room_speed * 14)
}
else
{
alarm[0] = random_range(room_speed * 10, room_speed * 20)
}

instance_create(random_range(20, room_width - 20), 0, objLightning)

