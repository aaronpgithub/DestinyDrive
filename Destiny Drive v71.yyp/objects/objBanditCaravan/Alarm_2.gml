///@desc Spray

var mutt_inst, randomangle = irandom_range(8, 10), mutt_spd;
mutt_spd = -2.5

if transition_amount >= security_transition mutt_spd = -2.6

alarm[2] = 4
mutt_inst = instance_create(x - 43, y - 29, objEnemyBullet)

if angle_add = true angle += randomangle
if angle_add = false angle -= randomangle

if angle < -45 and angle_add = false angle_add = true
if angle > 45 and angle_add = true angle_add = false

with(mutt_inst)
{
damage = 1
spd = mutt_spd * global.enemy_spd
angle = objBanditCaravan.angle
image_angle = angle
}



