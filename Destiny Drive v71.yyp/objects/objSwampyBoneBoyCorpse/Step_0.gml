if global.hp > 0
{
	x -= spd
	
    if sprite_index = sprBoarDead image_angle += 12
	
	if sprite_index = sprSwampyBoneBoyDestroyed {
		repeat(3) {
			var slms = instance_create(x, y + random_range(-9, 9), objSlowSmoke)
			
			with(slms) {
				spd = random_range(-0.5, -0.8)
			}
		}
	}
}