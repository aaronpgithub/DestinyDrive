/// @description Insert description here
// You can write your code in this editor
if instance_exists(objParasiteWorm) and movewithworm = true {
	x = objParasiteWorm.x
	y = objParasiteWorm.y
	
	angle_at = point_direction(x, y, 0, road_random(30, -30))
}

if instance_exists(objParasiteSpawner) {
	
	if objParasiteSpawner.attack_choice != 1 instance_destroy()
	
} else instance_destroy()