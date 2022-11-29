/// @description Insert description here
// You can write your code in this editor

alarm[0] = 95

if instance_exists(objRadicalMan) {
	if objRadicalMan.alarm[11] <= 0 and objRadicalMan.attack_choice != 3 {
	var drango = instance_create(x + lengthdir_x(30, -135), y + lengthdir_y(30, -135), objDiscoLaser)
	
	switch(objRadicalMan.attack_choice) {
		case 1:
		with(drango) {
			angle = 90 + random_range(-25, 25)
			image_angle = angle
			alarm[4] = 50
			shoot_start = 50
		}
		break;
		default:
		with(drango) {
			angle = 90 + random_range(-15, 15)
			image_angle = angle
			alarm[4] = 70
			shoot_start = 70
		}
		break;
	}
		
		if objRadicalMan.attack_choice = 1 alarm[0] = 40
		
	}
}



