event_inherited()
draw_self()

if instance_exists(objDeathGangKid1)
{
    if objDeathGangKid1.alarm[8] < 60
    {
    with(objGrapplingHookShot) instance_destroy()
    }

    if objDeathGangKid1.alarm[8] < room_speed * 2 and instance_exists(objGrapplingHookShot)
    {
        if frac(objDeathGangKid1.alarm[8] / 2) = 0
        {
        shader_set(flash_shader_universal)
        draw_self()
        shader_reset()
        }
    }
}
else
{
with(objGrapplingHookShot) instance_destroy()
}

