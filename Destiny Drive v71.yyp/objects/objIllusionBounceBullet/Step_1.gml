/// @description Insert description here
// You can write your code in this editor

if (x < 0 or x > room_width) or (y < 0 or y > 240) {
	//after speeding away its back!
	//This will bug once enemy shot speed is changed
	if abs(spd) != 0.75 { spd = 0.75; damage = 1}
	
	var stick_x = false;
	if (x < 0 or x > room_width) {
		stick_x = true
	}
	
	if stick_x = true {
		if x < room_width / 2 {
			x = 2
		} else x = room_width - 2
		spd = -spd
	} else {
		if y < room_height / 2 {
			y = 2
		} else y = 238
	}
	
	angle = -angle
	image_angle = angle
	
	motion_set(angle, spd)
}