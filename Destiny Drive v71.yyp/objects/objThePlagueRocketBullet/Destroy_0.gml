/// @description Insert description here
// You can write your code in this editor
event_inherited()

var flakamount = 10

globalvar flak_pos, random_a_p;
flak_pos = 0
random_a_p = irandom(360)

if instance_exists(objThePlague) {
	if objThePlague.transition_amount = 1 flakamount = 12
}

repeat(flakamount)
{
var squinst;

squinst = instance_create(x, y, objEnemyBullet)

    with(squinst)
    {
    angle = ((360 / flakamount) * flak_pos) + random_a_p
    image_angle = angle
    damage = 1
    spd = 2
	sprite_index = sprThePlaguePukeBullet
	image_index = irandom(image_number)
    }
	
	flak_pos++
}

