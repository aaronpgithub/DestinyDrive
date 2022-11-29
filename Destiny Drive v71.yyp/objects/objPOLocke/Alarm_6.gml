/// @description Insert description here
// You can write your code in this editor
if collision_line(x - lock_xoff, y - lock_yoff, x + lengthdir_x(len, angle), y + lengthdir_y(len, angle), objPlayer, true, true) != noone {  
        var polo_car_inst = instance_create(x - lock_xoff, y - lock_yoff, objCityLaser)
		globalvar galep;
		galep = point_direction(x - lock_xoff, y - lock_yoff, x + lengthdir_x(len, angle), y + lengthdir_y(len, angle))
        
		alarm[6] = 10
		
        with(polo_car_inst)
        {
        angle = galep + random_range(-1, 1) + 180
        damage = 1                      
        alarm[4] = 30
		yscale = 0.8
		scale_spd = 2
				
        image_angle = angle
        }
        
        champion_bullet(polo_car_inst)
}