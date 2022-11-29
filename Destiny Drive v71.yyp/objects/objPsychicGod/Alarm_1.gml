/// @description Insert description here
// You can write your code in this editor

alarm[1] = 30

globalvar psychic_size, speded;
psychic_size = 1 + (sqrt(2 * (instance_number(objFatEggi) * fat_mult)))

speded = 3
if point_direction(x, y, objPlayer_x, objPlayer_y) > 235 speded = 5

	if x <= room_width + 1 and global.temple_level = "psychic" {
		var d = instance_create(x - 25 + random_range(-5, 5), y + 5 + random_range(-5, 5), objEnemyBullet) 
	
		with(d) {
			damage = 1 + instance_number(objNightmareEggi)
			angle = point_direction(x, y, objPlayer_x, objPlayer_y)
			image_angle = angle
			spd = speded * global.enemy_spd
			sprite_index = sprIllusionBullet
			image_xscale = psychic_size
			image_yscale = image_xscale
		}
	}

if point_direction(x, y, objPlayer_x, objPlayer_y) > 235 alarm[1] = 5