if laser_type = "wave"
{
t += 18
t = t mod 360

image_angle = -angle + (50 * sin(degtorad(t)))

motion_set(image_angle, 3 * global.enemy_spd)
}

if laser_type = "straight"
{
image_angle = -angle
motion_set(image_angle, spd)
}

if laser_type = "blast"
{
image_angle = -angle
motion_set(image_angle, 5)
}


