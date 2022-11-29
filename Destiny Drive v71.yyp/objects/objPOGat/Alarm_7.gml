var pog_car_inst;
globalvar gsa, ga, gam;
gsa = gat_start_ang;
ga = gat_ang
gam = gat_ang_max

burst -= 1
    
    if burst > 0
    {
    alarm[7] = 15 + alrmsub
		if alrmsub > -14 alrmsub -= 0.5
		if gat_ang < gat_ang_max gat_ang += 0.5
        pog_car_inst = instance_create(mid_x, mid_y, objCityLaser)
        
        with(pog_car_inst)
        {
        angle = gsa + random_range(-ga, ga) + 180
        damage = 1                      
        shoot_start = 15 + (gam - ga)
				
        image_angle = angle
        }
        
        champion_bullet(pog_car_inst)
    } else alarm[6] = burst_time


