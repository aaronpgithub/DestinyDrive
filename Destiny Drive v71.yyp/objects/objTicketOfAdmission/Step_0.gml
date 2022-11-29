if image_xscale < 1 and x < (room_width / 2) - 1
{
image_xscale += 0.05
}
else
{
    if x >= (room_width / 2) - 1 and y >= 180 - 1
    {
    image_xscale += scale_spd
    scale_spd -= 0.05
    }
}

if image_xscale < 0
{
instance_destroy()
}

x = lerp(x, room_width / 2, 0.04)
y = lerp(y, 180, 0.04)
image_angle = lerp(image_angle, 360, 0.04)

image_yscale = image_xscale

