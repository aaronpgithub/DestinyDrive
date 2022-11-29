var dolphin_car_inst, doly;
doly = -20

burst -= 1
    
    if burst > 0
    {
		repeat(2) {
	    alarm[7] = 1
	        dolphin_car_inst = instance_create(sinex, siney + doly + ((12 * sign(doly)) * sin(degtorad(burst * 40))), objEnemyBullet)
        
	        with(dolphin_car_inst)
	        {
	        spd = -5 * global.enemy_spd
			angle = 0
	        damage = 1                      
	        }
        
	        champion_bullet(dolphin_car_inst)
			doly = 20
		}
    } else alarm[6] = random_range(150, 240)


