event_inherited()

if instance_exists(objTombOfShri)
{
x = xstart + lengthdir_x(len, objTombOfShri.mouseang + angle)
y = ystart + lengthdir_y(len, objTombOfShri.mouseang + angle)

len += spd

if x < -30 or y > 420 or y < -80 instance_destroy()

    if objTombOfShri.attack_choice != 3 outside_special = false
}

