/// @description Shoot at
alarm[3] = 10

burst--

	var darkmyfr = instance_create(x, y, objHorrorBullet)

	    with(darkmyfr)
	    {
	    spd = 2.5 * global.enemy_spd
	    damage = 1
	    angle = objHorrorApparition.horror_angle
	    image_angle = angle
	    }

if burst <= 0 {
	horror_angle = point_direction(x, y, objPlayer_x, objPlayer_y)
	burst = 2
}
