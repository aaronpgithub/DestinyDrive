/// @description Insert description here
// You can write your code in this editor
event_inherited()

road_y_pos = road_random()

home_in_x = 200

angle = point_direction(x, y, home_in_x, road_y_min + abs(road_y_pos - road_y_max)) + 180

damage = 1
spd = -3

