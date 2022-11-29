/// @description Insert description here
// You can write your code in this editor

alarm[0] = 22

globalvar portal_spiral, start_portal;
portal_spiral = 0
start_portal = sprial_portal_angle

repeat(12) {
	var portalbul = instance_create(x, y, objEnemyBullet)

	with(portalbul) {
		damage = 1
		spd = 1
		angle = portal_spiral * 30 + start_portal
		sprite_index = sprThePlaguePukeBullet
		image_index = irandom(1)
	}
	portal_spiral++
}

sprial_portal_angle += 5