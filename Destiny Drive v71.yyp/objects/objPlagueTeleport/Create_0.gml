if !instance_exists(objThePlague) {
	instance_destroy()
} else {
	radius = 0
	color = c_white
	ID = objThePlague.tele_id				//ID, for depth detection
	objThePlague.tele_id += 1				//Add to the depth detection
	tele_spd = 1							//speed multiplier
	portal_radius_speed = 0					//actual speed

	//Setting time. Time and speed are tied together by the teleport time multiplier.
	alarm[0] = objThePlague.tele_time / objThePlague.tele_time_mult	
		objThePlague.tele_time = clamp(objThePlague.tele_time + 2, 0, 35)	
	tele_spd = clamp(15 / objThePlague.tele_time, 1, 100)	

	var low_wait = 1, high_wait = 11;
	if objThePlague.puke_y = -1 { low_wait = 2; high_wait = 12 }

	//attack 1
	if objThePlague.transition_amount >= objThePlague.portal_transition and objThePlague.attack_choice = 1 
	and objThePlague.alarm[0] > room_speed * low_wait and objThePlague.alarm[0] <= room_speed * high_wait
	and round(x) = room_width / 2 and round(y) = room_height / 2 {
		globalvar removal, sti;
		var spawnx = objThePlague.tele_x, spawny = objThePlague.tele_y, rept_amt = 68;
		sti = 0
		removal = random(360)
		if objThePlague.puke_y = -1 rept_amt = 67
	
		repeat(rept_amt) {
					if objThePlague.puke_y = -1 {
						spawnx = objThePlague.tele_x + lengthdir_x(210, sti * 5 + removal)
						spawny = objThePlague.tele_y + lengthdir_y(210, sti * 5 + removal)
					}
				
				var sr = instance_create(spawnx, spawny, objInvertBullet)
	
				with(sr) {
					angle = (sti * 5) + removal
					damage = 1
					spd = 2 * objThePlague.tele_time_mult
					speed_sign = objThePlague.puke_y
					sprite_index = sprThePlagueCircleWallBullet
				}
	
		sti++
		}
	}
}