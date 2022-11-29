/// @description Insert description here
// You can write your code in this editor
event_inherited()

pos_x -= 2

if pos_x <= -30 {
	pos_x = 340
	pos_y = random_range(road_y_min + 20, road_y_max - 20)
}

x = pos_x
y = pos_y