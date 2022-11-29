/// @description acid spray

alarm[2] = 27

globalvar parasitewormadd, parasitewormangle;

parasitewormadd = 10;
parasitewormangle = -parasitewormadd;

repeat(3)
{
var acidspray = instance_create(x - 22, y - 8, objAcidBullet)

    with(acidspray)
    {
    spd = -5 * global.enemy_spd
    damage = 1
    angle = point_direction(x, y, objPlayer_x, objPlayer_y) + 180 + parasitewormangle
    image_angle = angle
    sprite_index = sprAcidBullet
	
		if parasitewormangle = 0 {
			sprite_index = sprHomingAcidShot
			spd = -4 * global.enemy_spd
			sensitivity = 70
		}
    }
	
	parasitewormangle += parasitewormadd
}

