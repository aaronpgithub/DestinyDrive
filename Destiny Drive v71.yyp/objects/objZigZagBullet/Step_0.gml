/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
event_inherited();

spd = lerp(spd, 0, 0.025)

	if y < road_y_min or y > road_y_max
	{
		angle = -(angle)
		y = yprevious + sign(road_y_mid - yprevious) * 3
	}
	
	image_angle = angle