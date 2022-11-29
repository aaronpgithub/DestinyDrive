event_inherited()

repeat(irandom_range(2, 4))
{
instance_create(x + random_range(-10, 10), y + random_range(-10, 10), objPickup)
}

