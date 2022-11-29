alarm[8] = room_speed * irandom_range(12, 26)

if instance_exists(objGrapplingHookShot)
{
    with(objGrapplingHookShot)
    {
    instance_destroy()
    }
}

instance_create(x, y, objGrapplingHookShot)

