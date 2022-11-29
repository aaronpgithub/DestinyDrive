var poturret_car_inst;

burst -= 1
    
    if burst > 0
    {
    alarm[7] = 6
        poturret_car_inst = instance_create(x - 7, y - 13, objCityLaser)
        
        with(poturret_car_inst)
        {
        angle = point_direction(x, y, objPlayer_x, objPlayer_y) + random_range(-3, 3) + 180
        damage = 1                      
        alarm[4] = 15
		yscale = 0.7
		scale_spd = 1.4
				
        image_angle = angle
        }
        
        champion_bullet(poturret_car_inst)
    }


