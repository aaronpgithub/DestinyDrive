/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
event_inherited();

if x > 395 {
	damage_item_test = false
	instance_destroy()
}

if follower = true {
	if instance_exists(objParasiteWorm) {
		if ystart < road_y_mid {
			pos_y = objParasiteWorm.y - 40
		} else pos_y = objParasiteWorm.y + 40
	}
	
	if instance_exists(objParasiteSpawner) {
		if objParasiteSpawner.alarm[0] <= 60 pos_x = 400
	}
}