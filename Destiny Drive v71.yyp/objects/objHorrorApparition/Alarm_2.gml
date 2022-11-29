/// @description Spiral
alarm[2] = 15

globalvar angletrip;
angletrip = random(360)

repeat(36) {
	var darkmyfr = instance_create(x, y, objHorrorBullet)

	    with(darkmyfr)
	    {
	    spd = 2.5 * global.enemy_spd
	    damage = 1
	    angle = angletrip
	    image_angle = angle
	    }
		
		angletrip -= 10
}