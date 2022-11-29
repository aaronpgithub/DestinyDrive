if spd < 0
{
spd += 0.025 * global.enemy_spd
}

motion_set(image_angle, spd)

if image_xscale < 0
{
instance_destroy()
}

if damage != 0 {
	alarm[0] = 10
}
