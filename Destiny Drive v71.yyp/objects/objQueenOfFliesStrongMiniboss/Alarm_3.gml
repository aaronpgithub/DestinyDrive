/// @description pulse bullets

alarm[3] = 20

var inst = instance_create(x, y, objPulseShot)

with(inst)
{
angle = random_range(-50, 50)
spd = -1
damage = 3
image_angle = angle
}

