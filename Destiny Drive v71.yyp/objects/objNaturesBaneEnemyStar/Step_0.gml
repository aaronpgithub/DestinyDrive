

image_angle += 5
angle += 8

if instance_exists(objNaturesBane)
{
x = -8 + objNaturesBane.x + lengthdir_x(48, angle)
y = -8 + objNaturesBane.y + lengthdir_y(48, angle)
}
else
{
instance_destroy()
}

if angle > 360
{
angle = 0
}

