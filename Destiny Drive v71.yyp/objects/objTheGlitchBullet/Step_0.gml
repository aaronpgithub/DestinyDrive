event_inherited()

len += spd

if instance_exists(objTheGlitch)
{
x = xstart + lengthdir_x(len, angle + objTheGlitch.spray_angle)
y = ystart + lengthdir_y(len, angle + objTheGlitch.spray_angle)

if objTheGlitch.attack_choice != 2 outside_special = false

if abs(len) > 300 instance_destroy()
}
else
{
motion_set(angle, -3)
}

