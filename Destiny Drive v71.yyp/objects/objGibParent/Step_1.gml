if y < ystart - 2
{
image_angle += 3
x += spd * global.decal_spd
}

if y >= ystart + 1
{
y = ystart + 1
}
else
{
t += 3
t = t mod 360
y = amp * sin(degtorad(t)) + ystart
}

