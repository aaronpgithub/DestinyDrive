/// @description Insert description here
// You can write your code in this editor

if image_alpha > 0 {
	image_angle += 8

	holy_t += 6

	y = ystart + -50 * sin(degtorad(holy_t))

	x -= holly

	if holy_t > 180 {
		image_alpha = 0
		alarm[0] = 1
	}
}

if instance_exists(objTheHunter) {
	if objTheHunter.attack_choice != 4 instance_destroy()
} else instance_destroy()