/// @description Insert description here
// You can write your code in this editor
image_xscale = 1
image_yscale = image_xscale

repeat( irandom(2) ) {
	var north = instance_create(x + irandom(28), y + irandom_range(6, 18), objCoughBullet)

	with(north) {
		coughbullet = true
	}
}

spd = 1

if instance_exists(objRuinGod) spd = objRuinGod.spd