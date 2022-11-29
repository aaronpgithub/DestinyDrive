event_inherited()

motion_set(dir, spd)

if spd < -0.25
{
spd += 0.05 * global.enemy_spd
}

if alarm[0] < 20
{
image_angle += dir_add * global.enemy_spd
}

