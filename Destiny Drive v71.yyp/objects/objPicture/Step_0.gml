/// @description Insert description here
// You can write your code in this editor


image_angle = point_direction(xstart, ystart, pic_x, pic_y) - 90

if !instance_exists(objRadicalMan) {
	x = lerp(x, xstart, levler)
	y = lerp(y, ystart, levler)
		if point_distance(x, y, xstart, ystart) <= 2 instance_destroy()
} else {
	if objRadicalMan.attack_choice = 3 {
		x = lerp(x, pic_x, 0.4)
		y = lerp(y, pic_y, 0.4)
	} else {
		x = lerp(x, xstart, levler)
		y = lerp(y, ystart, levler)
			if point_distance(x, y, xstart, ystart) <= 2 instance_destroy()
	}
}

