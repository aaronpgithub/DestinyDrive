/// @description Insert description here
// You can write your code in this editor
	xpos_news = random_range(200, 300)
	ypos_news = random_range(20, road_y_min - 20)
	
	spd_news = 0
	
	leave = false
	
	my_angle_news = point_direction(xpos_news, ypos_news, 0, random_range(road_y_min, road_y_max))
	
	warning = false
	cool_width = 1
	blast_off = false
	blast_alp = 1
	
	alarm[1] = 1
	
	news_id = 0