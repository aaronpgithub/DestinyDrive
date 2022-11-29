/// @description Insert description here
// You can write your code in this editor
event_inherited()

damage = 1
spd = 0.5
outside_special = true

instance_follow = 0

dont_dest = true

	globalvar snotid, xscsal;
	snotid = id
	xscsal = 4

	var snot_mid = instance_create(x, y, objSnotMid)

	with(snot_mid) {
		instance_follow = snotid
		outside_special = true
		spd = 0.5
		image_yscale = xscsal
	}
	
	var snot_end = instance_create(x, y - (sprite_get_height(sprSnotMid) * xscsal), objSnotEnd)

	with(snot_end) {
		instance_follow = snotid
		outside_special = true
		spd = 0.5
	}