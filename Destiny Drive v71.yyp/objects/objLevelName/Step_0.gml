spd = 1.1 - image_alpha

if die = false
{
    if image_alpha < 1
    {
    image_alpha += 0.05
    }
}
else
{
image_alpha -= 0.05
}

x += spd

if image_alpha < 1
{
alarm[0] = room_speed * 2
}

if image_alpha < 0
{
instance_destroy()
}

