/// @description Insert description here
// You can write your code in this editor
alarm[4] = 8

if alarm[0] < 60 exit;

globalvar windt;
windt = 0

	windrand = random_range(190, 240)
	
	repeat(3) {
		var wind = instance_create(room_width, 0, objEnemyBullet)

		with(wind) {
			spd = random_range(2, 3)
			angle =random_range(190, 240)
			damage = 1
			
			image_angle = angle
			
			sprite_index = sprSimpleLightning
		}
	
		windt += 10
	}
	
	windt = 0