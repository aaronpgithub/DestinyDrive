
if funneling = false {
	
	var mini_inst = instance_create(x, y, objEnemyBullet)

	if instance_number(objMiniCaravan) = 2
	{
	    with(instance_furthest(x, y, objMiniCaravan))
	    {
	    alarm[2] = 20
	    }
	}
	else
	{
	alarm[2] = 14
	}

	with(mini_inst)
	{
	damage = 1
	spd = 5 * global.enemy_spd
	angle = point_direction(x, y, objPlayer_x, objPlayer_y)
	image_angle = angle
	}

} else {
	with(objMiniCaravan) {
		alarm[2] = 2
	}
}

