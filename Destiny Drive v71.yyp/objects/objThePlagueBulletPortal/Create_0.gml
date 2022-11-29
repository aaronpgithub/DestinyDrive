/// @description Insert description here
// You can write your code in this editor
plague_circles = ds_list_create()
circle_timer = 30
circle_num = 0
circle_speed = 0.5

plague_radius = 12

circle_surface = surface_create(plague_radius * 2 + 10, plague_radius * 2 + 10)

alarm[0] = 20

plague_ypos = road_random()