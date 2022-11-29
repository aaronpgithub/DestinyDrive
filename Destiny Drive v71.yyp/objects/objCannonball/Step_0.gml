y += vsped
x += spd
vsped += 0.4

image_angle += 5


//image_xscale = 1
//image_yscale = 1

if spd > 5
{
spd = 5
}

if y > ypos - 20
{
does_pierce = false
damage = ceil(35 * global.dmg)
}
else
{
does_pierce = true
damage = 0
}

if y > ypos
{
instance_destroy()
}

