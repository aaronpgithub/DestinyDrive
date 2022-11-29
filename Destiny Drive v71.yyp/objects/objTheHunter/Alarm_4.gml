/// @description Crossbow
globalvar endlen, anlena, angnum;
endlen = 0
angnum = 0

repeat(2) {
	anlena = point_direction(mid_x, mid_y, 0, random_range(road_y_min - 20, road_y_min + 30))
	
if angnum = 1 anlena = point_direction(mid_x, mid_y, 0, random_range(road_y_max - 30, road_y_max + 20))


	repeat(12)
	{
	    var cinst = instance_create(mid_x, mid_y, objCrossbowBullet)
    
	    with(cinst)
	    {
	    angle = anlena
	    spd = 3 * global.enemy_spd
	    damage = 1
	    image_angle = angle
		end_len = endlen
	    }
	
		endlen += 30
	}
	
	endlen = 0
	angnum++
}