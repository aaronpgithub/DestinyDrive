var flakamount = 10

globalvar flak_pos, random_a_s;
flak_pos = 0
random_a_s = irandom(360)

repeat(flakamount)
{
var squinst;

squinst = instance_create(x, y, objEnemyBullet)

    with(squinst)
    {
    angle = ((360 / flakamount) * flak_pos) + random_a_s
    image_angle = angle
    damage = 1
    spd = 2
    }
	
	flak_pos++
}

