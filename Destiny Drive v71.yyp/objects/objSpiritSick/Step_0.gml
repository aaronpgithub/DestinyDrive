/// @description Insert description here
// You can write your code in this editor
event_inherited()

pos_y -= 0.5 + (-1 * dir) //dir is boolean, so 0 and 1

if pos_y <= road_y_min and dir = false {
	dir = true
}

if pos_y >= road_y_max and dir = true {
	dir = false
}

x = pos_x
y = pos_y