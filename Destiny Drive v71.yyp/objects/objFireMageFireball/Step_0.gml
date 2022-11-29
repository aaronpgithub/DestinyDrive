if spd < 0
{
spd += 0.05
}

motion_set(image_angle, spd)

if image_xscale < 0
{
instance_destroy()
}

