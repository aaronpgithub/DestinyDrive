/// @description Insert description here
// You can write your code in this editor
alarm[6] = 50

globalvar thrh, fallback;
fallback = 0

repeat(2) {
	for(thrh = 0; thrh <= 16; thrh++) {
		if thrh > horror_y + horror_width or thrh < horror_y {
			var tre = instance_create(x + (fallback * 8), road_y_min + thrh * 10, objFlashBullet)
	
			with(tre) {
				spd = -2
				angle = 0
				damage = 1
				image_index = thrh
			}
		}
	}
	fallback += 1
}

horror_y = irandom(13)