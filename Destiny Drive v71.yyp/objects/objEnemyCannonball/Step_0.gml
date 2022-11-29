if alarm[0] > 100
{
y -= 4
}
else
{
x = target_x
y += 11
image_xscale = 1
image_yscale = 1
}

if instance_exists(objTeleport)
{
instance_destroy()
}

if y > target_y
{
instance_destroy()
}

if instance_exists(objItem) and instance_exists(objShop)
{
instance_destroy()
}

