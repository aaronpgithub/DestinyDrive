///@desc Shooting with minis

var gat_mutt_inst;

alarm[4] = 9

if transition_amount >= security_transition alarm[4] = 2

	gat_mutt_inst = instance_create(x - 43, y - 29, objEnemyBullet)

	with(gat_mutt_inst)
	{
	angle = random_range(-1, 1)
	damage = 1
	spd = -5 * global.enemy_spd
	image_angle = angle
	}