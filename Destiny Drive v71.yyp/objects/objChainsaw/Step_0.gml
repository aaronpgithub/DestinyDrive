image_angle += 3

if follow = false
{
t_v += 3 * global.enemy_spd
t_h += 2 * global.enemy_spd

t_v = t_v mod 360
y_h = t_h mod 360

x = h_amp * sin(degtorad(t_h)) + xstart
y = v_amp * sin(degtorad(t_v)) + ystart
}
else
{
t_v += 3 * global.enemy_spd
t_h += 2 * global.enemy_spd

t_v = t_v mod 360
y_h = t_h mod 360

x = lengthdir_x(x_d * sin(degtorad(t_h)), x_p) + xstart
y = lengthdir_y(x_d * sin(degtorad(t_v)), x_p) + ystart
}

if x > objDeadWood.x
{
    if t_v > 100
    {
    instance_destroy()
    }
}

if global.hp <= 0
{
instance_destroy()
}

damage = 2

