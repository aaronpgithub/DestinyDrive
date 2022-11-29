/// @description Rockets and spiral
// You can write your code in this editor
alarm[5] = 60

if transition_amount < portal_transition {
instance_create(random_range(40, 180), random_range(16, 30), objThePlagueBulletPortalRocket)
} else {
	alarm[5] = 18
	
	globalvar portal_spiral, start_portal;
	portal_spiral = 0
	start_portal = spiral_amount_portal

	repeat(24) {
		var portalbul = instance_create(tele_x, tele_y, objEnemyBullet)

		with(portalbul) {
			damage = 1
			spd = 1.8
			angle = portal_spiral * 15 + start_portal
			sprite_index = sprSmallInvertBullet
			image_speed = 0.5
		}
		portal_spiral++
	}

	spiral_amount_portal += random_range(1, 10)
}