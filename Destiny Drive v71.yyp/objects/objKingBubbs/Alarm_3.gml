    
	var transition_puke = -4,
		for_amt = 12;

	var i, inst3, bad_i, bad_i_2;
	bad_i_2 = -5
	
	bad_i = irandom_range(1, for_amt - 1)
	
    if transition_amount >= angry_transition {
		transition_puke = -4
		for_amt = 24
		
		bad_i = irandom_range(1, for_amt - 1)
		
		if bad_i != for_amt - 1 {
			bad_i_2 = bad_i + 1
		} else bad_i_2 = bad_i - 1
		
		if bad_i = 1 bad_i_2 = bad_i + 1
	}
	
    for(i = 0; i < for_amt; i++)
    {
		if i != bad_i and i != bad_i_2 {
		    inst3 = instance_create(x, road_y_min + (15 * (1 / (for_amt / 12)) * i), objEnemyBullet)
		        with(inst3)
		        {
		        damage = 1
		        spd = transition_puke * global.enemy_spd
		        angle = 0
				sprite_index = sprKingBubbsPuke
		        image_angle = angle
		        }
		}
    }
	
	alarm[3] = 50

	if transition_amount >= angry_transition alarm[3] = 40