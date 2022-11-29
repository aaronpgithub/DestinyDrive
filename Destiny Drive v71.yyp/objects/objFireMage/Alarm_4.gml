/// @description fire bombs

alarm[4] = 30

repeat(2)
{
instance_create(objPlayer_x + random_range(-50, 50), objPlayer_y + random_range(-50, 50), objFireIndicator)
}

repeat(4)
{
instance_create(random_range(15, 180), random_range(85, 220), objFireIndicator)
}

