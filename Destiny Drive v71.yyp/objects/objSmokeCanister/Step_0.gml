image_angle += 4

instance_create(x, y, objThickSmoke)

y += 4 * global.enemy_spd

if y > ypos
{
instance_destroy()
}

