/// @description Insert description here
// You can write your code in this editor
event_inherited()

pos_x -= 1 + (-2 * dir) //dir is boolean, so 0 and 1

if pos_x <= 0 and dir = false {
	dir = true
}

if pos_x >= room_width and dir = true {
	dir = false
}

x = pos_x
y = pos_y