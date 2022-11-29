motion_set(image_angle, spd)

if spd > 0
{
spd -= 0.30 * global.enemy_spd
}

if spd < 0
{
spd = 0
}

if alarm[0] < 25
{
alpha += 0.01 * global.enemy_spd
}

if !instance_exists(objBossParent)
{
instance_destroy()
}

