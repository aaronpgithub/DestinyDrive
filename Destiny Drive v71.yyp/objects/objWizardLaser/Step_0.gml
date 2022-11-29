/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
event_inherited();

if expand = true image_yscale = lerp(image_yscale, sign(y - road_y_mid), 0.2)

if damage = 1 alarm[5] = 5

if abs(image_yscale) = 1 {
	if point_distance(x, y, xstart, ystart) < 95 {
		if leaving = false spd += accel * -(image_yscale)
	} else {
		spd -= accel * -(image_yscale)
		leaving = true
	}
	
	if point_distance(x, y, xstart, ystart) < 189 {
		alarm[6] = room_speed
	}
}

if dying = true {
	image_yscale = lerp(image_yscale, 0, 0.2)
	if image_yscale = 0 instance_destroy()
}