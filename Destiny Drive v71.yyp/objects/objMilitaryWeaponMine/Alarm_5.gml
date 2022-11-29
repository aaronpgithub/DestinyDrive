globalvar iii, imgam;
imgam = image_angle

for(iii = 0; iii < 4; iii++)
{
var flkinst = instance_create(x, y, objTheMutantLaser)

    with(flkinst)
    {
        angle = (iii * 90)
        image_angle = angle
        image_speed = 0.4
    }
}

instance_destroy()

