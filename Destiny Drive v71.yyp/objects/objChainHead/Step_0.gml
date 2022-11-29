t_v += 2.3 * global.enemy_spd
t_h += 1.6 * global.enemy_spd

t_v = t_v mod 360
y_h = t_h mod 360

if follow = false
{
x = h_amp * sin(degtorad(t_h)) + xstart
y = v_amp * sin(degtorad(t_v)) + ystart
}
else
{
x = lengthdir_x(x_d * sin(degtorad(t_h)), x_p) + xstart
y = lengthdir_y(x_d * sin(degtorad(t_v)), x_p) + ystart
}

if instance_exists(objWastelandBully) {
	if x > objWastelandBully.x
	{
	    if t_v > 100
	    {
	    instance_destroy()
	    }
	}
} else instance_destroy()

if global.hp <= 0
{
instance_destroy()
}

damage = 3

