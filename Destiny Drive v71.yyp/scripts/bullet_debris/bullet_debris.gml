function bullet_debris() {
	if image_xscale < 1.5 image_xscale += 0.05
	image_yscale = image_xscale

	motion_set(angle, spd * global.enemy_spd)
	image_angle += 5
	depth = -900



}
