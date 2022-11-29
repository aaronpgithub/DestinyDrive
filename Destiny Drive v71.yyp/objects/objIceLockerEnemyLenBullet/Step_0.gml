event_inherited()

len += spd

if instance_exists(follow_id)
{
x = follow_id.x + lengthdir_x(len, angle)
y = follow_id.y + lengthdir_y(len, angle)
}
else
{
    motion_set(angle, spd)
}

if (x < -80 or x > 360) or (y < -50 or y > 300)
{
    instance_destroy()
}

