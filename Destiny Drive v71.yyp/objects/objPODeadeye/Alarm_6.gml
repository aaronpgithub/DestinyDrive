alarm[6] = burst_time


globalvar deda, inc;
deda = 1
inc = dead_acc

		var poded_car_inst;
        poded_car_inst = instance_create(mid_x, mid_y, objCityLaser)
		
        with(poded_car_inst)
        {
        angle = point_direction(x, y, objPlayer_x, objPlayer_y) + (inc * deda) + 180
        damage = 1                      
        alarm[4] = 1
				
        image_angle = angle
        }
        
        champion_bullet(poded_car_inst)
		deda = -1
    


