/// @description Insert description here
// You can write your code in this editor
if !instance_exists(eel_id) {
	instance_destroy()
} else {
	x = eel_id.x - 1
	y = eel_id.y
	
	if eel_id.dir = 1 {
		image_yscale = point_distance(x, y, x, eel_id.lerpy) / 8
	} else {
		image_yscale = -point_distance(x, y, x, eel_id.lerpy2) / 8
	}
	
	if eel_id.alarm[0] <= 1 image_xscale = 0
	
	image_xscale = lerp(image_xscale, 1, 0.5)
}

if damage = 1 alarm[5] = 10