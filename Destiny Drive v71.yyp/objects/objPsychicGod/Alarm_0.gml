/// @description Insert description here
// You can write your code in this editor

alarm[0] = 15 - (sqrt(10 * (instance_number(objOrangeEggi))))

globalvar gangrene, gangrand, psychic_size;
gangrene = 12
gangrand = 0
psychic_size = 1 + (sqrt(2 * (instance_number(objFatEggi) * fat_mult)))
//60
repeat(3) {
	if x <= room_width + 1 and global.temple_level = "psychic" {
		var d = instance_create(x - 25 + random_range(-5, 5), y + 5 + random_range(-5, 5), objEnemyBullet) 
	
		with(d) {
			damage = 1 + instance_number(objNightmareEggi)
			angle = gangrene + random_range(-gangrand, 20)
			image_angle = angle
			spd = -1.5 * global.enemy_spd
			image_xscale = psychic_size
			image_yscale = image_xscale
		}
		
		gangrene += random_range(5, 20)
		gangrand += 10
	}
}