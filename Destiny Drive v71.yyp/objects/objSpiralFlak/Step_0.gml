event_inherited()

x = lerp(x, xstart - 50, 0.02)

if ID = 0
{
y = lerp(y, 85, 0.02)
}

if ID = 1
{
y = lerp(y, 225, 0.02)
}

if instance_exists(objTankOfFlame)
{
    if objTankOfFlame.alarm[0] <= room_speed * 2
    {
    image_xscale -= 0.05
    }
}
else
{
instance_destroy()
}

image_yscale = image_xscale

if image_xscale <= 0
{
instance_destroy()
}

