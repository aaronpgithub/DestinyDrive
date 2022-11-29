/// @description Insert description here
// You can write your code in this editor
globalvar wizard_circle_bullet_angle, wizzy_random;
var wcb = 0;
wizzy_random = random(360)
repeat(10) {
	wizard_circle_bullet_angle = (wcb * 36) + wizzy_random
	
	var bullet_wizzy = instance_create(x + lengthdir_x(4, wizard_circle_bullet_angle), y + lengthdir_y(4, wizard_circle_bullet_angle), objWizardBlastBullet)
	
	with(bullet_wizzy) {
		damage = 1
		angle = wizard_circle_bullet_angle
		spd = 0
		image_angle = angle
	}
	
	wcb++
}

instance_destroy()