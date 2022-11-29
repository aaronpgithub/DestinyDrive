if smoked_out = true
{
smoked_out = false
alarm[10] = room_speed * random_range(30, 45)
exit;
}
else
{
    if !instance_exists(objShop) and !instance_exists(objTeleport)
    {
    instance_create(-50, -50, objHelicopter)
    }
    else
    {
    alarm[10] = 10
    }
}

