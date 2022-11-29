alarm[4] = 60
globalvar pathnm;
pathnm = 0
var boo_y = random_range(road_y_min, road_y_max - 30);

var path_to_use = pSpookyScottBooPath

if transition_amount >= 1 path_to_use = pSpookyScottWahPath

repeat(path_get_number(path_to_use)) {
	
	var boobell = instance_create(room_width + 10 + path_get_point_x(path_to_use, pathnm), boo_y + path_get_point_y(path_to_use, pathnm), objBooBullet)
	
	with(boobell) {
		damage = 1
		spd = -2.5
		angle = 0
		
		sprite_index = sprGhostBullet
		
		pathpoint = pathnm
		
		outside_special = true
	}
	
	pathnm++
	
}