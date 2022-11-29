event_inherited()

if y < 64
{
y += 1
angle = -(angle)
motion_set(angle, spd)
image_angle = angle
}

if y > 245
{
y -= 1
angle = -(angle)
motion_set(angle, spd)
image_angle = angle
}

if alarm[0] <= 0
{
image_alpha -= 0.1
}

if image_alpha < 0
{
instance_destroy()
}

