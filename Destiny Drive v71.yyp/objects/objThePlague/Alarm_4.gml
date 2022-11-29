/// @description Puke
// You can write your code in this editor
if transition_amount < portal_transition {
	alarm[4] = 20
	if transition_amount = 1 alarm[4] = 18

	var pukey_puke = instance_create(x, puke_y, objThePlaguePuker)

	puke_y = road_y_mid - random_range(8, 15) * sign(puke_add)

	with(pukey_puke) {
		image_angle = objThePlague.puke_add
	}

	puke_add *= -1
} else {
	alarm[4] = 3

	globalvar spit_flip_angle, flak_spit;

	flak_spit = 0
	spit_flip_angle = 0
	
	var spawnx = tele_x, spawny = tele_y;
	
	repeat(4) {
		repeat(8) {
			
				var spitit = instance_create(spawnx, spawny, objThePlaguePortalSpitBullet)

			with(spitit) {
				damage = 1
				angle = point_direction(x, y, objPlayer_x, objPlayer_y) + random_range(-18, 18) + spit_flip_angle
				spd = random_range(3, 4) 
				speed_sign = objThePlague.puke_y
				if objThePlague.puke_y = -1 len = 250
			}
		
			flak_spit++
		}
		spit_flip_angle += 90
	}
}