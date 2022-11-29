/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
event_inherited();

portal_real_len = lerp(portal_real_len, portal_len, 0.5)

if instance_exists(objThePlague) {
	if objThePlague.attack_choice != 2 {
		portal_len += 5
		
		if portal_len > 400 instance_destroy()
	}
	
	if objThePlague.alarm[0] > room_speed * 1 {
	angle += (2 * clamp( (room_speed * 6) / objThePlague.alarm[0], 0, 2.5)) * angle_sign
	angle_speed = (2 * clamp( (room_speed * 6) / objThePlague.alarm[0], 0, 2.5)) * angle_sign
	} else {
		if abs(angle_speed) > 0 {
			angle_speed -= 0.1 * angle_sign
		} else angle_speed = 0
		
		angle += angle_speed
	}
}



x = xstart + lengthdir_x(portal_real_len, angle)
y = ystart + lengthdir_y(portal_real_len, angle)