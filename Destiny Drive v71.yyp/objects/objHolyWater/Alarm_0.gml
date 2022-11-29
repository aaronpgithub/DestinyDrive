/// @description Insert description here
// You can write your code in this editor
alarm[0] = 10

globalvar rangla, lenspl;
rangla = holy_spiral
lenspl = 0

repeat(8) {
	lenspl = 0
	
	repeat(5) {
	
		var holee = instance_create(x, y, objHolyWaterBullet)

		with(holee) {
			damage = 1
			spd = 3
			angle = rangla
			sprite_index = sprHolyWaterShot
			holylen = lenspl
		}
	
		if lenspl / 6 = 3 {
			var revlen = 6;
		
			repeat(2) {
				var holee2 = instance_create(x + lengthdir_x(revlen, rangla + 90), y + lengthdir_y(revlen, rangla + 90), objHolyWaterBullet)

				with(holee2) {
					damage = 1
					spd = 3
					angle = rangla
					sprite_index = sprHolyWaterShot
					holylen = lenspl
				}
			
				revlen = -6
			}
		}
	
		lenspl += 6
	}
	
	rangla += 45
}

holy_spiral += 10